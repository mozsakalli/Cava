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

import compiler.CavaOptions;
import compiler.CompilerContext;
import compiler.DecompilerUtils;
import compiler.DependencyOrderSet;
import compiler.Platform;
import compiler.backend.BootstrapSorter;
import compiler.backend.ClassInitInserter;
import compiler.backend.SourceWriter;
import compiler.backend.ConstructorFixer;
import compiler.backend.InstanceOfBuilder;
import compiler.backend.JNIWriter;
import compiler.backend.ObjCWriter;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Switch;
import compiler.model.ast.Throw;
import compiler.model.ast.TryCatch;
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
        final ConstructorFixer cf = new ConstructorFixer();
        sortedClasses.forEach(cls -> {
                cf.fix(cls);
        });
        //final VirtualTable vTable = new VirtualTable();
        //vTable.build(sortedClasses);
        
        //interfaceTableSize = ITable.calculate();
        //ITableCalculator.calculate();
        assignables = InstanceOfBuilder.build();
        
        //collect all used non primitive static fields
        List<NameAndType> globalRefs = new ArrayList();
        for(Clazz c : sortedClasses) {
            if(!c.isStruct()) {
                for(NameAndType f : c.fields) {
                    if(f.usedInProject && f.isStatic() && !DecompilerUtils.isPrimitive(f.type) && !f.type.equals("java/lang/Class"))
                        globalRefs.add(f);
                }
            }
        }
        
        for(Clazz c : sortedClasses) {
            if(c.name.startsWith("[")) continue;
            generateClass(c, globalRefs);
            allInvokeTypes.addAll(invokeTypes);
            invokeTypes.clear();
        }
        
        SourceWriter out = new SourceWriter();
        out.println("#include \"jvm.h\"");
        List<String> literals = CompilerContext.stringCollector.strings();
        for(int i=0; i<literals.size(); i++) {
            out.println("JOBJECT %s;", naming.literal(i));
        }
        out.println("void InitJvmLiterals() {").indent();
        for(int i=0; i<literals.size(); i++) {
            out.print("%s = JvmMakeString((JCHAR[]){", naming.literal(i));
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
    void generateClass(Clazz c, List<NameAndType> globalRefs) throws Exception {
        CType cType = new CType();

        reflectMethods.clear();
        for(Method m : c.methods) {
            if((m.usedInProject) && !m.isAbstract() && !m.isNative()) {
                reflectMethods.add(m);
                invokeTypes.add(getInvokeSignature(m));
            }
        }
        
        boolean isStruct = c.isStruct();
        String nativeClassName = A.nativeValue(c);
        if(isStruct && (nativeClassName == null || nativeClassName.isEmpty())) 
                throw new RuntimeException(c.name+" must have @Native annotation with name");
        
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
        if(isStruct)
            out.println("%s $struct;", nativeClassName);
        out.undent().println("} %s;", naming.clazz(c.name));
        out.ln();
        
        for(NameAndType f : c.fields) {
            boolean isPrimitive = DecompilerUtils.isPrimitive(f.type);
            if(f.isStatic() && f.usedInProject && (isPrimitive || f.type.equals("java/lang/Class")))
                out.println("extern %s %s;", cType.toC(f.type), naming.field(f));
            
            //include field type headers
            if(f.usedInProject && !isPrimitive)
                cType.dependency.add(f.type);
        }
        
        out.ln();
        out.println("extern JvmClass %s_Class;", naming.clazz(c.name))
        .println("extern JvmClass ArrOf_%s_Class;", naming.clazz(c.name))                
        .println("extern JvmClass ArrOf_ArrOf_%s_Class;", naming.clazz(c.name))   
        .println("extern void JvmSetup_%s();", naming.clazz(c.name))
        .ln();
        
        for(Method m : c.methods) {
            if(m.usedInProject || m.name.equals("<clinit>")) {
                boolean isAbstract = !c.isInterface && m.isAbstract();
                if(!isAbstract/* && (m.virtualBaseClass == null || m.virtualBaseClass.equals(c.name))*/) {
                    if(c.isInterface)
                    out.print("extern %s interface_%s(",cType.toC(m.type), naming.method(m));
                    else {
                        if(isStruct && m.isNative() && m.name.equals("getStruct"))
                            out.print("extern %s %s(",nativeClassName, naming.method(m));
                        else
                            out.print("extern %s %s(",cType.toC(m.type), naming.method(m));
                    }
                    printArgs(m, cType, out);
                    out.println(");");
                }
            }
        }
        
        //generate virtual method headers
        if(!c.isInterface) {
            for(Method vm : c.methods) {
                if(vm.usedInProject && vm.virtualBaseClass != null && vm.virtualBaseClass.equals(c.name)) {
                    out.print("extern %s virtual_%s(",cType.toC(vm.type), naming.method(vm));
                    printArgs(vm, cType, out);
                    out.println(");");
                }
            }
        }
        
        ObjCWriter objc = null;
        JNIWriter jni = null;
        
        if(CavaOptions.targetPlatform() == Platform.iOS || CavaOptions.targetPlatform() == Platform.OsX) {
            objc = new ObjCWriter(c);
            objc.writeInterface(naming, cType, out);
            if(c.isObjCImplementation) out.println("/* ObjC-Implementation */");
        } else if(CavaOptions.targetPlatform() == Platform.Android) {
            jni = new JNIWriter(c);
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
            if(isStruct && m.isNative()) {
                String field = A.nativeValue(m);
                if(!m.name.equals("getStruct") && !m.name.equals("setStruct") && 
                    (field == null || field.isEmpty())) throw new RuntimeException("Struct method must have @Native annotation "+m);
                if(m.name.equals("getStruct")) {
                    out.println("%s %s(JOBJECT thiz) { return ((%s*)thiz)->$struct; }",
                            nativeClassName, naming.method(m), naming.clazz(c.name));
                }
                else if(m.name.equals("setStruct")) {
                    out.println("%s %s(JOBJECT thiz, %s value) { ((%s*)thiz)->$struct = value; }",
                            cType.toC(m.type), naming.method(m), nativeClassName, naming.clazz(c.name));
                }
                else if(m.args.size() == 1) { //getter
                    if(m.type.equals("V")) throw new RuntimeException("Struct getter must return value "+m);
                    out.println("%s %s(JOBJECT thiz) {", cType.toC(m.type), naming.method(m)).indent();
                    if(DecompilerUtils.isPrimitive(m.type))
                        out.println("return ((%s*)thiz)->$struct.%s;", naming.clazz(c.name), field);
                    out.undent().println("}");
                } else if(m.args.size() == 2) { //setter
                    if(!m.type.equals("V")) throw new RuntimeException("Struct setter must be void "+m);
                    NameAndType arg = m.args.get(1);
                    out.println("%s %s(JOBJECT thiz, %s value) {", cType.toC(m.type), naming.method(m), cType.toC(arg.type)).indent();
                    if(DecompilerUtils.isPrimitive(arg.type))
                        out.println("((%s*)thiz)->$struct.%s = value;", naming.clazz(c.name), field);
                    else
                        out.println("((%s*)thiz)->$struct.%s = ((%s*)value)->$struct;", 
                                naming.clazz(c.name), field,
                                naming.clazz(arg.type));
                        
                    out.undent().println("}");
                } else throw new RuntimeException("Invalid argument count for struct method "+m);
                continue;
            }
            boolean isAbstract = !c.isInterface && m.isAbstract();
            if(((m.name.equals("<clinit>") || m.usedInProject) && !m.isNative())) {
                if(!isAbstract) {
                    if(c.isInterface) 
                        out.print("JVMINLINE %s interface_%s(",cType.toC(m.type), naming.method(m));
                    else
                        out.print("%s %s(",cType.toC(m.type), naming.method(m));
                    printArgs(m, cType, out);
                    out.println(") {").indent();

                    if(c.isInterface) {
                        if(m.interfaceTableIndex == -1) {
                           throw new RuntimeException(m+" doesn't have any implementation which extended from "+c.superName);
                        }
                        generateMethodCallWrapper(out, c, m, cType, "itable", m.interfaceTableIndex);// ITableCalculator.getIfaceIndex(m));
                        out.undent().println("}");
                    } else {
                        if(c.name.equals("java/lang/Thread") && m.name.equals("threadProc")) {
                            out.println("JvmRegisterCurrentThread(pthis);");
                        }
                        
                        boolean isUnsafe = !CavaOptions.debug() && (A.hasUnsafe(m) || A.hasUnsafe(c));
                        if(!isUnsafe) {
                            out.println("JvmThread* thread = JvmCurrentThread();");
                            out.println("JINT entryFramePtr = thread->framePtr++;");
                            out.println("if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();");

                            out.println("JvmFrame* frame = &thread->frames[entryFramePtr];");
                        }
                        int index = 0;
                        for(NameAndType a : m.args) {
                            if(!a.type.equals("cava/c/Struct"))
                                out.println("DEFARG(%s,%s,%d);", naming.local(a), cType.toC(a.type), index++);
                        }
                        for(NameAndType l : m.locals) {
                            out.println("DEFLOCAL(%s,%s,%d);", naming.local(l), cType.toC(l.type), index++);
                        }
                        out.ln();
                        
                        boolean objcInitializer = 
                        m.name.equals("<init>") && c.isExtendedFrom("cava/apple/foundation/NSObject");// &&
                        //!c.name.equals("cava/apple/foundation/Selector");
                        
                        //UIDevice(VoidPtr) doesn't need to create any instance
                        if(objcInitializer) {
                            for(NameAndType arg : m.args)
                                if(arg.type.equals("cava/c/VoidPtr")) {
                                    objcInitializer = false;
                                    break;
                                }
                        }
                        
                        if(!isUnsafe) {
                            int reflectIndex = reflectMethods.indexOf(m);
                            if(reflectIndex == -1)
                                out.println("frame->method = jnull;");
                            else
                                out.println("JVMMETHOD(%s_Class,%d);",naming.clazz(c.name),reflectIndex);
                        }
                        CWriter writer = new CWriter(m, out, naming, cType, globalRefs);
                        if(m.name.equals("<clinit>")) {
                            new ClassInitInserter().process(m);
                            out.println("static int _initialized = 0;")
                               .println("if(_initialized) return;")
                               .println("_initialized = 1;");
                        }
                        
                        if(objcInitializer && !A.objcNoAlloc(c)) {
                            NameAndType field = c.findField("nativePeer");
                            String objcName = c.isObjCImplementation ? 
                                    c.name.replace('/', '_').replace('$', '_') + "_ObjC" :
                                    DecompilerUtils.simpleName(c.name);
                            
                            out.print("%s* objcPeer =((%s*)pthis)->%s= ", 
                                    objcName, naming.clazz(c.name),naming.field(field));
                            if(A.objcNoInit(c)) {
                                out.println("[%s alloc];", objcName);
                            } else {
                                out.println("[[%s alloc] init];", objcName);
                            }
                            if(c.isObjCImplementation)
                                out.println("objcPeer->javaPeer = pthis;");    
                        } 
                        writer.writeChildren(m.body.children);
                        variableLocations.put(m, writer.variableLocations);
                        if(!isUnsafe)
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
            }
        }
        
        //generate virtual method bodies
        if(!c.isInterface) {
            for(Method vm : c.methods) {
                if(vm.usedInProject && vm.virtualBaseClass != null && vm.virtualBaseClass.equals(c.name)) {
                    out.print("JVMINLINE %s virtual_%s(",cType.toC(vm.type), naming.method(vm));
                    printArgs(vm, cType, out);
                    out.println(") {").indent();
                    generateMethodCallWrapper(out, c, vm, cType, "vtable", vm.virtualTableIndex);
                    out.undent().println("}");
                }
            }
        }
        
        if(CavaOptions.targetPlatform() == Platform.iOS || CavaOptions.targetPlatform() == Platform.OsX) 
            objc.writeImplementation(naming, cType, globalRefs, out);
        else if(CavaOptions.targetPlatform() == Platform.Android)
            jni.writeJNIExports(naming, cType, out);
        
        out.println("JvmClass %s_Class;", naming.clazz(c.name))
           .println("JvmClass ArrOf_%s_Class;", naming.clazz(c.name))
           .println("JvmClass ArrOf_ArrOf_%s_Class;", naming.clazz(c.name))     
           .ln();
        
        generateJvmSetup(c, out, globalRefs, cType);
        
        code = out.toString();
        cType.dependency.add(c.name);
        includedHeaders.remove(c.name);
        includes = cType.getIncludes(naming, includedHeaders);
        includes += "\n";
        for(String literal : usedLiterals) {
            includes += "extern JOBJECT "+literal+";\n";
        }
        code = code.replaceAll("\\_\\_includes", java.util.regex.Matcher.quoteReplacement(includes));
        
        saveCode(c, CavaOptions.targetPlatform().codeExtension(), code);
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
    
    void generateJvmSetup(Clazz c, SourceWriter out, List<NameAndType> globalRefs, CType cType) {
        
        out.println("JBOOL %s_isChildOf(JvmClass* klass) {", naming.clazz(c.name)).indent()
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
            out.println("extern JOBJECT invoke_%s(JOBJECT,JOBJECT,JOBJECT);", sign);
        
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
            //collect all virtual methods
            List<Method> virtualMethods = new ArrayList();
            Set<String> virtualMethodSignatures = new HashSet();
            int tableSize = 0;
            Clazz vc = c;
            while(vc != null) {
                for(Method vm : vc.methods) {
                    if(vm.usedInProject && vm.virtualBaseClass != null) {
                        String sign = vm.name+":"+vm.signature;
                        if(!virtualMethodSignatures.contains(sign)) {
                            virtualMethods.add(vm);
                            virtualMethodSignatures.add(sign);
                            tableSize = Math.max(tableSize, vm.virtualTableIndex+1);
                        }
                    }
                }
                if(vc.superName == null) break;
                vc = CompilerContext.resolve(vc.superName);
            }
            
            if(virtualMethods.isEmpty())
                out.println("java_lang_Object_Class.vtable;");
            else {
                out.println("malloc(sizeof(void*) * %d);", tableSize);
                for(int i=0; i<virtualMethods.size(); i++) {
                    Method vm = virtualMethods.get(i);
                    out.println("_vTable[%d] = %s;", vm.virtualTableIndex, 
                            vm.isAbstract() || vm.isNative() ? "jnull" : 
                            "&"+naming.method(virtualMethods.get(i)));
                }
            }
        }
        
        //generate interface method table
        out.print("void** _iTable = ");
        if(!c.isInterface && c.interfaceTableSize > 0) {
            Clazz kk = c;
            HashSet<Integer> used = new HashSet();
            List<Method> iMethods = new ArrayList();
            int tableSize = 0;
            while(kk != null) {
                for(Method m : kk.methods) {
                    if(m.interfaceTableIndex == -1) continue;
                    if(!used.contains(m.interfaceTableIndex)) {
                        iMethods.add(m);
                        tableSize = Math.max(tableSize, m.interfaceTableIndex+1);
                        used.add(m.interfaceTableIndex);
                    }
                }
                if(kk.superName != null)
                    kk = CompilerContext.resolve(kk.superName);
                else kk = null;
            }
            out.println("(void**)malloc(%d * sizeof(void*));", tableSize);
            for(Method m : iMethods) {
                if(m.interfaceTableIndex >= tableSize) throw new RuntimeException("Invalid interface table index: "+m+" "+m.interfaceTableIndex+"/"+tableSize);
                if(m.isAbstract()) {
                    Method vm = CompilerContext.resolve(m.virtualBaseClass).findDeclaredMethod(m.name, m.signature);
                    out.println("_iTable[%d] = (void*)&virtual_%s;", m.interfaceTableIndex, naming.method(vm));
                } else
                out.println("_iTable[%d] = (void*)&%s;", m.interfaceTableIndex, naming.method(m));                
            }
        } else out.println("jnull;");
        
        Method finalize = c.findMethod("finalize", "()V");
        
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
           .print("cls->finalizeFunction = ")
           ;  
        
        if(finalize != null && !finalize.body.children.isEmpty()) 
            out.println("&%s;", naming.method(finalize));
        else
            out.println("jnull;");
        out.print("cls->objcClass = ");
        if(c.isObjCImplementation)
            out.println("[[NSString alloc] initWithString:@\"%s\"];",c.name.replace('/', '_').replace('$', '_')+"_ObjC");
        else if(A.hasObjC(c))
            out.println("[[NSString alloc] initWithString:@\"%s\"];",DecompilerUtils.simpleName(c.name));
        else    
            out.println("jnull;");
        
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
        out.println("JOBJECT %s_Invoke(JOBJECT pthis, JOBJECT pargs) {", naming.method(m)).indent();
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
            if(!m.isStatic()) {
                //move this from parameters to locals
                locals.add(locals.remove(0));
            }
            locals.addAll(m.locals);
            out.print("}), &%s, &invoke_%s \n#ifdef JVM_DEBUG\n , %d, %d, %d, %d, (JvmLocalVariableInfo[]){", 
                    naming.method(m), 
                    getInvokeSignature(m),
                    m.minLine != Integer.MAX_VALUE ? m.minLine : -1, m.maxLine, 
                    m.isStatic() ? m.args.size() : m.args.size() - 1, 
                    m.isStatic() ? m.locals.size() : m.locals.size() + 1);
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
        out.println("cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, %d, &(JvmField*[]){", fieldCount);
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
        Clazz c = CompilerContext.resolve(m.declaringClass);
        boolean isStructClass = c.name.equals("cava/c/Struct");
        for(int i=0; i<m.args.size(); i++) {
            if(i > 0) out.print(", ");
            NameAndType a = m.args.get(i);
            String type = null;
            if(!isStructClass && a.type.equals("cava/c/Struct")) {
                type = A.nativeValue(c);
                if(type == null && type.isEmpty())
                    throw new RuntimeException(c.name+" must define native struct name");
            } else type = cType.toC(a.type);
            out.print("%s %s", type, naming.arg(a));
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
        
        out.ln().ln().println("extern void JvmSetup();").println("extern void JvmSetup2();");
        for(Clazz c : sortedClasses)
            if(!c.name.startsWith("["))
                out.println("extern void JvmSetup_%s();", naming.clazz(c.name));
        
        out.println("void SetupAllClasses() {").indent()
           .println("//Setup classes")     
           .println("JvmSetup();")
            .println("JVMGLOBALS = GC_MALLOC_UNCOLLECTABLE(sizeof(JOBJECT)*%d);", globalRefs.size());

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
        
        out.println("JOBJECT** JVMGLOBALS;").ln();

        Method mainMethod = CompilerContext.getMainMethod();
        if(CavaOptions.targetPlatform() != Platform.Android) 
            out.println("extern void %s();", naming.method(mainMethod));
        else    
            out.println("JavaVM* JNIJavaVM;");
        
        out.println("extern void InitJvmLiterals();");
        out.println("void cavamain() {").indent()
           .println("SetupAllClasses();")
           .println("InitJvmLiterals();")
           .println("InitAllClasses();");
        if(CavaOptions.targetPlatform() != Platform.Android) 
            out.println("%s();", naming.method(mainMethod));
        out.undent()
           .println("}");
        
        if(CavaOptions.targetPlatform() != Platform.Android) {
            out.println("int main(int argc, char * argv[]) {").indent()
               .println("cavamain();")
               .println("return 0;")
               .undent().println("}");
        } else {
           out.println("JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved) {").indent()
           .println("JNIJavaVM = vm;")
           .println("cavamain();")
           .println(" return  JNI_VERSION_1_4;")
           .undent().println("}");
        }
        CompilerContext.saveCode("cava_main.c", out.toString());
    }
    
    String signatureToCType(char sign) {
        switch(sign) {
            case 'O': return "JOBJECT";
            case 'B': return "JBYTE";
            case 'C': return "JCHAR";
            case 'Z': return "JBOOL";
            case 'S': return "JSHORT";
            case 'I': return "JINT";
            case 'F': return "JFLOAT";
            case 'J': return "JLONG";
            case 'D': return "JDOUBLE";
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
            out.println("JOBJECT invoke_%s(JOBJECT m, JOBJECT pthis, JOBJECT pargs) {", sign).indent();
            out.println("JvmMethod* method = (JvmMethod*)m;");
            out.println("if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo");
            out.println("if((method->modifiers & 8) != 0) {").indent();
            if(returnType != 'V') out.print("return ");
            if(returnType != 'V' && returnType != 'O') out.print("JvmBox_"+returnType+"(");
            out.print("((%s (*)(%s))method->address)(%s)", signatureToCType(returnType), argTypes, argValues);
            if(returnType != 'V' && returnType != 'O') out.print(")");
            out.println(";").undent().println("} else {").indent();
            if(returnType != 'V') out.print("return ");
            if(returnType != 'V' && returnType != 'O') out.print("JvmBox_"+returnType+"(");
            if(sign.length() > 1) {
                argTypes = "JOBJECT,"+argTypes;
                argValues = "JvmCheckCast(pthis,method->declaringClass),"+argValues;
            } else {
                argTypes = "JOBJECT";
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
