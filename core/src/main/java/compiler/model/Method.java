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

package compiler.model;

import compiler.model.ast.Block;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Method extends NameAndType implements Serializable {
    final static long serialVersionUID = 0;

    public String signature;
    public List<NameAndType> args = new ArrayList();
    public List<NameAndType> locals = new ArrayList();
    public Block body = new Block();
    public boolean hasGoto;
    public boolean hasTryCatch;
    
    public transient String virtualBaseClass;
    public transient String interfaceBaseClass;

    public transient int virtualTableIndex;
    
    //if there is only 1 method for this interface method
    public transient Method interfaceImplementor;
    public transient int interfaceTableIndex = -1;
    
    public transient int minLine;
    public transient int maxLine;

    public HashSet<String> requiredTypes = new HashSet();
    public HashSet<String> requiredMethods = new HashSet();
    
    //child classes overrides this method
    public HashSet<String> childClasses = new HashSet();
    //which class has this method overrides
    public String parentClass;
    
    public boolean isOverrideWith(Method m) {
        return m.name.equals(name) && m.signature.equals(signature);
    }
    
    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest);
        args.forEach(a -> a.replaceClassName(src, dest));
        locals.forEach(l -> l.replaceClassName(src, dest));
        if(body != null) body.replaceClassName(src, dest);
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
