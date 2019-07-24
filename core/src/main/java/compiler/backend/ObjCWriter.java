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
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ObjCWriter {
    
    List<Method> methods = new ArrayList();
    Clazz clazz;
    String superName;
    Set<String> interfaces = new HashSet();
    Set<String> selectors = new HashSet();
    
    public ObjCWriter(Clazz c) {
        clazz = c;
        Clazz sc = c;
        while(sc != null) {
            if(superName == null && A.hasObjC(sc)) {
                superName = A.objcSelector(sc);
                if(superName.isEmpty()) superName = DecompilerUtils.simpleName(sc.name);
            }
            checkClazz(sc);
            for(String iname : sc.interfaces) {
                Clazz ic = CompilerContext.resolve(iname);
                checkClazz(ic);
            }
            if(sc.superName == null) break;
            sc = CompilerContext.resolve(sc.superName);
        }
    }
    
    public void writeInterface(NameManager naming, SourceWriter out) {
        /*
        if(methods.isEmpty()) return;
        out.print("@interface %s_ObjC : %s ", naming.clazz(clazz.name), 
                clazz.isInterface ? "NSObject" : superName);
        if(!interfaces.isEmpty()) {
            out.print("<");
            int count = 0;
            for(String name : interfaces) {
                if(count++ > 0) out.print(",");
                out.print(name);
            }
            out.print(">");
        }
        out.println(" {").indent();
        
        out.undent().println("}").println("@end");
        */
    }
    
    public void writeImplementation(NameManager naming, CType cType, SourceWriter out) {
        /*
        if(methods.isEmpty()) return;
        out.println("@implementation %s_ObjC", naming.clazz(clazz.name));
        for(Method m : methods) {
            writeMethod(m, naming, cType, out);
        }
        out.println("@end");
        */
    }
    
    void writeMethod(Method m, NameManager naming, CType cType, SourceWriter out) {
        if(m.name.equals("viewWillAppear"))
            System.out.println("...");
        String objcDesc = A.objcSelector(m);
        //interfaces classes doesnt have this
        int argCount = m.args.size();
        if(!m.isStatic()) argCount--;
        out.print("-(%s)", DecompilerUtils.objcType(cType,m.type));
        System.out.println(m+" -> "+objcDesc);
        String[] parts = objcDesc.split(":");
        for(int i=0; i<parts.length; i++) {
            out.print(" %s:(%s) %s", parts[i], DecompilerUtils.objcType(cType,m.args.get(i+1).type), m.args.get(i+1).name);
        }
        out.println("{").indent();
        
        out.undent().println("}");
    }
    
    
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
    }
}
