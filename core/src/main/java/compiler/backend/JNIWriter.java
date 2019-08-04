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
        clazz = c;
        if(c.isInterface) return;
        
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
    
    void writeJNIExports(NameManager naming, CType cType, SourceWriter out) {
        if(!clazz.isJNIImplementation) return;
        methods.forEach((k,m) -> {
            //out.print("JNIEXPORT %s ", DecompilerUtils.objcType(cType, k))
        });
    }
}
