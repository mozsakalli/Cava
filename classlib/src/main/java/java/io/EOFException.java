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
 * Signals that an end of file or end of stream has been reached unexpectedly during input.
 * This exception is mainly used by data input streams, which generally expect a binary file in a specific format, and for which an end of stream is an unusual condition. Most other input streams return a special value on end of stream.
 * Note that some input operations react to end-of-file by returning a distinguished value (such as -1) rather than by throwing an exception.
 * Since: JDK1.0, CLDC 1.0 See Also:DataInputStream, IOException
 */
public class EOFException extends java.io.IOException{
    /**
     * Constructs an EOFException with null as its error detail message.
     */
    public EOFException(){
         //TODO codavaj!!
    }

    /**
     * Constructs an EOFException with the specified detail message. The string s may later be retrieved by the
     * method of class java.lang.Throwable.
     * s - the detail message.
     */
    public EOFException(java.lang.String s){
         //TODO codavaj!!
    }

}
