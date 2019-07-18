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
import compiler.model.Clazz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class InstanceOfBuilder {
    
    
    static void assignable(Clazz klass, Clazz parent, Map<Clazz,Set<Clazz>> assignables) {
        Set<Clazz> set = assignables.computeIfAbsent(parent, (k) -> new HashSet());
        set.add(klass);
    }

    static void assignable(Clazz klass, String parentName, Map<Clazz,Set<Clazz>> assignables) {
        Clazz parent = CompilerContext.classes.get(parentName);
        Set<Clazz> set = assignables.computeIfAbsent(parent, (k) -> new HashSet());
        set.add(klass);
    }
   
    static void build0(Clazz c, Map<Clazz,Set<Clazz>> assignables) {
        //assignable self
        assignable(c, c, assignables);
        if(c.superName != null) {
            Clazz sc = CompilerContext.classes.get(c.superName);
            assignable(c, sc, assignables);
        }
        for(String iname : c.interfaces) {
            Clazz ic = CompilerContext.classes.get(iname);
            assignable(c, ic, assignables);
        }
    }
    
    public static Map<Clazz,Set<Clazz>> build() {
        Map<Clazz,Set<Clazz>> assignables = new HashMap();
        for(Clazz c : CompilerContext.classes.values()) {
            if(!DecompilerUtils.isArray(c.name)) 
                build0(c, assignables);
        }
        return assignables;
    }
   
}
