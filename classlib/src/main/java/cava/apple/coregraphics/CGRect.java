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
import cava.annotation.Include;
import cava.annotation.Native;
import cava.c.Struct;

/**
 *
 * @author mustafa
 */
@Include("<CoreGraphics/CoreGraphics.h>")
@Framework("CoreGraphics.framework")
@Native("CGRect")
public class CGRect extends Struct<CGRect> {
    
    @Native("origin") public final native CGPoint getOrigin();
    @Native("origin") public final native void setOrigin(CGPoint value);

    @Native("size") public final native CGSize getSize();
    @Native("size") public final native void setSize(CGSize value);
    
    public final native Struct getStruct();
    public final native void setStruct(Struct value);
    
    public CGRect() {}
    public CGRect(Struct struct) {
        setStruct(struct);
    }
    public CGRect(CGPoint origin, CGSize size) {
        setOrigin(origin);
        setSize(size);
    }
    
}
