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

import cava.VM;
import cava.annotation.Keep;
import java.lang.reflect.Array;

@Keep
public class Object{
    
    public Class klass;
    
    public Object(){
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public final Class getClass() {
        return klass;
    }

    public int hashCode() {
        return  VM.hashCode(this);
    }

    public final void notify() {}

    public final void notifyAll() {}

    public String toString() {
        return getClass().getName()+"#"+hashCode();
    }

    public final void wait() throws java.lang.InterruptedException{
        wait(0);
    }

    
    public final void wait(long timeout) throws java.lang.InterruptedException{
        wait(timeout, 0);
    }

    public final void wait(long timeout, int nanos) throws java.lang.InterruptedException {}

    protected Object clone() throws CloneNotSupportedException {
        
        if(getClass().isArray()) {
            int len = VM.getArrayLength(this);
            Object result = Array.newInstance(getClass().getComponentType(), len);
            System.arraycopy(this, 0, result, 0, len);
            return result;
        } else {
            Object result = VM.allocObject(getClass());
            VM.memmoveObject(result, this);
            return result;
            //Object result = NativeCode.Object("JvmAllocObject(%s)", getClass());
            //CLib.memmove(result, 0, this, 0, getClass().size);
            //CLib.memcpy(result, this, getClass().size);
            //return result;
        }
    }
    
    protected void finalize() throws Throwable {}
    
}
