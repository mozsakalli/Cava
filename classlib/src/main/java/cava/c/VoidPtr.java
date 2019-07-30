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

import cava.annotation.Inline;
import cava.annotation.Native;
import cava.platform.NativeCode;
import java.nio.Buffer;

/**
 *
 * @author mustafa
 */
@Native("void*")
public class VoidPtr {
    /*

    public static VoidPtr from(Object o) {
        return NativeCode.VoidPtr("(void*)%s", o);
    }

    public static VoidPtr from(Object o, int byteOffset) {
        return NativeCode.VoidPtr("(void*)((char*)%s + %s)", o, byteOffset);
    }
    public static VoidPtr from(Buffer buffer) {
        return buffer.getAddress();
    }

    public static VoidPtr from(Buffer buffer, int byteOffset) {
        return NativeCode.VoidPtr("(void*)((char*)%s + %s)", buffer.getAddress(), byteOffset);
    }
    */
    @Inline  public static VoidPtr fromObject(Object object) {
        return NativeCode.VoidPtr("%s", object);
    }
    @Inline public static VoidPtr fromAnyArray(Object array) {
        return NativeCode.VoidPtr("(void*)JvmArrayData(%s)", array);
    }
    @Inline public  static VoidPtr fromBuffer(Buffer buffer) {
        return  NativeCode.VoidPtr("%s", buffer.getAddress());
    }
    
    @Inline  public long toLong() {
        return NativeCode.Long("(jlong)%s", this);
    }
    
    @Inline  public Object toObject() {
        return NativeCode.Object("%s", this);
    }
    
}
