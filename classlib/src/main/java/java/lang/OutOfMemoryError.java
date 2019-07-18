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
 * Thrown when the Java Virtual Machine cannot allocate an object because it is out of memory, and no more memory could be made available by the garbage collector.
 * Since: JDK1.0, CLDC 1.0
 */
public class OutOfMemoryError extends java.lang.VirtualMachineError{
    /**
     * Constructs an OutOfMemoryError with no detail message.
     */
    public OutOfMemoryError(){
    }

    /**
     * Constructs an OutOfMemoryError with the specified detail message.
     * s - the detail message.
     */
    public OutOfMemoryError(java.lang.String s){
        super(s);
    }

}
