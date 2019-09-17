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
package com.cava.graphics.app;

import cava.annotation.Keep;
import cava.annotation.ObjC;
import cava.apple.coreanimation.CADisplayLink;
import cava.apple.coreanimation.CAEAGLLayer;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSDictionary;
import cava.apple.foundation.NSMutableDictionary;
import cava.apple.foundation.NSNumber;
import cava.apple.foundation.NSObject;
import cava.apple.foundation.NSRunLoop;
import cava.apple.foundation.NSRunLoopMode;
import cava.apple.foundation.Selector;
import cava.apple.opengles.EAGLColorFormat;
import cava.apple.opengles.EAGLContext;
import cava.apple.opengles.EAGLDrawableProperty;
import cava.apple.opengles.EAGLRenderingAPI;
import cava.apple.uikit.UIApplication;
import cava.apple.uikit.UIApplicationDelegateAdapter;
import cava.apple.uikit.UIScreen;
import cava.apple.uikit.UIView;
import cava.apple.uikit.UIViewController;
import cava.apple.uikit.UIWindow;
import com.cava.graphics.Graphics;
import com.cava.graphics.opengl.GL;
import com.cava.graphics.opengl.OpenGLGraphics;

/**
 *
 * @author mustafa
 */
public class IOSApplication implements Application {

    @Keep
    static class IOSOpenGLView extends UIView {

        EAGLContext context;
        int _framebuffer, _colorbuffer, _depthbuffer;
        int screenWidth, screenHeight;
        CADisplayLink displayLink;

        public IOSOpenGLView(CGRect bounds) {
            initWithFrame(bounds);
            CAEAGLLayer layer = getLayer(CAEAGLLayer.class);
            layer.setOpaque(true);
            NSMutableDictionary props = new NSMutableDictionary();
            props.setObject(EAGLDrawableProperty.RetainedBacking.value(), NSNumber.valueOf(false));
            props.setObject(EAGLDrawableProperty.ColorFormat.value(), EAGLColorFormat.RGBA8.value());
            layer.setDrawableProperties(props);
            context = new EAGLContext().initWithAPI(EAGLRenderingAPI.OpenGLES2);
        }

        public void makeCurrent() {
            EAGLContext.setCurrentContext(context);
        }

        @ObjC("layerClass")
        public final static Class getLayerClass() {
            return NSObject.getObjCClass(CAEAGLLayer.class);
        }

        @Override
        public void layoutSubviews() {
            if (_framebuffer == 0) {
                createFramebuffer();
            }
        }

        void createFramebuffer() {
            makeCurrent();
            double scaleFactor = 1;
            if (this.respondsToSelector(Selector.fromString("contentsScaleFactor"))) {
                scaleFactor = this.getContentScaleFactor();
            }

            CAEAGLLayer layer = getLayer(CAEAGLLayer.class);

            CGRect bounds = getBounds();
            screenHeight = (int) Math.round(bounds.getHeight() * scaleFactor);
            screenWidth = (int) Math.round(bounds.getWidth() * scaleFactor);

            _framebuffer = GL.glGenFramebuffer();
            GL.glBindFramebuffer(GL.GL_FRAMEBUFFER, _framebuffer);

            // Create our Depth buffer. Color buffer must be the last one bound
            _depthbuffer = GL.glGenRenderbuffer();
            GL.glBindRenderbuffer(GL.GL_RENDERBUFFER, _depthbuffer);
            int Depth24Stencil8Oes = 35056;
            GL.glRenderbufferStorage(GL.GL_RENDERBUFFER, Depth24Stencil8Oes, screenWidth, screenHeight);
            GL.glFramebufferRenderbuffer(GL.GL_FRAMEBUFFER, GL.GL_DEPTH_ATTACHMENT, GL.GL_RENDERBUFFER, _depthbuffer);
            GL.glFramebufferRenderbuffer(GL.GL_FRAMEBUFFER, GL.GL_STENCIL_ATTACHMENT, GL.GL_RENDERBUFFER, _depthbuffer);

            _colorbuffer = GL.glGenRenderbuffer();
            GL.glBindRenderbuffer(GL.GL_RENDERBUFFER, _colorbuffer);

            // TODO: EAGLContext.RenderBufferStorage returns false
            //       on all but the first call.  Nevertheless, it
            //       works.  Still, it would be nice to know why it
            //       claims to have failed.
            context.setRenderbufferStorage(GL.GL_RENDERBUFFER, getLayer(CAEAGLLayer.class));

            GL.glFramebufferRenderbuffer(GL.GL_FRAMEBUFFER, GL.GL_COLOR_ATTACHMENT0, GL.GL_RENDERBUFFER, _colorbuffer);
            int status = GL.glCheckFramebufferStatus(GL.GL_FRAMEBUFFER);

            if (status != GL.GL_FRAMEBUFFER_COMPLETE) {
                throw new RuntimeException(
                        "Framebuffer was not created correctly: " + status);
            }

            //GL.Viewport(0, 0, viewportWidth, viewportHeight);
            //GL.Scissor(0, 0, viewportWidth, viewportHeight);
            //if (Threading.BackgroundContext == null)
            //    Threading.BackgroundContext = new OpenGLES.EAGLContext(ctx.Context.API, ctx.Context.ShareGroup);
        }
        
        public void startAnimation() {
            if(displayLink == null) {
                displayLink = CADisplayLink.create(this, Selector.fromString("doTick"));
                displayLink.setFrameInterval(1);
                displayLink.addToRunLoop(NSRunLoop.getCurrent(), NSRunLoopMode.Default);
            }
        }
        
        public void stopAnimation() {
            if(displayLink != null) {
                displayLink.removeFromRunLoop(NSRunLoop.getCurrent(), NSRunLoopMode.Default);
                displayLink.invalidate();
                displayLink = null;
            }
        }
        
        void present() {
            makeCurrent();
            GL.glBindRenderbuffer(GL.GL_RENDERBUFFER, this._colorbuffer);
            //GL.InvalidateFramebuffer(FramebufferTarget.Framebuffer, 2, attachements);
            context.presentRenderbuffer(GL.GL_RENDERBUFFER);
        }
        
        @ObjC("doTick")
        void doTick() {
            GL.glClearColor(1, 1, 0, 1);
            GL.glClear(GL.GL_COLOR_BUFFER_BIT);
            present();
        }
    }

    @Keep
    static class IOSGraphicsViewController extends UIViewController {
        @Override
        public void loadView() {
            setView(new IOSOpenGLView(UIScreen.getMainScreen().getBounds()));
        }

        @Override
        public void viewDidLoad() {
            ((IOSOpenGLView)getView()).startAnimation();
        }
        
        
    }

    public static abstract class Delegate extends UIApplicationDelegateAdapter {

        public abstract IOSApplication createApplication();

        @Override
        public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions) {
            createApplication();
            return true;
        }

    }

    static IOSApplication app;

    IOSGraphicsViewController controller;
    UIWindow window;
    OpenGLGraphics graphics;
    
    public IOSApplication() {
        app = this;

        CGRect bounds = UIScreen.getMainScreen().getBounds();
        window = new UIWindow().initWithFrame(bounds);

        controller = new IOSGraphicsViewController();
        window.setRootViewController(controller);
        window.makeKeyAndVisible();
    }

    public Graphics getGraphics() {
        return null;
    }
}
