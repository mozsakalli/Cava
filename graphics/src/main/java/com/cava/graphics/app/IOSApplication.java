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
import cava.apple.coreanimation.CAEAGLLayer;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSDictionary;
import cava.apple.foundation.NSObject;
import cava.apple.opengles.EAGLContext;
import cava.apple.opengles.EAGLRenderingAPI;
import cava.apple.uikit.UIApplication;
import cava.apple.uikit.UIApplicationDelegateAdapter;
import cava.apple.uikit.UIScreen;
import cava.apple.uikit.UIView;
import cava.apple.uikit.UIViewController;
import cava.apple.uikit.UIWindow;
import com.cava.graphics.Graphics;
import com.cava.graphics.opengl.OpenGLGraphics;

/**
 *
 * @author mustafa
 */
public class IOSApplication implements Application {

    @Keep
    static class IOSGraphicsView extends UIView {

        @ObjC("layerClass")
        public final static Class getLayerClass() {
            return NSObject.getObjCClass(CAEAGLLayer.class);
        }
        
        @Override
        public void layoutSubviews() {
            System.out.println("Did-Layout");
        }

    }

    static class IOSGraphicsViewController extends UIViewController {

    }

    public static abstract class Delegate extends UIApplicationDelegateAdapter {

        public abstract IOSApplication createApplication();
        
        @Override
        public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions) {
            createApplication();            
            return true;
        }

    }

    IOSGraphicsView view;
    IOSGraphicsViewController controller;
    UIWindow window;
    OpenGLGraphics graphics;
    EAGLContext eaglContext;
    
    public IOSApplication() {
        
        CGRect bounds = UIScreen.getMainScreen().getBounds();
        window = new UIWindow().initWithFrame(bounds);

        view = new IOSGraphicsView();
        view.initWithFrame(bounds);
        
        CAEAGLLayer layer = view.getLayer(CAEAGLLayer.class);
        layer.setOpaque(true);
        
        controller = new IOSGraphicsViewController();
        controller.setView(view);
        window.setRootViewController(controller);
        window.makeKeyAndVisible();
        
        System.out.println("started");
    }
    
    public Graphics getGraphics() {
        return null;
    }
}
