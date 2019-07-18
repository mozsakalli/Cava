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
@Native("jchar*")
public class WCharPtr {
    
    public static WCharPtr from(Object object) {
        return NativeCode.WCharPtr("((jchar*)%s)", object);
    }
    
    public static WCharPtr from(String string) {
        return from(string.value, string.offset);
    }
    
    public static WCharPtr from(char[] chars) {
        return NativeCode.WCharPtr("(jchar*)(JvmArrayData(%s))", chars);
    }

    public static WCharPtr from(char[] chars, int index) {
        return NativeCode.WCharPtr("((jchar*)(JvmArrayData(%s))) + %s", chars, index);
    }
    
    public char get(int index) {
        return NativeCode.Char("((jchar*)%s)[%s]", this, index);
    }
    
}
