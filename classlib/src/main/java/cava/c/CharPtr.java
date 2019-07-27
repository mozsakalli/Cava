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
@Native("char*")
public class CharPtr {
    
    public static CharPtr alloc(int size) {
        return NativeCode.CharPtr("(char*)malloc(%s*sizeof(char*))", size);
    }
    
    //Create non heap memory, developer must free
    public static CharPtr allocAsciiZ(String str) {
        CharPtr result = alloc(str.length()+1);
        for(int i=0; i<str.length(); i++)
            result.set(i, str.charAt(i));
        result.set(str.length(), 0);
        return result;
    }
    
    //Uses local char array for immediate operations
    /*
    public static CharPtr asciiZ(String str) {
        NativeCode.Void("char chars[513];");
        int len = str.length();
        if(len > 512) len = 512;
        for(int i=0; i<len; i++) {
            NativeCode.Void("chars[%s] = %s", i, str.charAt(i));
        }
        NativeCode.Void("chars[%s] = 0", len);
        return NativeCode.CharPtr("&chars");
    }
    */
    public static CharPtr asciiZ(String str, Object target, int len) {
        int strlen = str.length();
        if(strlen > len) strlen = len;
        for(int i=0; i<strlen; i++) {
            NativeCode.Void("((char*)%s)[%s] = %s", target, i, str.charAt(i));
        }
        NativeCode.Void("((char*)%s)[%s] = 0", target, len);
        return NativeCode.CharPtr("(char*)%s", target);
    }
    
    public static CharPtr from(Object object) {
        return NativeCode.CharPtr("(char*)%s", object);
    }
    
    public static CharPtr from(long object) {
        return NativeCode.CharPtr("(char*)%s", object);
    }
    
    public static CharPtr from(byte[] bytes) {
        return fromAnyArray(bytes);
    }
    
    public static CharPtr fromAnyArray(Object array) {
        return NativeCode.CharPtr("(char*)JvmArrayData(%s)", array);
    }
    
    public void set(int index, int value) {
        NativeCode.Void("((char*)%s)[%s] = (char)%s", this, index, value);
    }
    
    public byte get(int index) {
        return NativeCode.Byte("((char*)%s)[%s]", this, index);
    }
    
    public CharPtr add(int amount) {
        return NativeCode.CharPtr("(char*)%s + %s", this, amount);
    }
    
    public char[] toCharArray() {
        int len = CLib.strlen(this);
        char[] chars = new char[len];
        for(int i=0; i<len; i++) chars[i] = (char)this.get(i);
        return chars;
    }
    
    public String toJavaString() {
        return new String(toCharArray());
    }
}
