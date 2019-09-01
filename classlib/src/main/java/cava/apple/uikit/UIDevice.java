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
import cava.apple.foundation.NSObject;
import cava.apple.foundation.NSString;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<UIKit/UIKit.h>")
@ObjC
public class UIDevice extends NSObject {
    
    UIDevice(VoidPtr nativePeer) { super(nativePeer, true); }
    public static UIDevice getCurrentDevice() {
        return new UIDevice(NativeCode.VoidPtr("[UIDevice currentDevice]"));
    }
    
    public String getSystemVersion() {
        return NSString.createJavaString(NativeCode.VoidPtr("((UIDevice*)%s).systemVersion", nativePeer));
    }
    
    public boolean checkSystemVersion(float version) {
        return NativeCode.Bool("[((UIDevice*)%s).systemVersion floatValue] >= %s", nativePeer, version);
    }
}
