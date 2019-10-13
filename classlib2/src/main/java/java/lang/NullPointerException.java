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
 * Thrown when an application attempts to use null in a case where an object is required. These include: Calling the instance method of a null object. Accessing or modifying the field of a null object. Taking the length of null as if it were an array. Accessing or modifying the slots of null as if it were an array. Throwing null as if it were a Throwable value.
 * Applications should throw instances of this class to indicate other illegal uses of the null object.
 * Since: JDK1.0, CLDC 1.0
 */
public class NullPointerException extends java.lang.RuntimeException{
    /**
     * Constructs a NullPointerException with no detail message.
     */
    public NullPointerException(){
    }

    /**
     * Constructs a NullPointerException with the specified detail message.
     * s - the detail message.
     */
    public NullPointerException(java.lang.String s){
         super(s);
    }

}
