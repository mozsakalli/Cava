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

import com.strobel.assembler.metadata.Buffer;
import com.strobel.assembler.metadata.ITypeLoader;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Mustafa Özsakallı @digitoygames
 */
public class ClasspathTypeLoader implements ITypeLoader {

    Map<String, byte[]> classes = new HashMap();
    ClassFileFinder finder;
    
    ClasspathTypeLoader(ClassFileFinder finder) {
        this.finder = finder;
    }
    @Override
    public boolean tryLoadType(String internalName, Buffer buffer) {
        String name = internalName;//internalName.concat(".class");
        byte[] array = classes.get(name);
        if(array == null) try {
            ClassSource file = finder.findClass(name);
            if(file != null) 
                classes.put(name, array = file.read());
        } catch(Exception e) {
            throw new RuntimeException(e);
        }
        
        if(array != null) {
            buffer.reset(array.length);
            System.arraycopy(array, 0, buffer.array(), 0, array.length);
            return true;
        }
        
        throw new RuntimeException("Cant find class "+internalName);
    }

}