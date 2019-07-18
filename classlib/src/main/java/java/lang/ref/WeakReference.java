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

package java.lang.ref;
/**
 * This class provides support for weak references. Weak references are most often used to implement canonicalizing mappings. Suppose that the garbage collector determines at a certain point in time that an object is weakly reachable. At that time it will atomically clear all the weak references to that object and all weak references to any other weakly- reachable objects from which that object is reachable through a chain of strong and weak references.
 * Since: JDK1.2, CLDC 1.1
 */
public class WeakReference extends java.lang.ref.Reference{
    private Object objReference;
    
    /**
     * Creates a new weak reference that refers to the given object.
     */
    public WeakReference(java.lang.Object ref){
         this.objReference = objReference;
    }

    Object getImpl() {
        return objReference;
    }
    
    void clearImpl() {
        objReference = null;
    }
}
