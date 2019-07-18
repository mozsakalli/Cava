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
 * Abstract base class for reference objects. This class defines the operations common to all reference objects. Because reference objects are implemented in close cooperation with the garbage collector, this class may not be subclassed directly.
 * Since: JDK1.2, CLDC 1.1
 */
public abstract class Reference{
    /**
     * Clears this reference object.
     */
    public void clear(){
        clearImpl();
    }

    /**
     * Returns this reference object's referent. If this reference object has been cleared, either by the program or by the garbage collector, then this method returns null.
     */
    public java.lang.Object get(){
        return getImpl();
    }

    Object getImpl() {
        return null;
    }
    
    void clearImpl() {
    }
}
