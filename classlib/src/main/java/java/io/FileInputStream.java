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
package java.io;

import cava.c.CharPtr;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
public class FileInputStream extends InputStream {

    private VoidPtr fd;
    private int remaining;

    public FileInputStream(String path) throws IOException {
        NativeCode.Void("char buf[513];");
        CharPtr ascii = CharPtr.asciiZ(path, NativeCode.VoidPtr("&buf"), 512);
        fd = NativeCode.VoidPtr("fopen(%s,\"rb\")", ascii);
        if(fd == null) throw new FileNotFoundException(path);
        remaining = (int)File.length(ascii);
    }

    public FileInputStream(File file) throws IOException {
        this(file.getPath());
    }
    
    @Override
    public int available() throws IOException {
        return remaining;
    }

    @Override
    public int read() throws IOException {
        if(fd == null) throw new IOException("File not opened");
        byte result = 0;
        int readed = NativeCode.Int("fread(&%s,1,1,(FILE*)%s)", result, fd);
        if(readed < 0) throw new EOFException();
        if (remaining > 0) {
            --remaining;
        }
        return readed == 0 ? -1 : result&0xff;
    }

    @Override
    public int read(byte[] b, int offset, int length) throws IOException {
        if(fd == null) throw new IOException("File not opened");
        if (b == null) {
            throw new NullPointerException();
        }

        if (offset < 0 || offset + length > b.length) {
            throw new ArrayIndexOutOfBoundsException();
        }

        int readed = NativeCode.Int("fread(((char*)JvmArrayData(%s))+%s,1,%s,(FILE*)%s)", b, offset, length, fd);
        if(readed < 0) throw new EOFException();
        if (remaining > 0) {
            remaining -= readed;
        }
        return readed == 0 ? -1 : readed;
    }

    @Override
    public void close() throws IOException {
        if(fd != null) {
            NativeCode.Void("fclose((FILE*)%s)", fd);
            fd = null;
        }
    }
}
