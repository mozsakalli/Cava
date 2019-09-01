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

package cava.apple.uikit;

import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.apple.coregraphics.CGPoint;
import cava.apple.foundation.NSObject;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@ObjC
@Include("<UIKit/UIKit.h>")
public class UITouch extends NSObject {
    
    final static CGPoint CGPOINT = new CGPoint();
    public UITouch(VoidPtr nativePeer) { super(nativePeer); }
    public UITouch(VoidPtr nativePeer, boolean noOwner) { super(nativePeer, noOwner); }
    
    public CGPoint getLocationInWindow() {
        CGPOINT.setStruct(NativeCode.Struct("[((UITouch*)%s) locationInView:((UITouch*)%s).window]", nativePeer, nativePeer));
        return CGPOINT;
    }
    
    public UITouchPhase getPhase() {
        return UITouchPhase.valueOf(NativeCode.Long("((UITouch*)%s).phase", nativePeer));
    }
    
    public long getTimestamp() {
        return NativeCode.Long("((UITouch*)%s).timestamp", nativePeer);
    }
    
}
