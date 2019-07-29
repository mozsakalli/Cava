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
package com.cava.gdx;

import cava.annotation.Resource;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSDictionary;
import cava.apple.uikit.UIApplication;
import cava.apple.uikit.UIApplicationDelegateAdapter;
import cava.apple.uikit.UIDevice;
import cava.apple.uikit.UIScreen;
import cava.apple.uikit.UIViewController;
import cava.apple.uikit.UIWindow;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.ApplicationLogger;
import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Clipboard;

/**
 *
 * @author mustafa
 */
@Resource({
    "com/badlogic/gdx/Matrix4Cava.c",
    "com/badlogic/gdx/gdx2dCava.c",
    "com/badlogic/gdx/stb_image.h",
    "com/badlogic/gdx/ETC1.c",})
public class IOSApplication implements Application {

    public static abstract class Delegate extends UIApplicationDelegateAdapter {

        private IOSApplication app;

        protected abstract IOSApplication createApplication();

        @Override
        public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions) {
            this.app = createApplication();
            return app.didFinishLaunching(application, launchOptions, this);
        }

        /*
        @Override
        public boolean didFinishLaunching(UIApplication application, UIApplicationLaunchOptions launchOptions) {
            application.addStrongRef(this); // Prevent this from being GCed until the ObjC UIApplication is deallocated
            this.app = createApplication();
            return app.didFinishLaunching(application, launchOptions);
        }

        @Override
        public void didBecomeActive(UIApplication application) {
            app.didBecomeActive(application);
        }

        @Override
        public void willEnterForeground(UIApplication application) {
            app.willEnterForeground(application);
        }

        @Override
        public void willResignActive(UIApplication application) {
            app.willResignActive(application);
        }

        @Override
        public void willTerminate(UIApplication application) {
            app.willTerminate(application);
        }*/
    }

    ApplicationListener listener;
    IOSApplicationConfiguration config;
    IOSGraphics graphics;
    IOSAudio audio;
    IOSFiles files;
    IOSInput input;

    UIWindow uiWindow;

    Array<Runnable> runnables = new Array<Runnable>();
    Array<Runnable> executedRunnables = new Array<Runnable>();
    Array<LifecycleListener> lifecycleListeners = new Array<LifecycleListener>();

    float displayScaleFactor;
    CGRect lastScreenBounds;

    public IOSApplication(ApplicationListener listener, IOSApplicationConfiguration config) {
        this.listener = listener;
        this.config = config;
    }

    final boolean didFinishLaunching(UIApplication uiApp, NSDictionary options, Delegate delegate) {
        Gdx.app = this;
        displayScaleFactor = (float) (getIosVersion() >= 8 ? UIScreen.getMainScreen().getNativeScale() : UIScreen.getMainScreen()
                .getScale());

        this.input = new IOSInput(this);
        this.graphics = new IOSGraphics(this, config);
        this.files = new IOSFiles();
        this.audio = new IOSAudio();

        Gdx.graphics = this.graphics;
        Gdx.gl = Gdx.gl20 = graphics.gl20;
        Gdx.gl30 = graphics.gl30;
        Gdx.files = this.files;
        Gdx.audio = this.audio;
        Gdx.input = this.input;

        input.setupPeripherals();

        uiWindow = new UIWindow().initWithFrame(UIScreen.getMainScreen().getBounds());
        delegate.setWindow(uiWindow);
        uiWindow.setRootViewController(graphics.viewController);
        uiWindow.makeKeyAndVisible();

        graphics.makeCurrent();
        
        return true;
    }

    /**
     * Return the UI view controller of IOSApplication
     *
     * @return the view controller of IOSApplication
     */
    public UIViewController getUIViewController() {
        return graphics.viewController;
    }

    /**
     * Return the UI Window of IOSApplication
     *
     * @return the window
     */
    public UIWindow getUIWindow() {
        return uiWindow;
    }

    /**
     * GL View spans whole screen, that is, even under the status bar. iOS can
     * also rotate the screen, which is not handled consistently over iOS
     * versions. This method returns, in pixels, rectangle in which libGDX
     * draws.
     *
     * @return dimensions of space we draw to, adjusted for device orientation
     */
    protected CGRect getBounds() {
        final CGRect screenBounds = UIScreen.getMainScreen().getBounds();
        double screenWidth = screenBounds.getWidth() * displayScaleFactor;
        double screenHeight = screenBounds.getHeight() * displayScaleFactor;

        return lastScreenBounds = new CGRect(0, 0, screenWidth, screenHeight);
        /*
        final CGRect statusBarFrame = uiApp.getStatusBarFrame();
        final UIInterfaceOrientation statusBarOrientation = uiApp.getStatusBarOrientation();

        double statusBarHeight = Math.min(statusBarFrame.getWidth(), statusBarFrame.getHeight());

        double screenWidth = screenBounds.getWidth();
        double screenHeight = screenBounds.getHeight();

        // Make sure that the orientation is consistent with ratios. Should be, but may not be on older iOS versions
        switch (statusBarOrientation) {
            case LandscapeLeft:
            case LandscapeRight:
                if (screenHeight > screenWidth) {
                    debug("IOSApplication", "Switching reported width and height (w=" + screenWidth + " h=" + screenHeight + ")");
                    double tmp = screenHeight;
                    // noinspection SuspiciousNameCombination
                    screenHeight = screenWidth;
                    screenWidth = tmp;
                }
        }

        // update width/height depending on display scaling selected
        screenWidth *= displayScaleFactor;
        screenHeight *= displayScaleFactor;

        if (statusBarHeight != 0.0) {
            debug("IOSApplication", "Status bar is visible (height = " + statusBarHeight + ")");
            statusBarHeight *= displayScaleFactor;
            screenHeight -= statusBarHeight;
        } else {
            debug("IOSApplication", "Status bar is not visible");
        }

        debug("IOSApplication", "Total computed bounds are w=" + screenWidth + " h=" + screenHeight);

        return lastScreenBounds = new CGRect(0.0, statusBarHeight, screenWidth, screenHeight);
         */

    }

    public CGRect getCachedBounds() {
        return lastScreenBounds == null ? getBounds() : lastScreenBounds;
    }

    int getIosVersion() {
        String systemVersion = UIDevice.getCurrentDevice().getSystemVersion();
        int version = Integer.parseInt(systemVersion.split("\\.")[0]);
        return version;
    }

    @Override
    public ApplicationListener getApplicationListener() {
        return listener;
    }

    @Override
    public Graphics getGraphics() {
        return graphics;
    }

    @Override
    public Audio getAudio() {
        return audio;
    }

    @Override
    public Input getInput() {
        return input;
    }

    @Override
    public Files getFiles() {
        return files;
    }

    @Override
    public Net getNet() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void log(String string, String string1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void log(String string, String string1, Throwable thrwbl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void error(String string, String string1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void error(String string, String string1, Throwable thrwbl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void debug(String string, String string1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void debug(String string, String string1, Throwable thrwbl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setLogLevel(int i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getLogLevel() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setApplicationLogger(ApplicationLogger al) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ApplicationLogger getApplicationLogger() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ApplicationType getType() {
        return ApplicationType.iOS;
    }

    @Override
    public int getVersion() {
        return Integer.parseInt(UIDevice.getCurrentDevice().getSystemVersion().split("\\.")[0]);
    }

    @Override
    public long getJavaHeap() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public long getNativeHeap() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Preferences getPreferences(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Clipboard getClipboard() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void postRunnable(Runnable runnable) {
        synchronized (runnables) {
            runnables.add(runnable);
            Gdx.graphics.requestRendering();
        }
    }

    public void processRunnables() {
        synchronized (runnables) {
            executedRunnables.clear();
            executedRunnables.addAll(runnables);
            runnables.clear();
        }
        for (int i = 0; i < executedRunnables.size; i++) {
            try {
                executedRunnables.get(i).run();
            } catch (Throwable t) {
                t.printStackTrace();
            }
        }
    }

    @Override
    public void exit() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void addLifecycleListener(LifecycleListener listener) {
        synchronized (lifecycleListeners) {
            lifecycleListeners.add(listener);
        }
    }

    @Override
    public void removeLifecycleListener(LifecycleListener listener) {
        synchronized (lifecycleListeners) {
            lifecycleListeners.removeValue(listener, true);
        }
    }

}
