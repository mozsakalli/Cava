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

package compiler.backend.c;

import compiler.CompilerContext;
import compiler.DecompilerUtils;
import compiler.DependencyOrderSet;
import compiler.backend.BootstrapSorter;
import compiler.backend.ClassInitInserter;
import compiler.backend.SourceWriter;
import compiler.backend.VirtualTable;
import compiler.backend.ConstructorFixer;
import compiler.backend.ITableCalculator;
import compiler.backend.InstanceOfBuilder;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Switch;
import compiler.model.ast.Throw;
import compiler.model.ast.TryCatch;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class CBackend {
    
    NameManager naming = new NameManager();
    Map<Clazz, Set<Clazz>> assignables;
    Map<Method, Map<String,int[]>> variableLocations = new HashMap();
    
    Set<String> invokeTypes = new HashSet();
    Set<String> allInvokeTypes = new HashSet();
    
    public void generate() throws Exception {
        //NativeGenerator.process(naming);
        final List<Clazz> sortedClasses = sortClasses();
        final VirtualTable vTable = new VirtualTable();
        vTable.build(sortedClasses);
        
        //interfaceTableSize = ITable.calculate();
        ITableCalculator.calculate();
        assignables = InstanceOfBuilder.build();
        
        //collect all used non primitive static fields
        List<NameAndType> globalRefs = new ArrayList();
        for(Clazz c : sortedClasses) {
            for(NameAndType f : c.fields) {
                if(f.usedInProject && f.isStatic() && !DecompilerUtils.isPrimitive(f.type) && !f.type.equals("java/lang/Class"))
                    globalRefs.add(f);
            }
        }
        
        for(Clazz c : sortedClasses) {
            if(c.name.startsWith("[")) continue;
            generateClass(c, vTable, globalRefs);
            allInvokeTypes.addAll(invokeTypes);
            invokeTypes.clear();
        }
        
        SourceWriter out = new SourceWriter();
        out.println("#include \"jvm.h\"");
        List<String> literals = CompilerContext.stringCollector.strings();
        for(int i=0; i<literals.size(); i++) {
            out.println("jobject %s;", naming.literal(i));
        }
        out.println("void InitJvmLiterals() {").indent();
        for(int i=0; i<literals.size(); i++) {
            out.print("%s = JvmMakeString((jchar[]){", naming.literal(i));
            String lit = literals.get(i);
            for(int k=0; k<lit.length(); k++) {
                if(k>0) out.print(",");
                out.print((int)lit.charAt(k));
            }
            out.println("},%d);",lit.length());
        }
        out.undent().println("}");
        
        CompilerContext.saveCode("literals.c", out.toString());
        generateInvokes();
        generateBootstrap(sortedClasses, globalRefs);
        
        /*
        for(File f : new File("c").listFiles()) {
            if(!generatedFiles.contains(f))
                f.delete();
        }*/
    }


    void saveCode(Clazz c, String extension, String code) throws Exception {
        CompilerContext.saveCode(naming.clazz(c.name)+extension, code);
    }    
    
    String getInvokeSignature(Method m) {
        String sign = "";
        for(NameAndType arg : m.args) {
            if(arg.name.equals("this")) continue;
            sign +=  DecompilerUtils.isPrimitive(arg.type) ? arg.type : "O";
        }
        sign += DecompilerUtils.isPrimitive(m.type) ? m.type :  "O";
        return sign;
    }
    
    List<Method> reflectMethods = new ArrayList();
    void generateClass(Clazz c, VirtualTable vt, List<NameAndType> globalRefs) throws Exception {
        CType cType = new CType();
        new ConstructorFixer().fix(c);
        boolean isObjC = c.superName != null ? CompilerContext.resolve(c.superName).isExtendedFromObjC() : false;

        reflectMethods.clear();
        for(Method m : c.methods) {
            if((m.usedInProject) && !m.isAbstract() && !m.isNative()) {
                reflectMethods.add(m);
                invokeTypes.add(getInvokeSignature(m));
            }
        }
        
        SourceWriter out = new SourceWriter();
        out.println("#ifndef __Defined_%s__",naming.clazz(c.name))
           .println("#define __Defined_%s__",naming.clazz(c.name)).ln();
        
        out.println("#include \"jvm.h\"");
        out.println("__includes").ln();
        
        if(c.superName != null) cType.dependency.add(c.superName);
        for(String iname : c.interfaces)
            cType.dependency.add(iname);
        
        out.println("typedef struct %s {", naming.clazz(c.name)).indent();
        List<NameAndType> allFields = c.getAllFields();
        for(NameAndType f : allFields) {
            if(!f.isStatic() && f.usedInProject)
                out.println("%s %s;", cType.toC(f.type), naming.field(f));
        }
        out.undent().println("} %s;", naming.clazz(c.name));
        out.ln();
        
        for(NameAndType f : c.fields) {
            if(f.isStatic() && f.usedInProject && (DecompilerUtils.isPrimitive(f.type) || f.type.equals("java/lang/Class")))
                out.println("extern %s %s;", cType.toC(f.type), naming.field(f));
        }
        
        out.ln();
        out.println("extern JvmClass %s_Class;", naming.clazz(c.name))
        .println("extern JvmClass ArrOf_%s_Class;", naming.clazz(c.name))                
        .println("extern JvmClass ArrOf_ArrOf_%s_Class;", naming.clazz(c.name))   
        .println("extern void JvmSetup_%s();", naming.clazz(c.name))
        .ln();
        
        List<Method> objcMethods = new ArrayList();
        Set<Method> objcPropertyMethods = new HashSet();
        List<Method> virtualMethods = !c.isInterface ? vt.getVirtualMethodList(c) : null;
        
        for(Method m : c.methods) {
            if(m.interfaceBaseClass != null) {
                Clazz ifc = CompilerContext.resolve(m.interfaceBaseClass);
                if(A.hasObjC(ifc)) {
                    Method ifMethod = ifc.findDeclaredMethod(m.name, m.signature);
                    m.annotations.put(A.ObjC, 
                    ifMethod.annotations.get(A.ObjC));
                    objcMethods.add(m);
                    if(A.objcProperty(ifMethod))
                        objcPropertyMethods.add(m);
                }
            }
            if(m.usedInProject || m.name.equals("<clinit>")) {
                boolean isAbstract = !c.isInterface && m.isAbstract();
                if(!isAbstract/* && (m.virtualBaseClass == null || m.virtualBaseClass.equals(c.name))*/) {
                    if(c.isInterface)
                    out.print("extern %s interface_%s(",cType.toC(m.type), naming.method(m));
                    else {
                        //
                        if(objcPropertyMethods.contains(m)) {
                            out.print("extern %s %s$Property(",cType.toC(m.type), naming.method(m));
                            printArgs(m, cType, out);
                            out.println(");");
                        }
                        out.print("extern %s %s(",cType.toC(m.type), naming.method(m));
                    }
                    printArgs(m, cType, out);
                    out.println(");");
                }
            }
        }
        
        //generate virtual method headers
        if(virtualMethods != null) {
            for(Method vm : virtualMethods) 
                if(vm.virtualBaseClass.equals(c.name)) {
                    out.print("extern %s virtual_%s(",cType.toC(vm.type), naming.method(vm));
                    printArgs(vm, cType, out);
                    out.println(");");
                }
        }
        
        //generate objc interface
        if(isObjC) {
            cType.dependency.add(c.superName);
            Set<String> writtenProperties = new HashSet();
            out.print("@interface %s_ObjC : %s", naming.clazz(c.name), DecompilerUtils.objcType(cType,c.superName,false));
            if(!c.interfaces.isEmpty()) {
                out.print(" <");
                for(int i=0; i<c.interfaces.size(); i++) {
                    if(i > 0) out.print(",");
                    out.print(DecompilerUtils.objcType(cType,c.interfaces.get(i),false));
                    cType.dependency.add(c.interfaces.get(i));
                }
                out.print(">");
            }
            out.println("{").println("jobject javaobject;").println("}");
            for(Method om : objcMethods) {
                if(A.objcProperty(om)) {
                    String selector = A.objcSelector(om);
                    if(!selector.isEmpty() && !writtenProperties.contains(selector)) {
                        writtenProperties.add(selector);
                        out.println("@property %s %s;", DecompilerUtils.objcType(cType, om.type), selector);
                    }
                }
            }
            out.println("@end");
        }
        out.ln().println("#endif");
        
        Set<String> tmpSet = new HashSet();
        tmpSet.add(c.name);
        String includes = cType.getIncludes(naming, tmpSet);
        if(c.hasAnnotation("cava.annotation.Include")) {
            String[] list = c.annotations.get("cava.annotation.Include").get("value").toString().split(" ");
            for(String inc : list) {
                inc = inc.trim();
                if(!inc.isEmpty()) {
                    includes += "\n#include ";
                    if(inc.charAt(0) != '"' && inc.charAt(0) != '<') includes += '"';
                    includes += inc;
                    if(inc.charAt(0) != '"' && inc.charAt(0) != '<') includes += '"';
                }
            }
        }
        String code = out.toString();
        code = code.replaceAll("\\_\\_includes", java.util.regex.Matcher.quoteReplacement(includes));
        saveCode(c, ".h", code);
        
        Set<String> includedHeaders = cType.dependency;

        cType = new CType();
        out = new SourceWriter();
        out.println("__includes").ln();
        
        for(NameAndType f : c.fields) {
            if(f.isStatic() && f.usedInProject && (DecompilerUtils.isPrimitive(f.type) || f.type.equals("java/lang/Class")))
                out.println("%s %s;", cType.toC(f.type), naming.field(f));
        }
                
        Set<String> usedLiterals = new HashSet();
        for(Method m : c.methods) {
            boolean isAbstract = !c.isInterface && m.isAbstract();
            if(((m.name.equals("<clinit>") || m.usedInProject) && !m.isNative())) {
                if(!isAbstract) {
                    if(c.isInterface) 
                        out.print("%s interface_%s(",cType.toC(m.type), naming.method(m));
                    else
                        out.print("%s %s(",cType.toC(m.type), naming.method(m));
                    printArgs(m, cType, out);
                    out.println(") {").indent();

                    if(c.isInterface) {
                        generateMethodCallWrapper(out, c, m, cType, "itable", ITableCalculator.getIfaceIndex(m));
                        out.undent().println("}");
                    } else {
                        if(c.name.equals("java/lang/Thread") && m.name.equals("threadProc")) {
                            out.println("JvmRegisterCurrentThread(pthis);");
                        }
                        
                        out.println("JvmThread* thread = JvmCurrentThread();");
                        out.println("jint entryFramePtr = thread->framePtr++;");
                        out.println("if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();");
                        
                        out.println("JvmFrame* frame = &thread->frames[entryFramePtr];");

                        int index = 0;
                        for(NameAndType a : m.args) {
                            out.println("DEFARG(%s,%s,%d);", naming.local(a), cType.toC(a.type), index++);
                        }
                        for(NameAndType l : m.locals) {
                            out.println("DEFLOCAL(%s,%s,%d);", naming.local(l), cType.toC(l.type), index++);
                            //out.println("%s %s;", cType.toC(l.type), naming.local(l));
                        }
                        out.ln();
                        
                        int reflectIndex = reflectMethods.indexOf(m);
                        if(reflectIndex == -1)
                            out.println("frame->method = jnull;");
                        else
                            out.println("JVMMETHOD(%s_Class,%d);",naming.clazz(c.name),reflectIndex);
                        CWriter writer = new CWriter(m, out, naming, cType, globalRefs);
                        if(m.name.equals("<clinit>")) {
                            new ClassInitInserter().process(m);
                            out.println("static int _initialized = 0;")
                               .println("if(_initialized) return;")
                               .println("_initialized = 1;");
                        }
                        writer.writeChildren(m.body.children);
                        variableLocations.put(m, writer.variableLocations);
                        
                        out.println("thread->framePtr = entryFramePtr;");
                        //make compiler happy for methods without return
                        if(!m.type.equals("V") && m.body.children.size() > 0 && 
                            (m.body.children.get(m.body.children.size()-1) instanceof Throw || 
                             m.body.children.get(m.body.children.size()-1) instanceof TryCatch ||
                             m.body.children.get(m.body.children.size()-1) instanceof Switch)) {
                            out.println("return %s;", DecompilerUtils.isPrimitive(m.type) ? "0" : "jnull");
                        }
                        out.undent().println("}").ln();
                        usedLiterals.addAll(writer.usedListerals);
                    }
                }
                /*
                if(m.virtualBaseClass != null && m.virtualBaseClass.equals(c.name)) {
                    out.print("%s virtual_%s(",cType.toC(m.type), naming.method(m));
                    printArgs(m, cType, out);
                    out.println(") {").indent();
                    out.println("//todo: call method from virtual table");
                    if(!m.type.equals("V")) {
                        out.println("return %s;", DecompilerUtils.isPrimitive(m.type) ? "0" : "jnull");
                    }
                    out.undent().println("}").ln();
                }*/
                
            }
        }
        
        if(virtualMethods != null) {
            for(int i=0; i<virtualMethods.size(); i++) {
                Method vm = virtualMethods.get(i);
                if(vm.virtualBaseClass.equals(c.name)) {
                    out.print("%s virtual_%s(",cType.toC(vm.type), naming.method(vm));
                    printArgs(vm, cType, out);
                    out.println(") {").indent();
                    generateMethodCallWrapper(out, c, vm, cType, "vtable", i);
                    out.undent().println("}");
                }
            }
        }
        
        if(isObjC) {
            out.println("@implementation %s_ObjC", naming.clazz(c.name));
            for(Method m : objcMethods) {
                String objcDesc = m.annotations.get("cava.annotation.ObjC") != null ?
                                  m.annotations.get("cava.annotation.ObjC").get("value").toString() : null;
                if(objcDesc == null) {
                    System.out.println(m.declaringClass+":"+m.name+" doesn't have ObjC description");
                    continue;
                }
                if(m.boolAnnotation("cava.annotation.ObjC", "property")) {
                    
                } else {
                    int argCount = m.args.size();
                    if(!m.isStatic()) argCount--;
                    out.print("-(%s)", DecompilerUtils.objcType(cType,m.type));
                    String[] parts = objcDesc.split(":");
                    for(int i=0; i<parts.length; i++) {
                        out.print(" %s:(%s) %s", parts[i], DecompilerUtils.objcType(cType,m.args.get(i+1).type), m.args.get(i+1).name);
                    }
                    out.println("{").indent();
                    NameAndType field = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredField("currentDelegate");
                    out.println("javaobject = %s;", naming.field(field));
                    Method lm = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredMethod("initFromLaunch", "(J)V");
                    out.println("%s((jlong)self);", naming.method(lm));
                    if(!m.type.equals("V")) out.print("return ");
                    out.print("%s(javaobject", naming.method(m));
                    for(int i=1; i<m.args.size(); i++) {
                        NameAndType arg = m.args.get(i);
                        if(!DecompilerUtils.isPrimitive(arg.type)) {
                            Clazz argClass = CompilerContext.resolve(arg.type);
                            Method im = argClass.findMethod("<init>", "(J)V");
                            out.print(", %s(JvmAllocObject(&%s_Class),(jlong)%s)", naming.method(im), naming.clazz(argClass.name), arg.name);
                        } else out.print(", %s", arg.name);

                    }
                    out.println(");");
                    //CWriter writer = new CWriter(m, out, naming, cType);
                    //writer.writeChildren(m.body.children);
                    out.undent().println("}").ln();
                    //usedLiterals.addAll(writer.usedListerals);
                }
            }
            out.println("@end");
        }
        out.println("JvmClass %s_Class;", naming.clazz(c.name))
           .println("JvmClass ArrOf_%s_Class;", naming.clazz(c.name))
           .println("JvmClass ArrOf_ArrOf_%s_Class;", naming.clazz(c.name))     
           .ln();
        
        generateJvmSetup(c, out, virtualMethods, globalRefs, cType);
        
        code = out.toString();
        cType.dependency.add(c.name);
        includedHeaders.remove(c.name);
        includes = cType.getIncludes(naming, includedHeaders);
        includes += "\n";
        for(String literal : usedLiterals) {
            includes += "extern jobject "+literal+";\n";
        }
        code = code.replaceAll("\\_\\_includes", java.util.regex.Matcher.quoteReplacement(includes));
        
        saveCode(c, ".m", code);
    }
    
    void collectInheritedClasses(Clazz c, List<Clazz> list) {
        if(!list.contains(c))
            list.add(c);
        for(String n : c.interfaces) {
            collectInheritedClasses(CompilerContext.classes.get(n), list);
        }
        if(c.superName != null)
            collectInheritedClasses(CompilerContext.classes.get(c.superName), list);
    }
    
    void generateJvmSetup(Clazz c, SourceWriter out, List<Method> virtualMethods, List<NameAndType> globalRefs, CType cType) {
        
        out.println("jbool %s_isChildOf(JvmClass* klass) {", naming.clazz(c.name)).indent()
           .print("return ");
        List<Clazz> inheritedClasses = new ArrayList();
        collectInheritedClasses(c, inheritedClasses);
        for(int i=0; i<inheritedClasses.size(); i++) {
            if(i > 0) out.print(" || ");
            out.print("klass == &%s_Class", naming.clazz(inheritedClasses.get(i).name));
        }
        out.println(";");
        out.undent().println("}").ln();
        
        for(String sign : invokeTypes)
            out.println("extern jobject invoke_%s(jobject,jobject,jobject);", sign);
        
        out.println("void JvmSetup_%s() {", naming.clazz(c.name)).indent();
        out.println("static int initialized = 0;")
           .println("if(initialized) return;")
           .println("initialized = 1;");
        if(c.superName != null) 
            out.println("JvmSetup_%s();", naming.clazz(c.superName));
        for(String iname : c.interfaces) {
            out.println("JvmSetup_%s();", naming.clazz(iname));
        }
        
        //generate virtual method table
        out.print("void** _vTable = ");
        if(c.isInterface) out.println("java_lang_Object_Class.vtable;");
        else {
            if(virtualMethods == null || virtualMethods.isEmpty())
                out.println("java_lang_Object_Class.vtable;");
            else {
                out.println("malloc(sizeof(void*) * %d);", virtualMethods.size());
                for(int i=0; i<virtualMethods.size(); i++) {
                    Method vm = virtualMethods.get(i);
                    out.println("_vTable[%d] = %s;", i, 
                            vm.isAbstract() ? "jnull" : 
                            "&"+naming.method(virtualMethods.get(i)));
                }
            }
        }
        
        //generate interface method table
        out.print("void** _iTable = ");
        if(!c.isInterface && c.interfaceTableSize > 0) {
            out.println("(void**)malloc(%d * sizeof(void*));", c.interfaceTableSize);
            Clazz kk = c;
            HashSet<String> used = new HashSet();
            while(kk != null) {
                for(Method m : kk.methods) {
                    String sign = ITableCalculator.signature(m);
                    if(!m.isStatic() && !m.isAbstract() && !used.contains(sign)) {
                        int idx = ITableCalculator.getIfaceIndex(m);
                        if(idx != -1 && idx < c.interfaceTableSize) {
                            out.println("_iTable[%d] = (void*)&%s;", idx, naming.method(m));
                            used.add(sign);
                        }
                    }
                }
                if(kk.superName != null)
                    kk = CompilerContext.resolve(kk.superName);
                else kk = null;
            }
            
            /*
            out.println("malloc(sizeof(void*) * %d);", c.interfaceTableSize);
            if(c.superName != null) {
                Clazz sc = CompilerContext.classes.get(c.superName);
                if(sc.interfaceTableSize > 0)
                    out.println("memcpy(_iTable, %s_Class.itable, sizeof(void*)*%d);", naming.clazz(c.superName), sc.interfaceTableSize);
            }
            for(Method m : c.methods)
                if(m.usedInProject && m.interfaceTableIndex != -1)
                    out.println("_iTable[%d] = &%s;", m.interfaceTableIndex, naming.method(m));
            */
        } else out.println("jnull;");
        
        out.println("JvmClass* cls = &%s_Class;", naming.clazz(c.name))
           .println("cls->klass = &java_lang_Class_Class;")
           .println("cls->size = sizeof(%s);", c.name.equals("java/lang/Thread") ? "JvmThread" : naming.clazz(c.name))     
           .println("cls->name = JvmMakeString(L\"%s\",%d);", c.name.replace('/', '.'), c.name.length())
           .println("cls->superClass = %s;", c.superName == null ? "jnull" : "&"+naming.clazz(c.superName)+"_Class")
           .println("cls->componentType = jnull;")
           .println("cls->modifiers = 0;")
           .println("cls->fields = jnull;")
           .println("cls->vtable = _vTable;")
           .println("cls->itable = _iTable;")
           .println("cls->isChildOf = &%s_isChildOf;", naming.clazz(c.name))
           .println("#ifdef JVM_DEBUG")
           .println("cls->sourceFile = JvmMakeString(L\"%s\",%d);", c.sourceFile == null ? "" : c.sourceFile, c.sourceFile == null ? 0 : c.sourceFile.length())
           .println("#endif")
           ;  
        
            
        out.print("cls->interfaces = ");
        if(!c.interfaces.isEmpty()) {
            out.print("JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,%d,&(JvmClass*[]){",c.interfaces.size());
            for(int i=0; i<c.interfaces.size(); i++) {
                if(i > 0) out.print(",");
                out.print("&%s_Class", naming.clazz(c.interfaces.get(i)));
            }
            out.println("});");
        } else out.println("jnull;");
        generateReflection(c, out, globalRefs);
        
        out.ln();
        generateArrayDefinition(naming.clazz(c.name), c.name.replace('/', '.'), out);
        
        out.undent().println("}");        
    }
    
    void generateReflectionInvoke(Method m, CType cType, SourceWriter out) {
        out.println("jobject %s_Invoke(jobject pthis, jobject pargs) {", naming.method(m)).indent();
        out.println("if(JvmArrayLen(pargs) < %d) return jnull;", m.args.size() - (!m.isStatic() ? 1 : 0));
        boolean isVoid = m.type.equals("V");
        if(!isVoid) {
            out.print("return ");
            if(DecompilerUtils.isPrimitive(m.type))
                out.print("JvmBox_%s(", m.type);
        }
        out.print("%s(", naming.method(m));
        
        int start = 0;
        if(!m.isStatic()) {
            out.print("JvmCheckCast(pthis, &%s_Class)", naming.clazz(m.declaringClass));
            start++;
        }
        
        int index = 0;
        for(int i=start; i<m.args.size(); i++) {
            if(i > 0) out.print(",");
            NameAndType arg = m.args.get(start);
            if(DecompilerUtils.isPrimitive(arg.type)) {
                out.print("JvmUnbox_%s(JvmArrayGet(pargs,%d))",arg.type, index);
            } else {
                out.print("JvmCheckCast(JvmArrayGet_O(pargs,%d), &%s_Class)", index, naming.clazz(arg.type));
            }
            index++;
        }
        out.print(")");
        if(!isVoid) {
            if(DecompilerUtils.isPrimitive(m.type)) out.print(")");
            out.println(";");
        } else {
            out.println(";").println("return jnull;");
        }
        out.undent().println("}");
    }
    
    void generateReflection(Clazz c, SourceWriter out, List<NameAndType> globalRefs) {
        if(c.isInterface) {
            return;
        }
        
        out.println("cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, %d, &(JvmMethod*[]){", reflectMethods.size());
        for(int i=0; i<reflectMethods.size(); i++) {
            Method m = reflectMethods.get(i);
            List<NameAndType> args = new ArrayList();
            args.addAll(m.args);
            if(!m.isStatic() && !args.isEmpty()) args.remove(0);
            out.print("JvmMakeMethod(&%s_Class, JvmMakeString(L\"%s\", %d), &%s_Class, %d, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, %d, &(JvmClass*[]){",
                    naming.clazz(c.name),
                    m.name,
                    m.name.length(),
                    naming.clazz(m.type),
                    m.modifiers,
                    args.size());
            for(int k=0; k<args.size(); k++) {
                if(k>0) out.print(",");
                out.print("&%s_Class", naming.clazz(args.get(k).type));
            }
            List<NameAndType> locals = new ArrayList();
            locals.addAll(m.args);
            locals.addAll(m.locals);
            out.print("}), &%s, &invoke_%s \n#ifdef JVM_DEBUG\n , %d, %d, %d, %d, (JvmLocalVariableInfo[]){", 
                    naming.method(m), 
                    getInvokeSignature(m),
                    m.minLine != Integer.MAX_VALUE ? m.minLine : -1, m.maxLine, m.args.size(), m.locals.size());
            Map<String,int[]> locations = variableLocations.get(m);
            for(int k=0; k<locals.size(); k++) {
                if(k > 0) out.print(",");
                NameAndType local = locals.get(k);
                int[] loc = locations.get(local.name);
                out.print("{.name=JvmMakeString(L\"%s\",%d), .startLine=%d, .endLine=%d, .type=&%s_Class}",
                        local.name, local.name.length(), loc!=null ? loc[0] : 0, m.maxLine,
                        naming.clazz(local.type));
            }
            out.print("}\n#endif\n )");
            if(i < reflectMethods.size() - 1) out.print(",");
            out.ln();
        }
        out.println("});");
        
        List<NameAndType> fields = c.getAllFields();
        List<NameAndType> instanceFields = new ArrayList();
        List<NameAndType> staticFields = new ArrayList();
        int fieldCount = 0;
        for(NameAndType f : fields) {
            if(f.usedInProject) {
                if(!DecompilerUtils.isPrimitive(f.type)) {
                    if(A.hasNative(CompilerContext.resolve(f.type))) continue;
                }
                if(f.isStatic()) 
                    staticFields.add(f);
                else
                    instanceFields.add(f);
                if(f.declaringClass.equals(c.name)) fieldCount++;
            }
        }
        out.println("cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, %d, &(JvmMethod*[]){", fieldCount);
        int index = 0;
        for(NameAndType f : instanceFields) {
            if(f.declaringClass.equals(c.name)) {
                if(index > 0) out.print(",");
                out.println("JvmMakeField(&%s_Class, JvmMakeString(L\"%s\", %d), &%s_Class, %d, (void*)offsetof(%s,%s))",
                    naming.clazz(c.name),
                    f.name,
                    f.name.length(),
                    naming.clazz(f.type),   
                    f.modifiers,
                    naming.clazz(c.name),
                    naming.field(f)
                    //instanceFields.indexOf(f)
                );
                index++;
            }
        }
        
        for(NameAndType f : staticFields) {
            if(f.declaringClass.equals(c.name)) {
                if(index > 0) out.print(",");
                out.print("JvmMakeField(&%s_Class, JvmMakeString(L\"%s\", %d), &%s_Class, %d, ",
                    naming.clazz(c.name),
                    f.name,
                    f.name.length(),
                    naming.clazz(f.type),   
                    f.modifiers
                );
                if(DecompilerUtils.isPrimitive(f.type) || f.type.equals("java/lang/Class")) {
                    out.print("&%s",naming.field(f));
                } else {
                    out.print("&JVMGLOBALS[%d]", globalRefs.indexOf(f));
                }
                out.println(")");
                index++;
            }
        }
        out.println("});");        
    }
    
    void generateArrayDefinition(String componentClass, String componentName, SourceWriter out) {
        out.println("cls = &ArrOf_%s_Class;", componentClass)
           .println("cls->klass = &java_lang_Class_Class;")
           .println("cls->size = sizeof(JvmArray);")
           .println("cls->name = JvmMakeString(L\"[%s\",%d);", componentName, componentName.length()+1)
           .println("cls->superClass = &java_lang_Object_Class;")
           .println("cls->componentType = &%s_Class;", componentClass)
           .println("cls->modifiers = 0;")
           .println("cls->fields = jnull;")
           .println("cls->interfaces = jnull;")
           .println("cls->methods = jnull;")
           .println("cls->vtable = java_lang_Object_Class.vtable;")
           .println("cls->isChildOf = jnull;")
        ;        
        
        out.println("cls = &ArrOf_ArrOf_%s_Class;", componentClass)
           .println("cls->klass = &java_lang_Class_Class;")
           .println("cls->size = sizeof(JvmArray);")
           .println("cls->name = JvmMakeString(L\"[[%s\",%d);", componentName, componentName.length()+1)
           .println("cls->superClass = &java_lang_Object_Class;")
           .println("cls->componentType = &ArrOf_%s_Class;", componentClass)
           .println("cls->modifiers = 0;")
           .println("cls->fields = jnull;")
           .println("cls->interfaces = jnull;")
           .println("cls->methods = jnull;")
           .println("cls->vtable = java_lang_Object_Class.vtable;")
           .println("cls->isChildOf = jnull;")
        ;        
        
    }
    
    void generateMethodCallWrapper(SourceWriter out, Clazz c, Method m, CType cType, String table, int index) {
        if(!m.type.equals("V")) out.print("return ");
        out.print("((%s (*)(", cType.toC(m.type));
        for(int i=0; i<m.args.size(); i++) {
            if(i > 0) out.print(",");
            out.print(cType.toC(m.args.get(i).type));
        }
        out.print("))((JvmObject*)pthis)->klass->%s[%d])(", table, index);
        for(int i=0; i<m.args.size(); i++) {
            if(i > 0) out.print(",");
            out.print(naming.arg(m.args.get(i)));
        }
        out.println(");");
    }
    
    void printArgs(Method m, CType cType, SourceWriter out) {
        for(int i=0; i<m.args.size(); i++) {
            if(i > 0) out.print(", ");
            NameAndType a = m.args.get(i);
            out.print("%s %s", cType.toC(a.type), naming.arg(a));
        }
    }

    
    List<Clazz> sortClasses() {
        final DependencyOrderSet<String, Clazz> dos = new DependencyOrderSet();
        Map<String,Clazz> all = CompilerContext.classes;
        all.values().forEach(c -> dos.add(c.name, c));
        all.values().forEach(c -> {
            if(c.superName != null) dos.depends(c.name, c.superName);
            c.interfaces.forEach(i -> dos.depends(c.name, i));
        });
        
        return dos.sort();
    }
    
    void generateBootstrap(List<Clazz> sortedClasses, List<NameAndType> globalRefs) throws Exception {
        SourceWriter out = new SourceWriter();
        out.println("#include \"jvm.h\"").ln();
        for(int i=0; i<sortedClasses.size(); i++) {
            Clazz c = sortedClasses.get(i);
            out.print("extern JvmClass %s_Class; extern JvmClass ArrOf_%s_Class; ",naming.clazz(c.name), naming.clazz(c.name));
        }
        out.ln()
           .println("void** JVMCLASSPATH = &(void*[]){");
        for(int i=0; i<sortedClasses.size(); i++) {
            Clazz c = sortedClasses.get(i);
            if(i > 0) out.print(",");
            out.print("&%s_Class,&ArrOf_%s_Class",naming.clazz(c.name), naming.clazz(c.name));
        }
        out.println(",jnull};");
        /*
        out.println("extern jobject fjava_lang_Class_CLASSPATH;")
           .println("void InitClasspath() {").indent()
           .println("fjava_lang_Class_CLASSPATH = &CLASSPATH;")
           .undent().println("}").ln();
        */
        
        out.ln().ln().println("extern void JvmSetup();").println("extern void JvmSetup2();");
        for(Clazz c : sortedClasses)
            if(!c.name.startsWith("["))
                out.println("extern void JvmSetup_%s();", naming.clazz(c.name));
        
        out.println("void SetupAllClasses() {").indent()
           .println("//Setup classes")     
           .println("JvmSetup();");
        for(Clazz c : sortedClasses)
            if(!c.name.startsWith("["))
                out.println("JvmSetup_%s();", naming.clazz(c.name));
        out.println("JvmSetup2();");
        out.undent().println("}").ln();
        
        List<Method> initializers = new BootstrapSorter().process();
        for(Method m : initializers)
            out.println("extern void %s();", naming.method(m));
        out.println("void InitAllClasses() {").indent();
        for(Method m : initializers)
            out.println("%s();", naming.method(m));
        out.undent().println("}").ln();
        
        out.println("jobject** JVMGLOBALS;").ln();

        Method mainMethod = CompilerContext.getMainMethod();
        out.println("extern void %s();", naming.method(mainMethod));
        out.println("extern void InitJvmLiterals();");
        out.println("void cavamain() {").indent()
           .println("JVMGLOBALS = GC_MALLOC_UNCOLLECTABLE(sizeof(jobject)*%d);", globalRefs.size())
           .println("SetupAllClasses();")
           .println("InitJvmLiterals();")
           .println("InitAllClasses();")
           .println("%s();", naming.method(mainMethod))
           .undent()
           .println("}");
        
        out.println("int main(int argc, char * argv[]) {").indent()
           .println("cavamain();")
           .println("return 0;")
           .undent().println("}");
        CompilerContext.saveCode("cava_main.c", out.toString());
    }
    
    String signatureToCType(char sign) {
        switch(sign) {
            case 'O': return "jobject";
            case 'B': return "jbyte";
            case 'C': return "jchar";
            case 'Z': return "jbool";
            case 'S': return "jshort";
            case 'I': return "jint";
            case 'F': return "jfloat";
            case 'J': return "jlong";
            case 'D': return "jdouble";
            case 'V': return "void";
        }
        return null;
    }
    
    public void generateInvokes() throws Exception {
        SourceWriter out = new SourceWriter();
        out.println("#include \"jvm.h\"").ln();
        for(String sign : allInvokeTypes) {
            char returnType = sign.charAt(sign.length() - 1); 
            String argTypes = "";
            String argValues = "";
            for(int i=0; i<sign.length()-1; i++) {
                if(i>0) {
                    argTypes+=",";
                    argValues+=",";
                }
                char t = sign.charAt(i);
                argTypes += signatureToCType(t);
                if(t == 'O')
                    argValues += "JvmCheckCast(JvmArrayGet_O(pargs,"+i+"),JvmArrayGet_O(method->parameters,"+i+"))";
                else
                    argValues += "JvmUnbox_"+t+"(JvmArrayGet_O(pargs,"+i+"))";
            }
            out.println("jobject invoke_%s(jobject m, jobject pthis, jobject pargs) {", sign).indent();
            out.println("JvmMethod* method = (JvmMethod*)m;");
            out.println("if(method->parameters->len > JvmArrayLen(pargs)) {} //todo");
            out.println("if((method->modifiers & 8) != 0) {").indent();
            if(returnType != 'V') out.print("return ");
            if(returnType != 'V' && returnType != 'O') out.print("JvmBox_"+returnType+"(");
            out.print("((%s (*)(%s))method->address)(%s)", signatureToCType(returnType), argTypes, argValues);
            if(returnType != 'V' && returnType != 'O') out.print(")");
            out.println(";").undent().println("} else {").indent();
            if(returnType != 'V') out.print("return ");
            if(returnType != 'V' && returnType != 'O') out.print("JvmBox_"+returnType+"(");
            if(sign.length() > 1) {
                argTypes = "jobject,"+argTypes;
                argValues = "JvmCheckCast(pthis,method->declaringClass),"+argValues;
            } else {
                argTypes = "jobject";
                argValues = "JvmCheckCast(pthis,method->declaringClass)";
            }
            out.print("((%s (*)(%s))method->address)(%s)", signatureToCType(returnType), argTypes, argValues);
            if(returnType != 'V' && returnType != 'O') out.print(")");
            out.println(";").undent().println("}");
            if(returnType == 'V') out.println("return jnull;");
            out.undent().println("}");
        }
        
        CompilerContext.saveCode("invoke.c", out.toString());
    }
    
}
