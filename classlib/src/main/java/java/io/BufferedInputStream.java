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
public class BufferedInputStream extends InputStream {

    private final InputStream in;
    private final byte[] buffer;
    private int position;
    private int limit;

    public BufferedInputStream(InputStream in, int size) {
        this.in = in;
        this.buffer = new byte[size];
    }

    public BufferedInputStream(InputStream in) {
        this(in, 4096);
    }

    private int fill() throws IOException {
        position = 0;
        limit = in.read(buffer);

        return limit;
    }

    public int read() throws IOException {
        if (position >= limit && fill() == -1) {
            return -1;
        }

        return buffer[position++] & 0xFF;
    }

    public int read(byte[] b, int offset, int length) throws IOException {
        int count = 0;
        if (position >= limit && fill() == -1) {
            return -1;
        }
        if (position < limit) {
            int remaining = limit - position;
            if (remaining > length) {
                remaining = length;
            }

            System.arraycopy(buffer, position, b, offset, remaining);

            count += remaining;
            position += remaining;
            offset += remaining;
            length -= remaining;
        }
        while (length > 0 && in.available() > 0) {
            int c = in.read(b, offset, length);
            if (c == -1) {
                if (count == 0) {
                    count = -1;
                }
                break;
            } else {
                offset += c;
                count += c;
                length -= c;
            }
        }
        return count;
    }

    public int available() throws IOException {
        return in.available() + (limit - position);
    }

    public void close() throws IOException {
        in.close();
    }
}
