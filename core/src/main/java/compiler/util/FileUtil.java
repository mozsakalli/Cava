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

package compiler.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author mustafa
 */
public class FileUtil {
    
    
    public static byte[] readFile(File path) throws Exception {
        byte[] bytes = new byte[(int)path.length()];
        new FileInputStream(path).read(bytes);
        return bytes;
    }
    
    public static void copyFile(File src, File dest) throws Exception {
        byte[] bytes = readFile(src);
        dest.getParentFile().mkdirs();
        new FileOutputStream(dest).write(bytes);
    }
    
    public static void copyFile(InputStream in, File dest) throws Exception {
        byte[] buffer = new byte[8192];
        dest.getParentFile().mkdirs();
        FileOutputStream out = new FileOutputStream(dest);
        while(true) {
            int readed = in.read(buffer);
            if(readed <= 0) break;
            out.write(buffer, 0, readed);
        }
        out.close();
    }
}
