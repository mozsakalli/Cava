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

package java.lang;
/**
 * Thrown to indicate that an array has been accessed with an illegal index. The index is either negative or greater than or equal to the size of the array.
 * Since: JDK1.0, CLDC 1.0
 */
public class ArrayIndexOutOfBoundsException extends java.lang.IndexOutOfBoundsException{
    /**
     * Constructs an ArrayIndexOutOfBoundsException with no detail message.
     */
    public ArrayIndexOutOfBoundsException(){
    }

    /**
     * Constructs a new ArrayIndexOutOfBoundsException class with an argument indicating the illegal index.
     * index - the illegal index.
     */
    public ArrayIndexOutOfBoundsException(int index){
         super(String.valueOf(index));
    }

    /**
     * Constructs an ArrayIndexOutOfBoundsException class with the specified detail message.
     * s - the detail message.
     */
    public ArrayIndexOutOfBoundsException(java.lang.String s){
         super(s);
    }

}
