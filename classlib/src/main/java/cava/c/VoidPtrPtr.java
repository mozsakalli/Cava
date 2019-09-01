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

package cava.c;

import cava.annotation.Native;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Native("void**")
public class VoidPtrPtr {
   
    public static VoidPtrPtr from(Object ptr) {
        return NativeCode.VoidPtrPtr("%s", ptr);
    }
    
    public static VoidPtrPtr fromAnyArray(Object array) {
        return NativeCode.VoidPtrPtr("(void**)JvmArrayData(%s)", array);
    }
    
    public void set(int index, Object value) {
        NativeCode.Void("((void**)%s)[%s] = %s", this, index, value);
    }
    
    public Object get(int index) {
        return NativeCode.Object("((void**)%s)[%s]", this, index);
    }
}
