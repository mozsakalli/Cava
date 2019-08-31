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

package cava.apple.opengles;

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.apple.foundation.NSObject;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<OpenGLES/EAGL.h>")
@Framework("OpenGLES.framework")
@ObjC(noInit = true)
public class EAGLContext extends NSObject {
    
    public EAGLContext initWithAPI(EAGLRenderingAPI api) {
        nativePeer = NativeCode.VoidPtr("[(EAGLContext*)%s initWithAPI:%s]", nativePeer, api.value());
        return this;
    }
    
    public boolean setRenderbufferStorage(int target, EAGLDrawable drawable) {
        return NativeCode.Bool("[(EAGLContext*)%s renderbufferStorage:(NSUInteger)%s fromDrawable:%s]", 
                nativePeer, target, ((NSObject)drawable).getNativePeer());
    }
    public static void setCurrentContext(EAGLContext context) {
        NativeCode.Void("[EAGLContext setCurrentContext:%s]", context.getNativePeer());
    }
}
