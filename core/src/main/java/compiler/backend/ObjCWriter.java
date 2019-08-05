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
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ObjCWriter {
    
    Clazz clazz;
    String superName;
    Clazz customSuper;
    
    Set<String> protocols = new HashSet();
    Map<String, Method> methods = new HashMap();
    Map<String,Method> properties = new HashMap();
    
    public ObjCWriter(Clazz c) {
        clazz = c;
        if(c.isInterface) return;

        Clazz sc = c;
        
        while(sc != null) {
            for(Method m : sc.methods) {
                checkMethod(m);
            }

            
            if(superName == null && A.hasObjC(sc)) {
                superName = A.objcSelector(sc);
                if(superName.isEmpty()) superName = DecompilerUtils.simpleName(sc.name);
            }
            
            if(customSuper == null && sc != clazz && sc.isCustomObjCClass()) customSuper = sc;
            
            if(sc.superName == null) break;
            sc = CompilerContext.resolve(sc.superName);
        }

        if(!methods.isEmpty() || customSuper!=null) c.isObjCImplementation = true;
    }
    
    public void writeInterface(NameManager naming, CType cType, SourceWriter out) {
        if(methods.isEmpty() && customSuper == null) return;
        out.print("@interface %s_ObjC : %s ", naming.clazz(clazz.name), 
                clazz.isInterface ? "NSObject" : superName);
        if(!protocols.isEmpty()) {
            out.print("<");
            int count = 0;
            for(String name : protocols) {
                if(count++ > 0) out.print(",");
                out.print(name);
            }
            out.print(">");
        }
        out.println(" {").indent()
           .println("@public")
           .println("JOBJECT javaPeer;")
           .undent().print("}");
        
        final Set<String> written = new HashSet();
        properties.forEach((sel, m) -> {
            if(!written.contains(sel)) {
                String type = m.type;
                if(m.type.equals("V") && m.args.size()>1) {
                    type = m.args.get(1).type;
                }
                if(!type.equals("V")) {
                    out.println("@property %s %s;",DecompilerUtils.objcType(cType,type),sel);
                    written.add(sel);
                }
            }
        });
        out.ln().println("@end");
    }
    
    public void writeImplementation(NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        if(methods.isEmpty() && customSuper == null) return;
        out.println("@implementation %s_ObjC", naming.clazz(clazz.name));
        methods.forEach((s,m) -> writeMethod(m,s,naming,cType,globalRefs, out));
        out.println("@end");
    }
    
    void writeMethod(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        if(m.isStatic()) {
            String[] parts = selector.split(":");
            out.print("+(%s) %s", DecompilerUtils.objcType(cType,m.type), parts[0]);
            for(int i=1; i<parts.length; i++) {
                
            }
            out.println("{").indent();
        } else {
            out.print("-(%s)", DecompilerUtils.objcType(cType,m.type));
            String[] parts = selector.split(":");
            int start = m.args.size() > parts.length ? 1 : 0;
            for(int i=0; i<parts.length; i++) {
                out.print(" %s:(%s) %s", parts[i], DecompilerUtils.objcType(cType,m.args.get(i+start).type), m.args.get(i+start).name);
            }
            out.println("{").indent();
        }

        /*
            out.print("%s(%s)", m.isStatic() ? "+" : "-", DecompilerUtils.objcType(cType,m.type));
            String[] parts = selector.split(":");
            int start = m.args.size() - parts.length;
            if(m.isStatic()) start = 0; else if(parts.length == m.args.size()) start++;
            for(int i=0; i<parts.length; i++) {
                out.print(parts[i]);
                if(i+start < m.args.size()) {
                    out.print(":(%s) %s ",DecompilerUtils.objcType(cType,m.args.get(i+start).type), m.args.get(i+start).name);
                }
            }
        
        */
        writeMethodBody2(m, selector, naming, cType, globalRefs, out);
        
        out.undent().println("}");
    }
    
    void writeMethodBody2(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        NameAndType klassField = CompilerContext.resolve("java/lang/Object").findField("klass");
        NameAndType nativePeerField = CompilerContext.resolve("cava/c/NativeObject").findField("nativePeer");
        NameAndType noOwnerField = CompilerContext.resolve("cava/c/NativeObject").findField("noOwner");
        
        //todo: detect better
        if(m.name.contains("didFinishLaunching")) {
            int index = getCurrentDelegateIndex(globalRefs);
            int index2 = getCurrentApplicationIndex(globalRefs);

            out.println("JvmStartDebugger();");
            out.println("javaPeer = JVMGLOBALS[%s];", index);
            out.print("JVMGLOBALS[%d] = ", index2);  
            printObjCMarshaller(m.args.get(1).type, m.args.get(1).name, naming, globalRefs, out, false);
            out.println(";");
        }
        //define java args
        for(NameAndType arg : m.args) {
            if(!arg.name.equals("this") && !DecompilerUtils.isPrimitive(arg.type)) {
                boolean isStruct = CompilerContext.resolve(arg.type).isStruct();
                out.println("%s arg_%s;", naming.clazz(arg.type), arg.name)
                   .println("arg_%s.%s = &%s_Class;", arg.name, naming.field(klassField), naming.clazz(arg.type))
                   .println("arg_%s.%s = %s;", arg.name, 
                           isStruct ? "$struct" : naming.field(nativePeerField), 
                           arg.name);
                if(!isStruct)
                   out.println("arg_%s.%s = jtrue;", arg.name, naming.field(noOwnerField));
            }
        }
        
        if(!m.type.equals("V"))
            out.print("return ");
        Method tm = m;
        if(m.interfaceBaseClass != null) {
            tm = CompilerContext.resolve(m.interfaceBaseClass).findMethod(m.name, m.signature);
            out.print("interface_");
        } else if(m.virtualBaseClass != null) {
            tm = CompilerContext.resolve(m.virtualBaseClass).findMethod(m.name, m.signature);
            out.print("virtual_");
        }
        out.print("%s(", naming.method(tm));
        for(int i=0; i<m.args.size(); i++) {
            if(i > 0) out.print(",");
            NameAndType arg = m.args.get(i);
            if(arg.name.equals("this"))
                out.print("javaPeer");
            else if(DecompilerUtils.isPrimitive(arg.type))
                out.print(arg.name);
            else
                out.print("&arg_%s", arg.name);
        }
        out.print(")");
        if(m.type.equals("Z"))
            out.print(" ? YES : NO");
        out.println(";");
    }
    void writeMethodBody(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        SourceWriter tmpOut = new SourceWriter();
        Method tm = m;
        if(m.interfaceBaseClass != null) {
            tm = CompilerContext.resolve(m.interfaceBaseClass).findMethod(m.name, m.signature);
            tmpOut.print("interface_");
        } else if(m.virtualBaseClass != null) {
            tm = CompilerContext.resolve(m.virtualBaseClass).findMethod(m.name, m.signature);
            tmpOut.print("virtual_");
        }

        int start = 0;
        tmpOut.print("%s(", naming.method(tm));
        if(!m.isStatic()) {
            tmpOut.print("javaPeer");
            start++;
        }
        for(int i=start; i<m.args.size(); i++) {
            NameAndType arg = m.args.get(i);
            if(i > 0) tmpOut.print(",");
            printObjCArg(arg, naming, globalRefs, tmpOut);
        }
        tmpOut.print(")");

        if(!DecompilerUtils.isVoid(m.type)) {
            out.print("return ");
        }
        if(!DecompilerUtils.isPrimitive(m.type)) {
            printObjCMarshaller(m.type, tmpOut.toString(), naming, globalRefs, out, false);
            out.println(";");
        } else out.println("%s;",tmpOut.toString());           
    }
    
    
    int getCurrentDelegateIndex(List<NameAndType> globalRefs) {
        NameAndType field = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredField("currentDelegate");
        if(field == null || !field.usedInProject) throw new RuntimeException("cava/apple/uikit/UIApplication.currentDelegate field missing");
        int index = globalRefs.indexOf(field);
        if(index == -1) throw new RuntimeException("cava/apple/uikit/UIApplication.currentDelegate not defined as globalRef");
        return index;
    }
    
    int getCurrentApplicationIndex(List<NameAndType> globalRefs) {
        NameAndType field = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredField("currentApplication");
        if(field == null || !field.usedInProject) throw new RuntimeException("cava/apple/uikit/UIApplication.currentApplication field missing");
        int index = globalRefs.indexOf(field);
        if(index == -1) throw new RuntimeException("cava/apple/uikit/UIApplication.currentApplication not defined as globalRef");
        return index;
    }
    
    void writeDidFinishLaunchingBody(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        int index = getCurrentDelegateIndex(globalRefs);
        int index2 = getCurrentApplicationIndex(globalRefs);

        out.println("JvmStartDebugger();");
        out.println("javaPeer = JVMGLOBALS[%s];", index);
        out.print("JVMGLOBALS[%d] = ", index2);
        printObjCMarshaller(m.args.get(1).type, m.args.get(1).name, naming, globalRefs, out, false);
        out.println(";")
           .println("return ");
        if(m.interfaceBaseClass != null) {
           Method im = CompilerContext.resolve(m.interfaceBaseClass).findMethod(m.name, m.signature);
           out.print("interface_%s", naming.method(im));
        } else {
           out.print("%s", naming.method(m));
        }
       out.print("(JVMGLOBALS[%d], JVMGLOBALS[%d], ", index, index2);
       printObjCArg(m.args.get(2), naming, globalRefs, out);
       out.println(");");        
    }
    
    void printObjCMarshaller(String type, String value, NameManager naming, List<NameAndType> globalRefs, SourceWriter out, boolean useGlobalApp) {
        if(!DecompilerUtils.isPrimitive(type) && !type.equals("java/lang/Class")) {
            if(useGlobalApp && type.equals("cava/apple/uikit/UIApplication")) {
                out.print("JVMGLOBALS[%d]", getCurrentApplicationIndex(globalRefs));
            } else {
                Clazz nsObject = CompilerContext.resolve("cava/apple/foundation/NSObject");
                Clazz argClass = CompilerContext.resolve(type);

                Method im = argClass.isStruct() ? 
                        argClass.findMethod("<init>", "(Lcava/c/Struct;)V") :
                        nsObject.findMethod("<init>", "(Lcava/c/VoidPtr;)V");
                if(im == null || !im.usedInProject) throw new RuntimeException("Can't find native bridge <init> method for "+type);
                out.print("%s(JvmAllocObject(&%s_Class),%s)", naming.method(im), naming.clazz(argClass.name), value);
            }
        } else out.print("%s", value);
    }
    
    void printObjCArg(NameAndType arg, NameManager naming, List<NameAndType> globalRefs, SourceWriter out) {
        printObjCMarshaller(arg.type, arg.name, naming, globalRefs, out, true);
    }
    
    void checkMethod(Method m) {
        if(m.usedInProject) {
            String selector = null;
            boolean isProperty = false;
            
            selector = A.objcSelector(m);
            if(selector != null && selector.isEmpty()) selector = null;
            
            if(selector == null && m.virtualBaseClass != null) {
                Clazz vc = CompilerContext.resolve(m.virtualBaseClass);
                Method vm = vc.findDeclaredMethod(m.name, m.signature);
                if(vm != null) {
                    selector = A.objcSelector(vm);
                    isProperty = A.objcProperty(vm);
                    if(selector != null && selector.isEmpty()) selector = null;
                }
            }
            
            if(selector == null && m.interfaceBaseClass != null) {
                Clazz ic = CompilerContext.resolve(m.interfaceBaseClass);
                if(ic != null) {
                    Method im = ic.findDeclaredMethod(m.name, m.signature);
                    if(im != null) {
                        selector = A.objcSelector(im);
                        if(selector != null && selector.isEmpty()) selector = null;
                        else {
                            String protocol = A.objcSelector(ic);
                            isProperty = A.objcProperty(im);
                            if(protocol == null || protocol.isEmpty())
                                protocol = DecompilerUtils.simpleName(m.interfaceBaseClass);
                            protocols.add(protocol);
                        }
                    }
                }
            }
            
            if(selector != null) {
                if(isProperty)
                    properties.put(selector, m);
                else
                    methods.put(selector, m);
            }
        }
        /*
        if(m.usedInProject && (m.virtualBaseClass == null || m.virtualBaseClass.equals(m.declaringClass))) {
            String selector = !A.objcProperty(m) ? A.objcSelector(m) : null;
            if((selector == null || selector.isEmpty()) && m.interfaceBaseClass != null) {
                Clazz ic = CompilerContext.resolve(m.interfaceBaseClass);
                Method im = ic.findDeclaredMethod(m.name, m.signature);
                if(im != null && !A.objcProperty(im)) {
                    selector = A.objcSelector(im);
                }
            }

            if(selector != null && !selector.isEmpty()) {
                if(!methods.containsKey(selector)) {
                    methods.put(selector, m);
                }
                if(m.interfaceBaseClass != null)
                    protocols.add(DecompilerUtils.simpleName(m.interfaceBaseClass));
            } 
        }*/
        
    }
    /*
    void checkClazz(Clazz sc) {
        for(Method m : sc.methods) {
            if(m.usedInProject) {
                String selector = A.objcSelector(m);
                if(selector != null && !selector.isEmpty() && !A.objcProperty(m)) {
                    if(sc.isInterface) interfaces.add(DecompilerUtils.simpleName(sc.name));
                    else if(!selectors.contains(selector)) {
                        methods.add(m);
                        selectors.add(selector);
                    }
                }
            }
        }
    }*/
}
