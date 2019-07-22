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

package cava.apple.coregraphics;

import cava.annotation.Framework;
import cava.annotation.Native;
import cava.c.NativeCObject;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Framework("CoreGraphics")
@Native("CGRect")
public class CGRect extends NativeCObject {
    private CGPoint origin;
    private CGPoint size;
    
    public CGRect() { this(NativeCode.VoidPtr("new CGPoint()"), false); }
    public CGRect(VoidPtr $handle) { this($handle, false); }
    public CGRect(VoidPtr $handle, boolean $sub) { this.$handle = $handle; }
}
