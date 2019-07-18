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
public class VirtualTable {
    Map<Clazz,List<VirtualMethod>> cache = new HashMap();
    
    List<VirtualMethod> build(List<Clazz> classes, Clazz c) {
        List<VirtualMethod> result = cache.get(c);
        if(result != null) return result;

        result = new ArrayList();
        if(c.superName != null) {
            Clazz spr = classes.stream().filter(cc -> cc.name.equals(c.superName)).findFirst().get();
            result.addAll(build(classes, spr));
        }
        
        for(Method m : c.methods) {
            if(!m.usedInProject || m.isStatic() || m.name.equals("<init>") || m.name.equals("<clinit>") || m.isNative()) continue;
            VirtualMethod found = null;
            for(VirtualMethod vm : result)
                if(vm.method.isOverrideWith(m)) {
                    found = vm;
                    break;
                }
            
            //methods called only by base class
            //if(!m.usedInProject && found != null && found.method.usedInProject) 
            //    m.usedInProject = true;
            
            VirtualMethod v = new VirtualMethod();
            v.method = m;
            if(found == null) {
                v.rootClass = m.declaringClass;
                v.implementCount = 1;
                result.add(v);
            } else {
                found.implementCount++;
                v.implementCount = found.implementCount;
                v.rootClass = found.rootClass;
                m.virtualBaseClass = found.rootClass;
                found.method.virtualBaseClass = found.rootClass;
                result.set(result.indexOf(found), v);
            }
        }
        
        cache.put(c, result);
        return result;
    }
    
    public void build(List<Clazz> classes) {
        classes.forEach(c -> build(classes, c));
    }
    
    public List<VirtualMethod> get(Clazz c) {
        return cache.get(c);
    }
    
    public List<Method> getVirtualMethodList(Clazz c) {
        List<VirtualMethod> list = cache.get(c);
        if(list == null || list.isEmpty()) return null;
        List<Method> result = new ArrayList();
        for(VirtualMethod m : list) {
            if(m.method.virtualBaseClass != null)
                result.add(m.method);
        }
        return result.isEmpty() ? null : result;
    }
    
}
