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

import com.cava.compiler.code.Visitor;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
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
public class BootstrapSorter {
    
    static class D {
        public int order;
        public Method clinit;
        public Set<D> children = new HashSet();
        
        public D(Method m) {
            clinit = m;
        }
    }
    public List<Method> process() {
        final Map<String, D> map = new HashMap();
        for(Clazz c : CompilerContext.classes.values()) {
            if(!c.isInterface) {
                Method m = c.findClassInitializer();
                if(m != null && m.body != null && !m.body.isEmpty())
                    map.put(c.name, new D(m));
            }
        }
        
        map.entrySet().forEach(e -> {
            D self = e.getValue();
            self.clinit.visit(new Visitor() {
                @Override
                public void visitClassReference(String className) {
                    if(!className.equals(e.getKey()) && map.containsKey(className)) {
                        D parent = map.get(className);
                        if(!parent.children.contains(self)) {
                            parent.children.add(self);
                            self.order += parent.order + 1;
                            self.children.forEach(cc -> cc.order += self.order);
                        }
                        
                    }
                        
                }
            });
        });
        
        List<D> tmp = new ArrayList();
        tmp.addAll(map.values());
        tmp.sort((d1,d2) -> d1.order - d2.order);
        
        final List<Method> result = new ArrayList();
        tmp.forEach(d -> result.add(d.clinit));
        return result;
    }
    
}
