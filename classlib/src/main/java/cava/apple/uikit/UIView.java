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
import cava.apple.coreanimation.CALayer;
import cava.apple.coregraphics.CGRect;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<UIKit/UIKit.h> <Foundation/Foundation.h>")
@ObjC
public class UIView extends UIResponder {

    public <T extends UIView> T initWithFrame(CGRect frame) {
        nativePeer = NativeCode.VoidPtr("[(UIView*)%s initWithFrame:%s]", nativePeer, frame.getStruct());
        return (T)this;
    }
    
    public <T> T getLayer(Class<? extends CALayer> layerClass) {
        CALayer layer = (CALayer)layerClass.newInstance();
        layer.setNoOwner(true);
        layer.setNativePeer(NativeCode.VoidPtr("((UIView*)%s).layer", getNativePeer()));
        return (T)layer;
    }
    
    @ObjC("layoutSubviews")
    public native void layoutSubviews();
}
