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

package cava.apple.coreanimation;

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.apple.foundation.NSObject;
import cava.apple.foundation.NSRunLoop;
import cava.apple.foundation.NSRunLoopMode;
import cava.apple.foundation.Selector;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Framework("QuartzCore.framework")
@Include("<QuartzCore/QuartzCore.h>")
@ObjC(value="CADisplayLink", noAlloc = true)
public class CADisplayLink extends NSObject {
    
    public void setFrameInterval(int interval) {
        NativeCode.Void("[(CADisplayLink*)%s setFrameInterval:%s]", nativePeer, interval);
    }
    
    public void addToRunLoop(NSRunLoop loop, NSRunLoopMode mode) {
        NativeCode.Void("[(CADisplayLink*)%s addToRunLoop:%s forMode:%s]", nativePeer, loop.getNativePeer(), mode.value().getNativePeer());
    }

    public void removeFromRunLoop(NSRunLoop loop, NSRunLoopMode mode) {
        NativeCode.Void("[(CADisplayLink*)%s removeFromRunLoop:%s forMode:%s]", nativePeer, loop.getNativePeer(), mode.value().getNativePeer());
    }

    public void invalidate() {
        NativeCode.Void("[(CADisplayLink*)%s invalidate]", nativePeer);
    }
    
    public static CADisplayLink create(NSObject target, Selector selector) {
        CADisplayLink link = new CADisplayLink();
        link.nativePeer = NativeCode.VoidPtr("[CADisplayLink displayLinkWithTarget:%s selector:%s]", 
                target.getNativePeer(), selector.getNativePeer());
        return link;
    }
}
