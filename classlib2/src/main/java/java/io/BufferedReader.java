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
public class BufferedReader extends Reader {

    private final Reader in;
    private final char[] buffer;
    private int position;
    private int limit;

    public BufferedReader(Reader in, int bufferSize) {
        this.in = in;
        this.buffer = new char[bufferSize];
    }

    public BufferedReader(Reader in) {
        this(in, 32);
    }

    private void fill() throws IOException {
        position = 0;
        limit = in.read(buffer);
    }

    public String readLine() throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (position >= limit) {
                fill();
            }

            if (position >= limit) {
                return sb.length() == 0 ? null : sb.toString();
            }

            for (int i = position; i < limit; ++i) {
                if (buffer[i] == '\r') {
                    sb.append(buffer, position, i - position);
                    position = i + 1;
                    if (i + 1 < limit && buffer[i + 1] == '\n') {
                        position = i + 2;
                    }
                    return sb.toString();
                } else if (buffer[i] == '\n') {
                    sb.append(buffer, position, i - position);
                    position = i + 1;
                    return sb.toString();
                }
            }
            sb.append(buffer, position, limit - position);
            position = limit;
        }
    }

    public int read(char[] b, int offset, int length) throws IOException {
        int count = 0;

        if (position >= limit && length < buffer.length) {
            fill();
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

        if (length > 0) {
            int c = in.read(b, offset, length);
            if (c == -1) {
                if (count == 0) {
                    count = -1;
                }
            } else {
                count += c;
            }
        }

        return count;
    }

    public void close() throws IOException {
        in.close();
    }
}
