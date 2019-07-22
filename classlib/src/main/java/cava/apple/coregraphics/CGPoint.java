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

import cava.c.NativeCObject;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
public class CGPoint extends NativeCObject {

    public CGPoint() { this(NativeCode.VoidPtr("new CGPoint()"), false); }
    public CGPoint(VoidPtr $handle) { this($handle, false); }
    public CGPoint(VoidPtr $handle, boolean $sub) { this.$handle = $handle; }
    
    public double getX() {
        return NativeCode.Double("((CGPoint*)%s)->x", $handle);
    }
    
    public double getY() {
        return NativeCode.Double("((CGPoint*)%s)->y", $handle);
    }
    
}
