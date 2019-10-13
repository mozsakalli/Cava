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
 * Signals that a malformed UTF-8 string has been read in a data input stream or by any class that implements the data input interface. See the writeUTF method for the format in which UTF-8 strings are read and written.
 * Since: JDK1.0, CLDC 1.0 See Also:DataInput, DataInputStream.readUTF(java.io.DataInput), IOException
 */
public class UTFDataFormatException extends java.io.IOException{
    /**
     * Constructs a UTFDataFormatException with null as its error detail message.
     */
    public UTFDataFormatException(){
         //TODO codavaj!!
    }

    /**
     * Constructs a UTFDataFormatException with the specified detail message. The string s can be retrieved later by the
     * method of class java.lang.Throwable.
     * s - the detail message.
     */
    public UTFDataFormatException(java.lang.String s){
         super(s);
    }

}
