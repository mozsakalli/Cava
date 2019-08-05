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

package com.cava.graphics;

/**
 *
 * @author mustafa
 */
public enum BlendFunc {
    
    ZERO(0),
    ONE(1),
    SRC_COLOR(0x0300),
    ONE_MINUS_SRC_COLOR(0x0301),
    SRC_ALPHA(0x0302),
    ONE_MINUS_SRC_ALPHA(0x0303),
    DST_ALPHA(0x0304),
    ONE_MINUS_DST_ALPHA(0x0305),
    DST_COLOR(0x0306),
    ONE_MINUS_DST_COLOR(0x0307),
    SRC_ALPHA_SATURATE(0x0308);

    final int gl;
    BlendFunc(int gl) {
        this.gl = gl;
    }
    
    public int gl(){ return gl; }
}
