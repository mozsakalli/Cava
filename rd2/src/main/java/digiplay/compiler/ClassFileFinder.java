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

package digiplay.compiler;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/**
 *
 * @author mustafa
 */
public class ClassFileFinder {
    
    static Map<File, JarFile> openedJarFiles = new HashMap();
    static Map<String, ClassSource> resolvedClasses = new HashMap();
    
    public static ClassSource findClass(String name) throws Exception {
        name = name.replace('.', '/') + ".class";
        ClassSource resolved = resolvedClasses.get(name);
        if(resolved != null) return resolved;
        
        for(File file : CompilerContext.classPath) {
            if(!file.exists()) continue;
            if(file.isDirectory()) {
                File classFile = new File(file,name);
                if(classFile.exists()) {
                    resolved = new FileClassSource(classFile);
                    resolvedClasses.put(name, resolved);
                    return resolved;
                }
            } else if(file.getName().endsWith(".jar")) {
                JarFile jar = null;//openedJarFiles.get(file);
                if(jar == null) {
                    jar = new JarFile(file);
                    openedJarFiles.put(file, jar);
                }
                JarEntry entry = jar.getJarEntry(name);
                if(entry != null) {
                    resolved = new JarClassSource(jar, entry);
                    resolvedClasses.put(name, resolved);
                    return resolved;
                }
            }
        }
        return null;
    }
    
    public static long getClassTime(String name) throws Exception {
        ClassSource file = findClass(name);
        return file != null ? file.lastModified() : -1;
    }
}
