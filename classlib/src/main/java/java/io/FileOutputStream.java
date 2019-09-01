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

/**
 *
 * @author mustafa
 */
public class FileOutputStream extends OutputStream {
    //   static {
    //     System.loadLibrary("natives");
    //   }

    private int fd;

    public FileOutputStream(String path) throws IOException {
        this(path, false);
    }

    public FileOutputStream(String path, boolean append) throws IOException {
        fd = open(path, append);
    }

    public FileOutputStream(File file) throws IOException {
        this(file.getPath());
    }

    private static native int open(String path, boolean append) throws IOException;

    private static native void write(int fd, int c) throws IOException;

    private static native void write(int fd, byte[] b, int offset, int length)
            throws IOException;

    private static native void close(int fd) throws IOException;

    public void write(int c) throws IOException {
        write(fd, c);
    }

    public void write(byte[] b, int offset, int length) throws IOException {
        if (b == null) {
            throw new NullPointerException();
        }

        if (offset < 0 || offset + length > b.length) {
            throw new ArrayIndexOutOfBoundsException();
        }

        write(fd, b, offset, length);
    }

    public void close() throws IOException {
        if (fd != -1) {
            close(fd);
            fd = -1;
        }
    }
}
