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

import com.cava.compiler.code.Call;
import com.cava.compiler.code.Visitor;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ClassInitInserter {
    
    public Set<Method> process(Method m) {
        if(m.isAbstract() || m.isNative() || m.body == null || m.body.isEmpty()) return null;
        List<Method> queue = new ArrayList();
        Set<Method> seen = new HashSet();
        Set<Method> depends = new HashSet();
        
        queue.add(m);
        final Method root = m;
        while(!queue.isEmpty()) {
            m = queue.remove(0);
            if(m == null) continue;
            seen.add(m);
            
            final Method mm = m;
            
            m.visit(new Visitor() {
                @Override
                public void visitClassReference(String className) {
                    if(!depends.contains(className) && !className.equals(root.declaringClass) && !DecompilerUtils.isPrimitive(className)) {
                        Clazz c = CompilerContext.resolve(className);
                        Method cm = c.findClassInitializer();
                        if(cm != null && cm != mm) {
                            depends.add(cm);
                            cm.usedInProject = true;
                        }
                    }
                }
                
                @Override
                public void call(Call c) {
                    Method called = CompilerContext.resolve(c.className).findMethod(c.methodName, c.signature);
                    if(!seen.contains(called) && !queue.contains(called))
                        queue.add(called);
                }

            });            
        }
        
        /*
        depends.forEach(n -> {
            root.body.add(0, new ClassInit(n));
        });*/
        return depends;
    }
    
    
}
