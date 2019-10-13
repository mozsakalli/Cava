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
 * Thrown to indicate that a thread has attempted to wait on an object's monitor or to notify other threads waiting on an object's monitor without owning the specified monitor.
 * Since: JDK1.0, CLDC 1.0 See Also:Object.notify(), Object.notifyAll(), Object.wait(), Object.wait(long), Object.wait(long, int)
 */
public class IllegalMonitorStateException extends java.lang.RuntimeException{
    /**
     * Constructs an IllegalMonitorStateException with no detail message.
     */
    public IllegalMonitorStateException(){
         
    }

    /**
     * Constructs an IllegalMonitorStateException with the specified detail message.
     * s - the detail message.
     */
    public IllegalMonitorStateException(java.lang.String s){
         super(s);
    }

}
