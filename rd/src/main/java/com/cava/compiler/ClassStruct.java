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
import com.cava.compiler.model.NameAndType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class ClassStruct {
    
    public static ClassStruct get(Clazz cls) {
        return null;
    }
    
    Map<String, Integer> offsets = new HashMap();
    
    ClassStruct(Clazz cls) {
        List<NameAndType> fields = new ArrayList();
    }
    
    void getInstanceFields(Clazz cls, List<NameAndType> fields) {
        if(cls.superName != null)
            getInstanceFields(CompilerContext.resolve(cls.superName), fields);
        int offset = 0;
        for(NameAndType f : cls.fields) {
            if(!f.isStatic() && f.usedInProject) {
                offsets.put(f.declaringClass+":"+f.name, offset);
            }
        }
    }
    
}
