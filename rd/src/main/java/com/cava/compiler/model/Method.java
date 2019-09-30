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

package com.cava.compiler.model;

import com.cava.compiler.code.Code;
import com.cava.compiler.code.Var;
import com.cava.compiler.code.Visitor;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class Method extends NameAndType implements Serializable {
    final static long serialVersionUID = 0;

    public String signature;
    public List<Var> args = new ArrayList();
    public List<Var> locals = new ArrayList();
    //public Block body = new Block();
    public boolean hasGoto;
    
    public transient String virtualBaseClass;
    public transient String interfaceBaseClass;

    public transient int virtualTableIndex;
    
    //if there is only 1 method for this interface method
    public transient Method interfaceImplementor;
    public transient int interfaceTableIndex = -1;
    
    public int minLine;
    public int maxLine;

    public transient boolean isObjCImplementation;
    
    public List<Code> body = new ArrayList();
    public List<TrapInfo> traps = new ArrayList();
    public List<DebugVariableInfo> debugVariables = new ArrayList();
    
    public Set<Integer> labels = new HashSet();
    
    public boolean isOverrideWith(Method m) {
        return m.name.equals(name) && m.signature.equals(signature);
    }

    public void visit(Visitor visitor) {
        for(Code code : body)
            code.visit(visitor);
    }
    @Override
    public int hashCode() {
        return (name+type+modifiers+declaringClass+value+isParameter+signature).hashCode();
    }

    @Override
    public boolean equals(Object o) {
        if(o == null || !(o instanceof Method)) return false;
        return hashCode() == o.hashCode();
    }

    @Override
    public String toString() {
        return declaringClass+":"+name+":"+signature;
    }

    public boolean isObjC() {
        return annotations.containsKey("cava/annotation/ObjC");
    }
    
    public void addDependency(String type) {
        //if(!type.equals(declaringClass) && !DecompilerUtils.isPrimitive(type))
        //    depends.add(type);
    }
}
