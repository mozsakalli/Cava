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

/**
 *
 * @author mustafa
 */
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * {@link OutputStream} which writes to a {@link FileOutputStream} but
 * defers opening the {@link FileOutputStream} until the first write.
 */
public class OpenOnWriteFileOutputStream extends OutputStream {
    private final File file;
    private OutputStream out;
    
    public OpenOnWriteFileOutputStream(File file) {
        this.file = file;
    }
    
    private void ensureOpen() throws IOException {
        if (out == null) {
            out = new FileOutputStream(file);
        }
    }
    
    public void close() throws IOException {
        ensureOpen();
        out.close();
    }

    public void flush() throws IOException {
        ensureOpen();
        out.flush();
    }

    public void write(int b) throws IOException {
        ensureOpen();
        out.write(b);
    }
    
    public void write(byte[] b) throws IOException {
        ensureOpen();
        out.write(b);
    }
    
    public void write(byte[] b, int off, int len) throws IOException {
        ensureOpen();
        out.write(b, off, len);
    }
}