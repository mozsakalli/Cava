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
 * Thrown to indicate that the Java Virtual Machine is broken or has run out of resources necessary for it to continue operating.
 * Since: JDK1.0, CLDC 1.0
 */
public abstract class VirtualMachineError extends java.lang.Error{
    /**
     * Constructs a VirtualMachineError with no detail message.
     */
    public VirtualMachineError(){
    }

    /**
     * Constructs a VirtualMachineError with the specified detail message.
     * s - the detail message.
     */
    public VirtualMachineError(java.lang.String s){
         super(s);
    }

}
