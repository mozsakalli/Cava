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
public class BufferedOutputStream extends OutputStream {

    private final OutputStream out;
    private final byte[] buffer;
    private int position;

    public BufferedOutputStream(OutputStream out, int size) {
        this.out = out;
        this.buffer = new byte[size];
    }

    public BufferedOutputStream(OutputStream out) {
        this(out, 4096);
    }

    private void drain() throws IOException {
        if (position > 0) {
            out.write(buffer, 0, position);
            position = 0;
        }
    }

    public void write(int c) throws IOException {
        if (position >= buffer.length) {
            drain();
        }

        buffer[position++] = (byte) (c & 0xFF);
    }

    public void write(byte[] b, int offset, int length) throws IOException {
        if (length > buffer.length - position) {
            drain();
            out.write(b, offset, length);
        } else {
            System.arraycopy(b, offset, buffer, position, length);
            position += length;
        }
    }

    public void flush() throws IOException {
        drain();
        out.flush();
    }

    public void close() throws IOException {
        flush();
        out.close();
    }
}
