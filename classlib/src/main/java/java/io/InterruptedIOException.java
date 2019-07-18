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
 * Signals that an I/O operation has been interrupted. An InterruptedIOException is thrown to indicate that an input or output transfer has been terminated because the thread performing it was terminated. The field bytesTransferred indicates how many bytes were successfully transferred before the interruption occurred.
 * Since: JDK1.0, CLDC 1.0 See Also:InputStream, OutputStream
 */
public class InterruptedIOException extends java.io.IOException{
    /**
     * Reports how many bytes had been transferred as part of the I/O operation before it was interrupted.
     */
    public int bytesTransferred;

    /**
     * Constructs an InterruptedIOException with null as its error detail message.
     */
    public InterruptedIOException(){
         //TODO codavaj!!
    }

    /**
     * Constructs an InterruptedIOException with the specified detail message. The string s can be retrieved later by the
     * method of class java.lang.Throwable.
     * s - the detail message.
     */
    public InterruptedIOException(java.lang.String s){
         super(s);
    }

}
