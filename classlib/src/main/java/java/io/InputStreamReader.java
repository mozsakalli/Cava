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
 * An InputStreamReader is a bridge from byte streams to character streams: It reads bytes and translates them into characters. The encoding that it uses may be specified by name, or the platform's default encoding may be accepted.
 * Each invocation of one of an InputStreamReader's read() methods may cause one or more bytes to be read from the underlying byte input stream. To enable the efficient conversion of bytes to characters, more bytes may be read ahead from the underlying stream than are necessary to satisfy the current read operation.
 * Since: CLDC 1.0 See Also:Reader, UnsupportedEncodingException
 */
public class InputStreamReader extends java.io.Reader{
    private InputStream internal; 
    private java.lang.String enc;
    private char[] cbuffer;
    private int cbufferOff;
    
    /**
     * Create an InputStreamReader that uses the default character encoding.
     * is - An InputStream
     */
    public InputStreamReader(java.io.InputStream is) {
         internal = is;
         this.enc = "UTF-8";
    }

    private void complete() throws IOException{
        byte[] b = readInputStream(internal);
        cbuffer = bytesToChars(b, 0, b.length, enc);
    }

    private static byte[] readInputStream(InputStream i) throws IOException {
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        copy(i, b, 8192);
        return b.toByteArray();
    }
    
    
    private static void copy(InputStream i, OutputStream o, int bufferSize) throws IOException {
        byte[] buffer = new byte[bufferSize];
        int size = i.read(buffer);
        while(size > -1) {
            o.write(buffer, 0, size);
            size = i.read(buffer);
        }
        o.close();
    }
    
    /**
     * Create an InputStreamReader that uses the named character encoding.
     * is - An InputStreamenc - The name of a supported character encoding
     * - If the named encoding is not supported
     */
    public InputStreamReader(java.io.InputStream is, java.lang.String enc) throws java.io.UnsupportedEncodingException{
         internal = is;
         this.enc = enc.intern();
    }

    private static native char[] bytesToChars(byte[] b, int off, int len, String encoding); 

    /**
     * Close the stream. Closing a previously closed stream has no effect.
     */
    public void close() throws java.io.IOException{
        internal.close();
        cbufferOff = -1;
    }

    /**
     * Mark the present position in the stream.
     */
    public void mark(int readAheadLimit) throws java.io.IOException{
    }

    /**
     * Tell whether this stream supports the mark() operation.
     */
    public boolean markSupported(){
        return false; 
    }

    /**
     * Read a single character.
     */
    char[] c;
    public int read() throws java.io.IOException{
        if(c == null) {
            c = new char[1];
        }
        int count = read(c, 0, 1);
        if(count < 0) {
            return -1;
        }
        return c[0]; 
    }

    /**
     * Read characters into a portion of an array.
     */
    public int read(char[] cbuf, int off, int len) throws java.io.IOException{
        if(cbuffer == null) {
            complete();
            cbufferOff = 0;
        }
        if(cbufferOff == cbuffer.length) {
            return -1;
        }
        int count = 0;
        while(cbufferOff < cbuffer.length && len > count) {
            cbuf[off] = cbuffer[cbufferOff];
            count++;
            off++;
            cbufferOff++;
        }
        if(count == len) {
            return count;
        }
        return count; 
    }

    /**
     * Tell whether this stream is ready to be read.
     */
    public boolean ready() throws java.io.IOException{
        return true;
    }

    /**
     * Reset the stream.
     */
    public void reset() throws java.io.IOException{
    }

    /**
     * Skip characters.
     */
    public long skip(long n) throws java.io.IOException{
        return internal.skip(n);
    }

}
