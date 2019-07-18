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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class ITable {
    
    static class Entry {
        public Method method;
        public List<Method> implementors = new ArrayList();
    }
    
    public static int calculate() {
        Map<Method, Entry> entries = new HashMap();
        for(Clazz c : CompilerContext.classes.values()) {
            c.interfaceTableSize = 0;
            if(c.isInterface) continue;
            List<Method> interfaceMethods = new ArrayList();
            for(String iName : c.interfaces) 
                interfaceMethods.addAll(CompilerContext.classes.get(iName).methods);
            for(Method m : c.methods) {
                m.interfaceTableIndex = -1;
                if(m.usedInProject && m.isPublic() && !m.isStatic() && !m.isNative() && !m.isAbstract() && !m.name.equals("<init>")) {
                    Method interfaceMethod = interfaceMethods.stream().filter((im) -> im.isOverrideWith(m)).findFirst().orElse(null);
                    if(interfaceMethod != null) {
                        //found an interface implementation
                        Entry entry = entries.computeIfAbsent(interfaceMethod, (k) -> new Entry());
                        entry.method = interfaceMethod;
                        entry.implementors.add(m);
                    }
                }
            }
        }
        
        List<Entry> list = new ArrayList();
        list.addAll(entries.values());
        list.sort((e1,e2) -> {
            int s1 = e1.implementors.size();
            int s2 = e2.implementors.size();
            if(s1 > s2) return -1;
            if(s1 < s2) return 1;
            
            return e1.method.toString().compareTo(e2.method.toString());
        });
        
        int index = 0;
        for(Entry e : list) {
            e.method.interfaceTableIndex = index++;
            
            for(Method m : e.implementors) {
                m.interfaceTableIndex = e.method.interfaceTableIndex;
                Clazz c = CompilerContext.classes.get(m.declaringClass);
                c.interfaceTableSize = Math.max(c.interfaceTableSize, e.method.interfaceTableIndex+1);
            }
        }
        
        //calculate max table size depending on parent class
        for(Clazz c : CompilerContext.classes.values()) {
            if(!c.isInterface) calculateTableSize(c);
        }
        return index;
    }
    
    static void calculateTableSize(Clazz c) {
        if(c.superName != null) {
            Clazz sc = CompilerContext.classes.get(c.superName);
            calculateTableSize(sc);
            c.interfaceTableSize = Math.max(c.interfaceTableSize, sc.interfaceTableSize);
        }
    }
}
