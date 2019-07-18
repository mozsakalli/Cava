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

package compiler;

import java.io.File;
import java.io.FileInputStream;

/**
 *
 * @author mustafa
 */
public class FileClassSource implements ClassSource {

    File file;
    
    @Override
    public long lastModified() {
        return file.lastModified();
    }

    @Override
    public byte[] read() throws Exception {
        int len = (int)file.length();
        byte[] bytes = new byte[len];
        new FileInputStream(file).read(bytes);
        return bytes;
    }
    
}
