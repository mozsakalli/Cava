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

package java.lang.reflect;

import cava.annotation.Keep;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Keep
public class Method {
    public Class declaringClass;
    public String name;
    public Class type;
    public int modifiers;
    public Class[] parameters;
    public VoidPtr methodAddress;
    public VoidPtr dynamicWrapper;
    
    public String getName() {
        return name;
    }
    
    public int getModifiers() {
        return modifiers;
    }
    
    public int getParameterCount() {
        return parameters != null ? parameters.length : 0;
    }
    
    public Class getReturnType() {
        return type;
    }
    
    public Class[] getParameterTypes() {
        return parameters;
    }
    
    public Object invoke(Object base, Object...params) {
        return NativeCode.Object("((JvmMethod*)%s)->invoke(%s,%s,%s)", this, this, base, params);
    }
    
    public Class getDeclaringClass() {
        return declaringClass;
    }
}
