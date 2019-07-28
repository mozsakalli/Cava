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

package cava.apple.glkit;

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSObject;
import cava.apple.opengles.EAGLContext;
import cava.apple.uikit.UIView;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<GLKit/GLKit.h>")
@Framework("GLKit.framework")
@ObjC
public class GLKView extends UIView {
    
    GLKViewDelegate delegate;
    EAGLContext context;
    
    public GLKView initWithFrame(CGRect frame) {
        return initWithFrame(frame, null);
    }
    
    public GLKView initWithFrame(CGRect frame, EAGLContext context) {
        nativePeer = NativeCode.VoidPtr("[(GLKView*)%s initWithFrame:%s context:(EAGLContext*)%s]", 
                nativePeer, frame.getStruct(), context != null ? context.getNativePeer() : null);
        this.context = context;
        return this;
    }
    /*
    public GLKView(CGRect frame) {
        this(frame, null);
    }
    
    public GLKView(CGRect frame, EAGLContext context) {
        nativePeer = NativeCode.VoidPtr("[[GLKView alloc] initWithFrame:%s context:(EAGLContext*)%s]", 
                frame.getStruct(), context != null ? context.getNativePeer() : null);
        this.context = context;
    }
    */
    public GLKViewDelegate getDelegate() {
        return delegate;
    }
    
    public void setDelegate(GLKViewDelegate delegate) {
        this.delegate = delegate;
        ((NSObject)delegate).setNoOwner(true);
        NativeCode.Void("((GLKView*)%s).delegate = %s", getNativePeer(), ((NSObject)delegate).getNativePeer());
    }

    public EAGLContext getContext() { return context; }
    public void setContext(EAGLContext context) {
        this.context = context;
        NativeCode.Void("[((GLKView*)%s) setContext:%s]", nativePeer, context.getNativePeer());
    }
    
    public void setDrawableColorFormat(GLKViewDrawableColorFormat colorFormat) {
        NativeCode.Void("((GLKView*)%s).drawableColorFormat=%s", nativePeer, colorFormat.value());
    }
    
    public void setDrawableDepthFormat(GLKViewDrawableDepthFormat depthFormat) {
        NativeCode.Void("((GLKView*)%s).drawableDepthFormat=%s", nativePeer, depthFormat.value());
    }
    
    public void setDrawableStencilFormat(GLKViewDrawableStencilFormat stencilFormat) {
        NativeCode.Void("((GLKView*)%s).drawableStencilFormat=%s", nativePeer, stencilFormat.value());
    }
    
    public void setDrawableMultisample(GLKViewDrawableMultisample multiSample) {
        NativeCode.Void("((GLKView*)%s).drawableMultisample=%s", nativePeer, multiSample.value());
    }
}
