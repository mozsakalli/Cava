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
import cava.platform.NativeCode;

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
    public CGRect(double x, double y, double width, double height) {
        setStruct(NativeCode.Struct("CGRectMake(%s,%s,%s,%s)", x,y,width,height));
    }

    public static double getWidth(CGRect rect) {
        return NativeCode.Double("CGRectGetWidth(%s)", rect.getStruct());
    }
    public double getWidth() { return getWidth(this); }
    
    public static double getHeight(CGRect rect) {
        return NativeCode.Double("CGRectGetHeight(%s)",  rect.getStruct());
    }
    public double getHeight() { return getHeight(this); }
    
    public double getMinX() {
        return NativeCode.Double("CGRectGetMinX(%s)", getStruct());
    }
    public double getMinY() {
        return NativeCode.Double("CGRectGetMinY(%s)", getStruct());
    }
    @Override
    public String toString() {
        return getOrigin()+" "+getSize();
    }
    
    
}
