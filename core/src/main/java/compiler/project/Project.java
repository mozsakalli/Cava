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

package compiler.project;

import compiler.util.FileUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.util.jar.JarInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/**
 *
 * @author mustafa
 */
public abstract class Project {
    
    public abstract void generate() throws Exception;
    
    void copyCavaFiles(File target) throws Exception {
        FileUtil.extractZip(target, getClass().getResourceAsStream("/com/cava/native.zip"));
        /*
        File root = target;
        if(!root.exists()) {
            ZipInputStream zip = new JarInputStream(getClass().getResourceAsStream("/com/cava/native.zip"));
            ZipEntry entry = zip.getNextEntry();
            byte[] buffer = new byte[8192];
            while(entry != null) {
                if(!entry.isDirectory()) {
                    File dest = new File(root, entry.getName());
                    dest.getParentFile().mkdirs();
                    FileOutputStream out = new FileOutputStream(dest);
                    int len = (int)entry.getSize();
                    int ptr = 0;
                    while(ptr < len) {
                        int readed = zip.read(buffer, 0, Math.min(len - ptr, buffer.length));
                        out.write(buffer, 0, readed);
                        ptr += readed;
                    }
                    out.close();
                }
                entry = zip.getNextEntry();
            }
        }*/
    }    
}
