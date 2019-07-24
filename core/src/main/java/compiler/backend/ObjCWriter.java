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
public class ObjCWriter {
    
    Clazz clazz;
    String superName;
    Set<String> protocols = new HashSet();
    Map<String, Method> methods = new HashMap();
    
    public ObjCWriter(Clazz c) {
        clazz = c;
        if(c.isInterface) return;
        for(Method m : c.methods) {
            checkMethod(m);
        }
        Clazz sc = c;
        while(sc != null) {
            if(superName == null && A.hasObjC(sc)) {
                superName = A.objcSelector(sc);
                if(superName.isEmpty()) superName = DecompilerUtils.simpleName(sc.name);
            }
            if(sc.superName == null) break;
            sc = CompilerContext.resolve(sc.superName);
        }
        
        if(!methods.isEmpty()) c.isObjCImplementation = true;
    }
    
    public void writeInterface(NameManager naming, SourceWriter out) {
        if(methods.isEmpty()) return;
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
           .println("jobject javaPeer;");
        
        out.undent().println("}").println("@end");
    }
    
    public void writeImplementation(NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        if(methods.isEmpty()) return;
        out.println("@implementation %s_ObjC", naming.clazz(clazz.name));
        methods.forEach((s,m) -> writeMethod(m,s,naming,cType,globalRefs, out));
        out.println("@end");
    }
    
    void writeMethod(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        out.print("-(%s)", DecompilerUtils.objcType(cType,m.type));
        String[] parts = selector.split(":");
        for(int i=0; i<parts.length; i++) {
            out.print(" %s:(%s) %s", parts[i], DecompilerUtils.objcType(cType,m.args.get(i+1).type), m.args.get(i+1).name);
        }
        out.println("{").indent();
        
        if(m.name.equals("didFinishLaunchingWithOptions")) 
            writeDidFinishLaunchingBody(m, selector, naming, cType, globalRefs, out);
        else
            writeMethodBody(m, selector, naming, cType, out);
        
        out.undent().println("}");
    }
    
    void writeMethodBody(Method m, String selector, NameManager naming, CType cType, SourceWriter out) {
        SourceWriter tmpOut = new SourceWriter();
        Method tm = m;
        if(m.interfaceBaseClass != null) {
            tm = CompilerContext.resolve(m.interfaceBaseClass).findMethod(m.name, m.signature);
            tmpOut.print("interface_");
        } else if(m.virtualBaseClass != null) {
            tm = CompilerContext.resolve(m.virtualBaseClass).findMethod(m.name, m.signature);
            tmpOut.print("virtual_");
        }

        tmpOut.print("%s(javaPeer", naming.method(tm));
        for(int i=1; i<m.args.size(); i++) {
            NameAndType arg = m.args.get(i);
            tmpOut.print(",");
            printObjCArg(arg, naming, tmpOut);
        }
        tmpOut.print(")");

        if(!DecompilerUtils.isVoid(m.type)) {
            out.print("return ");
        }
        if(!DecompilerUtils.isPrimitive(m.type)) {
            printObjCMarshaller(m.type, tmpOut.toString(), naming, out);
            out.println(";");
        } else out.println("%s;",tmpOut.toString());           
    }
    
    void writeDidFinishLaunchingBody(Method m, String selector, NameManager naming, CType cType, List<NameAndType> globalRefs, SourceWriter out) {
        NameAndType field = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredField("currentDelegate");
        if(field == null || !field.usedInProject) throw new RuntimeException("cava/apple/uikit/UIApplication.currentDelegate field missing");
        int index = globalRefs.indexOf(field);
        if(index == -1) throw new RuntimeException("cava/apple/uikit/UIApplication.currentDelegate not defined as globalRef");

        field = CompilerContext.resolve("cava/apple/uikit/UIApplication").findDeclaredField("currentApplication");
        if(field == null || !field.usedInProject) throw new RuntimeException("cava/apple/uikit/UIApplication.currentApplication field missing");
        int index2 = globalRefs.indexOf(field);
        if(index2 == -1) throw new RuntimeException("cava/apple/uikit/UIApplication.currentApplication not defined as globalRef");

        out.println("JvmStartDebugger();");
        out.print("JVMGLOBALS[%d] = ", index2);
        printObjCArg(m.args.get(1), naming, out);
        out.println(";")
           .println("return ");
        if(m.interfaceBaseClass != null) {
           Method im = CompilerContext.resolve(m.interfaceBaseClass).findMethod(m.name, m.signature);
           out.print("interface_%s", naming.method(im));
        } else {
           out.print("%s", naming.method(m));
        }
       out.print("(JVMGLOBALS[%d], JVMGLOBALS[%d], ", index, index2);
       printObjCArg(m.args.get(2), naming, out);
       out.println(");");        
    }
    
    void printObjCMarshaller(String type, String value, NameManager naming, SourceWriter out) {
        if(!DecompilerUtils.isPrimitive(type)) {
            Clazz argClass = CompilerContext.resolve(type);
            Method im = argClass.findMethod("<init>", argClass.isStruct() ? "(Lcava/c/Struct;)V" : "(Lcava/c/VoidPtr;)V");
            if(im == null || !im.usedInProject) throw new RuntimeException("Can't find native bridge <init> method for "+type);
            out.print("%s(JvmAllocObject(&%s_Class),%s)", naming.method(im), naming.clazz(argClass.name), value);
        } else out.print("%s", value);
    }
    
    void printObjCArg(NameAndType arg, NameManager naming, SourceWriter out) {
        printObjCMarshaller(arg.type, arg.name, naming, out);
    }
    
    void checkMethod(Method m) {
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
                methods.put(selector, m);
                if(m.interfaceBaseClass != null)
                    protocols.add(DecompilerUtils.simpleName(m.interfaceBaseClass));
            } 
        }
        
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
