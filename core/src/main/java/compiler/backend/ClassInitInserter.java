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
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.ast.Call;
import compiler.model.ast.ClassInit;
import compiler.model.ast.Visitor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ClassInitInserter {
    
    public void process(Method m) {
        if(m.isAbstract() || m.isNative() || m.body == null || m.body.children.isEmpty()) return;
        List<Method> queue = new ArrayList();
        Set<Method> seen = new HashSet();
        Set<String> depends = new HashSet();
        
        if(m.declaringClass.contains("VertexBufferObjectWithVAO"))
            System.out.println("...");
        queue.add(m);
        final Method root = m;
        while(!queue.isEmpty()) {
            m = queue.remove(0);
            if(m == null) continue;
            seen.add(m);
            
            final Method mm = m;
            
            m.body.visit(new Visitor() {
                @Override
                public void visitClassReference(String className) {
                    if(!depends.contains(className) && !className.equals(root.declaringClass)) {
                        Clazz c = CompilerContext.resolve(className);
                        Method cm = c.findClassInitializer();
                        if(cm != null && cm != mm) {
                            depends.add(className);
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
        
        depends.forEach(n -> {
            root.body.children.add(0, new ClassInit(n));
        });
    }
    
    
}
