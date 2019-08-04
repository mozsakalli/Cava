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

package compiler.backend;

import compiler.CompilerContext;
import compiler.DecompilerUtils;
import compiler.backend.c.A;
import compiler.backend.c.CType;
import compiler.backend.c.NameManager;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class JNIWriter {
    Clazz clazz;
    String superName;
    Clazz customSuper;
    
    Set<String> protocols = new HashSet();
    Map<String, Method> methods = new HashMap();
    Map<String,Method> properties = new HashMap();
    
    public JNIWriter(Clazz c) {
        if(c.name.contains("AndroidLauncher"))
            System.out.println("...");
        clazz = c;
        if(c.isInterface) return;
        c.methods.forEach(m -> checkMethod(m));
        /*
        Clazz sc = c;
        
        while(sc != null) {
            for(Method m : sc.methods) {
                checkMethod(m);
            }

            
            if(superName == null && A.hasJNI(sc)) {
                superName = A.jniName(sc);
                if(superName.isEmpty()) superName = sc.name;
            }
            
            if(customSuper == null && sc != clazz && sc.isCustomJNIClass()) customSuper = sc;
            
            if(sc.superName == null) break;
            sc = CompilerContext.resolve(sc.superName);
        }
        */
        if(!methods.isEmpty() || customSuper!=null) c.isJNIImplementation = true;
        
    }
    
    void checkMethod(Method m) {
        if(m.usedInProject) {
            String name = null;
            boolean isField = false;
            
            name = A.jniName(m);
            if(name != null && name.isEmpty()) name = null;
            
            if(name == null && m.virtualBaseClass != null) {
                Clazz vc = CompilerContext.resolve(m.virtualBaseClass);
                Method vm = vc.findDeclaredMethod(m.name, m.signature);
                if(vm != null) {
                    name = A.jniName(vm);
                    isField = A.jniField(vm);
                    if(name != null && name.isEmpty()) name = null;
                }
            }
            
            if(name == null && m.interfaceBaseClass != null) {
                Clazz ic = CompilerContext.resolve(m.interfaceBaseClass);
                if(ic != null) {
                    Method im = ic.findDeclaredMethod(m.name, m.signature);
                    if(im != null) {
                        name = A.jniName(im);
                        if(name != null && name.isEmpty()) name = null;
                        else {
                            String protocol = A.jniName(ic);
                            isField = A.jniField(im);
                            if(protocol == null || protocol.isEmpty())
                                protocol = m.interfaceBaseClass;
                            protocols.add(protocol);
                        }
                    }
                }
            }
            
            if(name != null) {
                if(isField)
                    properties.put(name, m);
                else
                    methods.put(name, m);
            }
        }

    } 
    
    String jniExportName(Method m) {
        return "Java_"+m.declaringClass.replace('/', '_')+"_"+m.name;
    }
    public void writeJNIExports(NameManager naming, CType cType, SourceWriter out) {
        if(!clazz.isJNIImplementation) return;
        final NameAndType klassField = CompilerContext.resolve("java/lang/Object").findField("klass");
        final NameAndType nativePeerField = CompilerContext.resolve("cava/c/NativeObject").findField("nativePeer");
        final NameAndType noOwnerField = CompilerContext.resolve("cava/c/NativeObject").findField("noOwner");
        
        methods.forEach((k,m) -> {
            out.print("JNIEXPORT %s %s(JNIEnv * env", DecompilerUtils.jniType(cType, m.type), jniExportName(m));
            if(m.isStatic()) out.print(",jobject pthis");
            m.args.forEach(a -> {
                out.print(",%s %s", DecompilerUtils.jniType(cType, a.type), naming.arg(a));
            });
            out.println(") {").indent();
            m.args.forEach(arg -> {
                if(!DecompilerUtils.isPrimitive(arg.type)) {
                out.println("%s arg_%s;", naming.clazz(arg.type), arg.name)
                   .println("arg_%s.%s = &%s_Class;", arg.name, naming.field(klassField), naming.clazz(arg.type))
                   .println("arg_%s.%s = %s;", arg.name, naming.field(nativePeerField), 
                           naming.arg(arg))
                   .println("arg_%s.%s = jtrue;", arg.name, naming.field(noOwnerField));
                }
            });
            if(!m.type.equals("V")) out.print("return ");
            if(!m.type.equals("V")) out.println("0;");
            out.undent().println("}");
        });
    }
}
