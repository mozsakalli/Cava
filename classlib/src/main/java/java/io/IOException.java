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
 * Signals that an I/O exception of some sort has occurred. This class is the general class of exceptions produced by failed or interrupted I/O operations.
 * Since: JDK1.0, CLDC 1.0 See Also:InputStream, OutputStream
 */
public class IOException extends java.lang.Exception{
    /**
     * Constructs an IOException with null as its error detail message.
     */
    public IOException(){
         //TODO codavaj!!
    }

    /**
     * Constructs an IOException with the specified detail message. The error message string s can later be retrieved by the
     * method of class java.lang.Throwable.
     * s - the detail message.
     */
    public IOException(java.lang.String s){
         super(s);
    }

}
