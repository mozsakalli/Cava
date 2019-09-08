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

import java.io.InputStream;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/**
 *
 * @author mustafa
 */
public class JarClassSource implements ClassSource {
    
    JarFile file;
    JarEntry entry;
    
    public JarClassSource(JarFile file, JarEntry entry) throws Exception {
        this.entry = entry;
        this.file = file;
    }

    @Override
    public long lastModified() {
        return entry.getTime();
    }

    @Override
    public byte[] read() throws Exception {
        try (InputStream in = file.getInputStream(entry)) {
            byte[] bytes = new byte[(int)entry.getSize()];
            int ptr = 0;
            while(ptr < bytes.length) {
                ptr += in.read(bytes, ptr, bytes.length - ptr);
            }
            return bytes;
        }
    }
}
