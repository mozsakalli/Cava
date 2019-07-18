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
 * An OutputStreamWriter is a bridge from character streams to byte streams: Characters written to it are translated into bytes. The encoding that it uses may be specified by name, or the platform's default encoding may be accepted.
 * Each invocation of a write() method causes the encoding converter to be invoked on the given character(s). The resulting bytes are accumulated in a buffer before being written to the underlying output stream. The size of this buffer may be specified, but by default it is large enough for most purposes. Note that the characters passed to the write() methods are not buffered.
 * Since: CLDC 1.0 See Also:Writer, UnsupportedEncodingException
 */
public class OutputStreamWriter extends java.io.Writer{
    private OutputStream os;
    private String enc;
    
    /**
     * Create an OutputStreamWriter that uses the default character encoding.
     * os - An OutputStream
     */
    public OutputStreamWriter(java.io.OutputStream os){
         this.os = os;
         enc = "UTF-8";
    }

    /**
     * Create an OutputStreamWriter that uses the named character encoding.
     * os - An OutputStreamenc - The name of a supported
     * - If the named encoding is not supported
     */
    public OutputStreamWriter(java.io.OutputStream os, java.lang.String enc) throws java.io.UnsupportedEncodingException{
         this.os = os;
         this.enc = enc;
    }

    /**
     * Close the stream.
     */
    public void close() throws java.io.IOException{
        os.close();
    }

    /**
     * Flush the stream.
     */
    public void flush() throws java.io.IOException{
        os.flush();
    }

    /**
     * Write a portion of an array of characters.
     */
    public void write(char[] cbuf, int off, int len) throws java.io.IOException{
        write(new String(cbuf, off, len));
    }

    /**
     * Write a single character.
     */
    public void write(int c) throws java.io.IOException{
        write(new String(new char[] {(char)c}));
    }

    /**
     * Write a portion of a string.
     */
    public void write(java.lang.String str, int off, int len) throws java.io.IOException{
        if(off > 0 || len != str.length()) {
            str = str.substring(off, len);
        }
        os.write(str.getBytes(enc));
    }

}
