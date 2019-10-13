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
public class StringReader extends Reader {

    private final String in;
    private int position = 0;

    public StringReader(String in) {
        this.in = in;
    }

    public int read(char[] b, int offset, int length) throws IOException {
        if (length > in.length() - position) {
            length = in.length() - position;
            if (length <= 0) {
                return -1;
            }
        }
        in.getChars(position, position + length, b, offset);
        position += length;
        return length;
    }

    public void close() throws IOException {
    }
}
