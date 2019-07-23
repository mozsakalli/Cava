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

import compiler.CompilerContext;
import compiler.DecompilerUtils;
import java.io.Serializable;
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

public class Clazz implements Serializable {
    final static long serialVersionUID = 0;
    
    public String name;
    public String superName;
    public String elementType;
    
    //only declared interfaces in this class
    public List<String> interfaces = new ArrayList();
    public List<NameAndType> fields = new ArrayList();
    public List<Method> methods = new ArrayList();
    public Map<String,Map<String,Object>> annotations = new HashMap();
    
    public boolean isInterface;
    public boolean isAbstract;
    public String sourceFile;
    
    //all interfaces declared or inherited (not objC or JNI)
    //public Set<String> allInterfaces = new HashSet();
    //public Set<String> allObjCInterfaces = new HashSet();
    
    //all classes implements this class
    //public Set<String> childClasses = new HashSet();
    
    //public boolean extendedFromObjC;
    //public boolean extendedFromJNI;
    
    
    public transient int interfaceTableSize = -1;
    public transient boolean isObjCImplementation;    
    
    public String getSimpleName() {
        return DecompilerUtils.simpleName(name);
    }
    
    public void replaceClassName(String target) {
        fields.forEach(f -> f.replaceClassName(name, target));
        methods.forEach(m -> m.replaceClassName(name, target));
    }
    
    public Method findDeclaredMethod(String name, String signature) {
        if(elementType != null)
            return CompilerContext.resolve("java/lang/Object").findDeclaredMethod(name, signature);
        
        for(Method m : methods)
            if(m.name.equals(name) && m.signature.equals(signature))
                return m;
        
        return null;
    }
    
    public Method findMethod(String name, String signature) {
        Method result = findDeclaredMethod(name, signature);
        if(result == null && superName != null) {
            return CompilerContext.resolve(superName).findMethod(name, signature);
        }
        return result;
    }
    
    public Method findClassInitializer() {
        return findDeclaredMethod("<clinit>", "()V");
    }
    
    public NameAndType findDeclaredField(String name) {
        for(NameAndType f : fields)
            if(f.name.equals(name))
                return f;
        return null;
    }
    
    public NameAndType findField(String name) {
        NameAndType result = findDeclaredField(name);
        if(result == null && superName != null) {
            return CompilerContext.resolve(superName).findField(name);
        }
        return result;
    }
    
    public List<NameAndType> getAllFields() {
        final List<NameAndType> result = new ArrayList();
        if(superName != null) {
            result.addAll(CompilerContext.resolve(superName).getAllFields());
        }
        result.addAll(fields);
        return result;
    }

    @Override
    public int hashCode() {
        return name.hashCode();
    }
    
    
    @Override
    public boolean equals(Object o) {
        if(o == null || !(o instanceof Clazz)) return false;
        return name.equals(((Clazz)o).name);
    }    
    
    public boolean hasAnnotation(String name) {
        return annotations.containsKey(name);
    }
    
    public boolean isObjC() {
        return hasAnnotation("cava.annotation.ObjC") || isExtendedFromObjC();
    }
    
    public boolean isExtendedFromObjC() {
        if(superName == null) return false;
        if(hasAnnotation("cava.annotation.ObjC")) return true;
        return CompilerContext.resolve(superName).isExtendedFromObjC();
    }
    
    public boolean implementsInterface(String name) {
        if(this.name.equals(name)) return true;
        for(String iName : interfaces) {
            if(iName.equals(name)) return true;
            Clazz ic = CompilerContext.resolve(iName);
            while(ic != null) {
                if(ic.name.equals(name)) return true;
                if(ic.superName == null || ic.superName.equals("java/lang/Object")) break;
                ic = CompilerContext.resolve(ic.superName);
            }
        }
        if(superName != null) return CompilerContext.resolve(superName).implementsInterface(name);
        return false;
    }
    public Set<Clazz> getAllInterfaces(Set<Clazz> list) {
        boolean addSelf = true;
        if(list == null) {
            list = new HashSet();
            addSelf = false;
        }
        
        for(String intf : interfaces) {
            Clazz ic = CompilerContext.resolve(intf);
            list.add(ic);
            ic.getAllInterfaces(list);
        }
        if(isInterface && addSelf) {
            list.add(this);
            Clazz sk = superName != null ? CompilerContext.resolve(superName) : null;
            while(sk != null && sk.isInterface) {
                list.add(sk);
                if(sk.superName == null) break;
                sk = CompilerContext.resolve(sk.superName);
            }
        }
        
        if(superName != null) {
            CompilerContext.resolve(superName).getAllInterfaces(list);
        }
        
        return list;
    }  
    
    public boolean isStruct() {
        return superName != null && superName.equals("cava/c/Struct");
    }

    @Override
    public String toString() {
        return name;
    }
    
    
}
