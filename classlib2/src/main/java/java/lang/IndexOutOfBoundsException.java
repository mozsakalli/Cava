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
 * Thrown to indicate that an index of some sort (such as to an array, to a string, or to a vector) is out of range.
 * Applications can subclass this class to indicate similar exceptions.
 * Since: JDK1.0, CLDC 1.0
 */
public class IndexOutOfBoundsException extends java.lang.RuntimeException{
    /**
     * Constructs an IndexOutOfBoundsException with no detail message.
     */
    public IndexOutOfBoundsException(){
    }

    /**
     * Constructs an IndexOutOfBoundsException with the specified detail message.
     * s - the detail message.
     */
    public IndexOutOfBoundsException(java.lang.String s){
         super(s);
    }

}
