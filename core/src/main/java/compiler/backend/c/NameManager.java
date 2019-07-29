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

package compiler.backend.c;

import compiler.backend.INameManager;
import compiler.model.Method;
import compiler.model.NameAndType;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class NameManager implements INameManager {
    
    Map<String, String> names = new HashMap();
    Map<String, String> methodNames = new HashMap();
    Map<String, String> fieldNames = new HashMap();

    String nt(String name) {
        return name.replace('<','_')
                .replace('>','_').replace('?','_')
                .replace('-','_');
    }
    public String local(NameAndType n) {
        if(n.name.equals("this")) return "pthis";
        if(n.isParameter) return "p"+nt(n.name);
        return "l"+nt(n.name);
    }
    
    public String clazz(String name) {
        String result = names.get(name);
        if(result != null) return result;
        
        if(name.startsWith("[")) {
            return "ArrOf_"+clazz(name.substring(1));
        }
        
        return name.replace('/', '_').replace('$', '_');
        /*
        String result = names.get(name);
        if(result == null) {
            if(name.startsWith("[")) {
                return "a"+clazz(name.substring(1));
            }
            result = "";
            String[] parts = name.split("/");
            for(int i=0; i<parts.length-1; i++) result += parts[i].charAt(0);
            result += parts[parts.length-1];
            //result = name.replace('/', '_').replace('.', '_');
            names.put(name, result);
        }
        return result;*/
    }
    
    public String method(Method m) {
        return method(m, m.declaringClass);
    }
     
    public String method(Method m, String className) {
        return "m"+clazz(className)+"_"+m.name.replace('<', '_').replace('>', '_')+"_"+m.signature.
                replace('(', '_')
                .replace(';', '_').replace('[', '_')
                .replace(')', '_')
                .replace('/', '_')
                .replace('.', '_');
    }
    
    public String field(NameAndType f) {
        return "f"+clazz(f.declaringClass)+"_"+f.name;
    }
    public String literal(int index) {
        return "$literal"+index;
    }
    
    public String arg(NameAndType a) {
        return "p"+nt(a.name);
    }
}
