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
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ITableCalculator {

    static Map<String,Integer> indexes = new HashMap();
    static Map<Clazz, Set<Clazz>> interfaceCache = new HashMap();
    
    public static String signature(Method m) {
        return m.name+":"+m.signature;
    }
    
    static Set<Clazz> getAllInterfaces(Clazz c) {
        if(c == null) {
            System.out.println("...");
        }
        Set<Clazz> cache = interfaceCache.get(c);
        if(cache != null) {
            return cache;
        }
        Set<Clazz> set = new HashSet();
        for(String iname : c.interfaces) {
            Clazz ic = CompilerContext.classes.get(iname);
            if(ic == null) {
                System.out.println("...");
            }
            while(true) {
                set.add(ic);
                if(ic.superName != null) {
                    ic = CompilerContext.classes.get(ic.superName);
                    if(!ic.isInterface) break;
                } else break;
            }
        }
        
        if(c.superName != null) 
            set.addAll(getAllInterfaces(CompilerContext.classes.get(c.superName)));
        
        interfaceCache.put(c, set);
        return set;
    }
    
    public static void calculate() {
        Map<String,Integer> hit = new HashMap();
        
        for(Clazz k : CompilerContext.classes.values()) {
            if(k.isInterface) {
                for(Method m : k.methods) {
                    if(m.usedInProject) {
                        String sign = signature(m);
                        hit.put(sign, 1);
                        //Integer h = hit.get(sign);
                        //if(h == null) hit.put(sign, 1); else hit.put(sign, h+1);
                    }
                }
            }
        }
        
        for(Clazz k : CompilerContext.classes.values()) {
            if(!k.isInterface) {
                Set<Clazz> set = getAllInterfaces(k);
                for(Clazz ik : set) {
                    for(Method m : ik.methods) {
                        String sign = signature(m);
                        Integer h = hit.get(sign);
                        if(h != null) hit.put(sign, h+1);
                    }
                }
            }
        }
        
        List<Object[]> list = new ArrayList();
        for(Map.Entry<String,Integer> e : hit.entrySet()) {
            list.add(new Object[]{e.getKey(), e.getValue()});
        }
        Collections.sort(list,new Comparator<Object[]>(){
            @Override
            public int compare(Object[] o1, Object[] o2) {
                return (Integer)o2[1] - (Integer)o1[1];
            }
        });
        
        hit.clear();
        for(int i=0; i<list.size(); i++) {
            indexes.put(list.get(i)[0].toString(), i);
        }
        
        for(Clazz k : CompilerContext.classes.values()) {
            if(!k.isInterface) {
                Set<Clazz> set = getAllInterfaces(k);
                int maxIndex = -1;
                for(Clazz ik : set) {
                    for(Method im : ik.methods) {
                        if(im.usedInProject) {
                            Method m = k.findMethod(im.name, im.signature);
                            if(m != null && m.usedInProject) {
                                m.interfaceTableIndex = indexes.get(signature(im));
                                maxIndex = Math.max(maxIndex, m.interfaceTableIndex);
                            }
                        }
                    }
                }
                k.interfaceTableSize = maxIndex+1;
            }
        }
        
    }
    
    public static int getIfaceIndex(Method m) {
        Integer v = indexes.get(signature(m));
        return v==null ? -1 : v;
    }
}