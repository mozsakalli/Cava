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

package cava.apple.foundation;

import cava.annotation.ObjC;
import cava.c.VoidPtr;
import cava.c.WCharPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@ObjC
public final class NSString extends NSObject {
    
    public NSString(VoidPtr handle) {
        super(handle);
    }
    public NSString(String string) {
        $handle = NativeCode.VoidPtr("[NSString alloc]");
        initWithCharacters(WCharPtr.from(string), string.length());
    }
    
    public final NSString initWithCharacters(WCharPtr chars, int length) {
        NativeCode.Void("%s=(void*)[(NSString*)%s initWithCharacters:(unichar*)%s length:%s]", $handle, $handle, chars, length);
        return this;
    }

    
}
