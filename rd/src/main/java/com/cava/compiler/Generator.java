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

import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class Generator {
    
    List<Clazz> classList;
    SourceWriter out;
    Map<String, Integer> globals = new HashMap();
    Map<String, Integer> classIndex = new HashMap();
    
    public int getGlobal(String className, String fieldName) {
        String key = className+":"+fieldName;
        return globals.computeIfAbsent(key, (k) -> globals.size());
    }
    
    public int getClassIndex(String name) {
        return classIndex.computeIfAbsent(name, (n) -> classIndex.size());
    }
    
    public void generate() {
        classList = sortClasses();
        out = new SourceWriter();
        
        for(Clazz cls : classList) {
            for(Method m : cls.methods) {
                if(m.usedInProject && !m.isAbstract() && !m.isNative())
                    generateMethod(m);
            }
        }
        
        System.out.println(out);
    }
    
    public void generateMethod(Method m) {
       
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
    
}
