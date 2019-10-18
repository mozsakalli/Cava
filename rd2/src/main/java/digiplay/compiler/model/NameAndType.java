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

package digiplay.compiler.model;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class NameAndType implements Serializable {
    final static long serialVersionUID = 0;
    
    public String name;
    public String type;
    public int modifiers;
    public String declaringClass;
    public Object value;
    public boolean isParameter;
    public transient int index;
    
    public transient boolean usedInProject;
    
    public Map<String, Map<String,Object>> annotations = new HashMap();
    
    public NameAndType(){}
    /*
    public NameAndType(ParameterDefinition p) {
        name = p.getName();
        type = DecompilerUtils.getTypeName(p.getParameterType());
        isParameter = true;
    }
    public NameAndType(FieldDefinition f) {
        name = f.getName();
        type = DecompilerUtils.getTypeName(f.getFieldType());
        modifiers = f.getModifiers();
        value = f.getConstantValue();
    }
    public NameAndType(Variable v) {
        name = v.getName();
        type = DecompilerUtils.getTypeName(v.getType());
    }*/
    public NameAndType(String name, String type, boolean isParameter) {
        this.name = name;
        this.type = type;
        this.isParameter = isParameter;
    }
    
    public void replaceClassName(String src, String dest) {
        if(type != null && type.equals(src)) type = dest;
        if(declaringClass != null && declaringClass.equals(src)) declaringClass = dest;
    }
    
    public boolean isStatic() {
        return Modifier.isStatic(modifiers);
    }
    
    public boolean isNative() {
        return Modifier.isNative(modifiers);
    }
    
    public boolean isAbstract() {
        return Modifier.isAbstract(modifiers);
    }
    
    public boolean isPublic() {
        return Modifier.isPublic(modifiers);
    }
    
    @Override
    public int hashCode() {
        return (name+type+modifiers+declaringClass+value+isParameter).hashCode();
    }

    @Override
    public boolean equals(Object o) {
        if(o == null || !(o instanceof NameAndType)) return false;
        return hashCode() == o.hashCode();
    }    
    
    public boolean hasAnnnotation(String name) {
        return annotations != null && annotations.containsKey(name);
    }
    
    public String annotation(String name, String key) {
        if(annotations != null) {
            Map<String,Object> keyval = annotations.get(name);
            if(keyval != null) {
                Object val = keyval.get(key);
                if(val != null) return val.toString();
            }
        }
        return "";
    }
    
    public boolean boolAnnotation(String name, String key) {
        return annotation(name, key).equals("true");
    }
}
