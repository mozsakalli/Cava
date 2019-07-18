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
 * RuntimeException is the superclass of those exceptions that can be thrown during the normal operation of the Java Virtual Machine.
 * A method is not required to declare in its throws clause any subclasses of RuntimeException that might be thrown during the execution of the method but not caught.
 * Since: JDK1.0, CLDC 1.0
 */
public class RuntimeException extends java.lang.Exception{
    /**
     * Constructs a RuntimeException with no detail message.
     */
    public RuntimeException(){
    }

    /**
     * Constructs a RuntimeException with the specified detail message.
     * s - the detail message.
     */
    public RuntimeException(java.lang.String s){
         super(s);
    }

}
