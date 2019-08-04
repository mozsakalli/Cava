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

package com.cava.bgfx;

import cava.c.CLib;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
public class BGFX {
    
    static VoidPtr INIT_T;
    
    public final static void init() {
        INIT_T = CLib.malloc(NativeCode.Int("sizeof(bgfx_init_t)"));
        NativeCode.Void("bgfx_init_ctor((bgfx_init_t*)%s)", INIT_T);
        NativeCode.Void("bgfx_init((bgfx_init_t*)%s);", INIT_T);
    }
    
    public final static void setDebug(boolean debug) {
        NativeCode.Void("bgfx_set_debug(%s)", debug);
    }
}
