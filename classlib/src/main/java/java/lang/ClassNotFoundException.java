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
 * Thrown when an application tries to load in a class through its string name using the forName method in class Class but no definition for the class with the specified name could be found.
 * Since: JDK1.0, CLDC 1.0 See Also:Class.forName(java.lang.String)
 */
public class ClassNotFoundException extends java.lang.RuntimeException{
    /**
     * Constructs a ClassNotFoundException with no detail message.
     */
    public ClassNotFoundException(){
    }

    /**
     * Constructs a ClassNotFoundException with the specified detail message.
     * s - the detail message.
     */
    public ClassNotFoundException(java.lang.String s){
         super(s);
    }

}
