/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cava.compiler;

import com.cava.compiler.code.Var;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import com.cava.compiler.model.NameAndType;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import soot.ArrayType;
import soot.BooleanType;
import soot.ByteType;
import soot.CharType;
import soot.DoubleType;
import soot.FloatType;
import soot.IntType;
import soot.LongType;
import soot.NullType;
import soot.RefType;
import soot.Scene;
import soot.ShortType;
import soot.SootClass;
import soot.SootField;
import soot.SootMethod;
import soot.Type;
import soot.VoidType;
import soot.options.Options;
import soot.tagkit.AnnotationClassElem;
import soot.tagkit.AnnotationElem;
import soot.tagkit.AnnotationIntElem;
import soot.tagkit.AnnotationStringElem;
import soot.tagkit.AnnotationTag;
import soot.tagkit.Host;
import soot.tagkit.Tag;
import soot.tagkit.VisibilityAnnotationTag;

/**
 *
 * @author mustafa
 */
public class SootClassLoader {

    static boolean sootInitialized;
    
    public static Clazz load(String name) {
        initializeSoot();
        SootClass sc = getSootClass(name.replace('/', '.'));

        Clazz c = new Clazz();
        c.name = name;
        c.superName = sc.hasSuperclass() ? sc.getSuperclass().getName().replace('.', '/') : null;
        c.isInterface = sc.isInterface();
        c.isAbstract = sc.isAbstract();
        
        c.annotations = decodeAnnotations(sc);
        
        if(sc.getInterfaceCount() > 0) {
            for(SootClass i : sc.getInterfaces()) {
                c.interfaces.add(i.getName().replace('.', '/'));
            }
        }
        
        //interface extended from another interface
        if(c.isInterface && !c.interfaces.isEmpty()) {
            c.superName = c.interfaces.remove(0);
        }        
        for(SootField f : sc.getFields()) {
            NameAndType fd = new NameAndType(f.getName(),  toJavaType(f.getType()), false);
            fd.declaringClass = name;
            fd.modifiers = f.getModifiers();
            c.fields.add(fd);
            fd.annotations = decodeAnnotations(f);
        }
        
        for(SootMethod sm : sc.getMethods()) {
            Method m = new Method();
            m.name = sm.getName();
            m.type = toJavaType(sm.getReturnType());
            m.declaringClass = name;
            m.modifiers = sm.getModifiers();
            int paramIndex = 0;
            if(!sm.isStatic())
                m.args.add(new Var("this", paramIndex++, c.name, true));
            for(int i=0; i<sm.getParameterCount(); i++) {
                m.args.add(new Var("arg"+(paramIndex), paramIndex++, toJavaType(sm.getParameterType(i)), true));
            }
            m.signature = buildJavaSignature(m);
            if(!c.isInterface && !m.isAbstract() && !m.isNative()) {
                //if(m.name.equals("test"))
                new SootMethodDecompiler().decompile(sm, m, c);
            }
            m.annotations = decodeAnnotations(sm);
            c.methods.add(m);
        }
        
        
        return c;
    }
    
    public static String toJavaSignature(String type) {
        String signature = "";
        if(type.charAt(0) == '[') {
            int p = 0;
            while(type.charAt(p) == '[') {
                signature += "[";
                p++;
            }
            type = type.substring(p);
        }
        if(DecompilerUtils.isPrimitive(type))
            signature += type;
        else signature += "L"+type+";";
        return signature;
    }
    
    public static String buildJavaSignature(List<Type> types, Type returnType) {
        String signature = "(";
        for(Type type : types)
            signature += toJavaSignature(toJavaType(type));
        signature += ")" + toJavaSignature(toJavaType(returnType));
        return signature;
    }
    
    public static String buildJavaSignature(Method m) {
        String signature = "(";
        int start = m.isStatic() ? 0 : 1;
        for(int i=start; i<m.args.size(); i++) {
            Var arg = m.args.get(i);
            signature += toJavaSignature(arg.type);
        }
        signature += ")";
        signature += toJavaSignature(m.type);
        return signature;
    }
    
    public static String toJavaType(Type type) {
        if(type.getClass() == VoidType.class) return "V";
        if(type.getClass() == BooleanType.class) return "Z";
        if(type.getClass() == IntType.class) return "I";
        if(type.getClass() == LongType.class) return "J";
        if(type.getClass() == ByteType.class) return "B";
        if(type.getClass() == CharType.class) return "C";
        if(type.getClass() == ShortType.class) return "S";
        if(type.getClass() == FloatType.class) return "F";
        if(type.getClass() == DoubleType.class) return "D";
        
        if(type instanceof RefType) {
            return ((RefType)type).getClassName().replace('.', '/');
        }
        if(type instanceof ArrayType) {
            ArrayType a = (ArrayType)type;
            return "["+toJavaType(a.getArrayElementType());
        }
        
        if(type instanceof NullType)
            return "java/lang/Object";
        
        throw new RuntimeException("Unknown soot type: "+type+" / "+type.getClass());
    }
    
    static Map decodeAnnotations(Host host) {
        Map result = new HashMap();
        for(Tag tag : host.getTags()) {
            if(tag instanceof VisibilityAnnotationTag) {
                VisibilityAnnotationTag vat = (VisibilityAnnotationTag) tag;
                for(AnnotationTag at : vat.getAnnotations()) {
                    String type = at.getType().replace('/', '.');
                    if(type.startsWith("L") && type.endsWith(";")) type = type.substring(1, type.length()-1);
                    Map ann = new HashMap();
                    for(int i=0; i<at.getNumElems(); i++) {
                        AnnotationElem el = at.getElemAt(i);
                        Object value = null;
                        if(el instanceof AnnotationStringElem) {
                            value = ((AnnotationStringElem)el).getValue();
                        } else
                        if(el instanceof AnnotationIntElem) {
                            value = ((AnnotationIntElem)el).getValue();
                        } else  
                        if(el instanceof AnnotationClassElem) {
                            String desc = ((AnnotationClassElem)el).getDesc();
                            if(desc.startsWith("L")) desc = desc.substring(1, desc.length() - 1);
                            value = desc;
                        } else    
                        throw new RuntimeException("Unknown element type: "+el.getClass());
                        ann.put(el.getName(), value);
                    }
                    result.put(type.replace('/', '.'), ann);
                }
            }
        }
        return result;
    }
    
    static SootClass getSootClass(String name) {
        return Scene.v().loadClassAndSupport(name);
    }
    
    public static void initializeSoot() {
        if(sootInitialized) return;
        sootInitialized = true;
        String classPath = "";
        for(File f : CompilerContext.classPath) {
            if(!classPath.isEmpty()) classPath += File.pathSeparator;
            classPath += f.getAbsolutePath();
        }
        soot.G.reset();
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_include_all(true);
        Options.v().set_print_tags_in_output(true);
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_keep_line_number(true);
        Options.v().set_soot_classpath(classPath);

        //Options.v().setPhaseOption("jb", "use-original-names:true");
        /*
         * Enable the use-original-names phase to merge local variables and
         * verbose logging for debugging purposes only.
         */
        // Options.v().set_verbose(true);
        //Options.v().setPhaseOption("jb", "use-original-names:true");
        /*
         * Disable the jb.dae phase (DeadAssignmentEliminator) since it removes
         * LDC instructions which would have thrown a NoClassDefFoundError.
         * TODO: Report this to soot as a bug?
         */
        Options.v().setPhaseOption("jb.dae", "enabled:false");
        /*
         * Disable the jb.uce phase (UnreachableCodeEliminator) since it seems
         * to remove try-catch blocks which catches a non-existing Throwable
         * class. This should generate a NoClassDefFoundError at runtime but
         * with the UCE in place no exception is thrown.
         */
        Options.v().setPhaseOption("jb.uce", "enabled:false");

        /*
         * Enable jap.npc (NullPointerChecker) and jap.abc (ArrayBoundsChecker)
         * phases in the annotation pack. The annotation pack is enabled by
         * default but all its phases are disabled by default.
         */
        Options.v().setPhaseOption("jap.npc", "enabled:true");
        Options.v().setPhaseOption("jap.abc", "enabled:true");

        /*
         * Enable the jop (Jimple optimization) pack but disable all phases for
         * now.
         */
        Options.v().setPhaseOption("jop", "enabled:true");
        Options.v().setPhaseOption("jop.cse", "enabled:false");
        Options.v().setPhaseOption("jop.bcm", "enabled:false");
        Options.v().setPhaseOption("jop.lcm", "enabled:false");
        Options.v().setPhaseOption("jop.cp", "enabled:false");
        Options.v().setPhaseOption("jop.cpf", "enabled:false");
        Options.v().setPhaseOption("jop.cbf", "enabled:false");
        Options.v().setPhaseOption("jop.dae", "enabled:false");
        Options.v().setPhaseOption("jop.nce", "enabled:false");
        Options.v().setPhaseOption("jop.uce1", "enabled:false");
        Options.v().setPhaseOption("jop.ubf1", "enabled:false");
        Options.v().setPhaseOption("jop.uce2", "enabled:false");
        Options.v().setPhaseOption("jop.ubf2", "enabled:false");
        Options.v().setPhaseOption("jop.ule", "enabled:false");

        Scene.v().loadNecessaryClasses();
    }    
    
}
