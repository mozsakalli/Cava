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
package com.cava.gdx.ios;

import cava.annotation.Keep;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSObject;
import cava.apple.foundation.NSSet;
import cava.apple.glkit.GLKView;
import cava.apple.glkit.GLKViewController;
import cava.apple.glkit.GLKViewControllerDelegate;
import cava.apple.glkit.GLKViewDelegate;
import cava.apple.glkit.GLKViewDrawableColorFormat;
import cava.apple.glkit.GLKViewDrawableDepthFormat;
import cava.apple.glkit.GLKViewDrawableMultisample;
import cava.apple.glkit.GLKViewDrawableStencilFormat;
import cava.apple.opengles.EAGLContext;
import cava.apple.opengles.EAGLRenderingAPI;
import cava.apple.uikit.UIEvent;
import cava.apple.uikit.UITouch;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.glutils.GLVersion;
import com.badlogic.gdx.utils.Array;

/**
 *
 * @author mustafa
 */
public class IOSGraphics extends NSObject implements Graphics, GLKViewDelegate, GLKViewControllerDelegate {

    @Keep
    public static class IOSUIViewController extends GLKViewController {

        IOSApplication app;
        IOSGraphics graphics;

        public IOSUIViewController(IOSApplication app, IOSGraphics graphics) {
            this.app = app;
            this.graphics = graphics;
        }

        @Override
        public void viewWillAppear(boolean animated) {
            // start GLKViewController even though we may only draw a single frame
            // (we may be in non-continuous mode)
            setPaused(false);
        }

        @Override
        public void viewDidAppear(boolean animated) {
            //todo: if (app.viewControllerListener != null) app.viewControllerListener.viewDidAppear(animated);
        }

        @Override
        public boolean shouldAutorotate() {
            return true;
        }

        @Override
        public boolean prefersStatusBarHidden() {
            return !app.config.statusBarVisible;
        }

        @Override
        public boolean prefersHomeIndicatorAutoHidden() {
            return app.config.hideHomeIndicator;
        }

        @Override
        public void viewDidLayoutSubviews() {
            CGRect bounds = app.getBounds();
            graphics.width = (int) (bounds.getWidth());
            graphics.height = (int) (bounds.getHeight());
            graphics.makeCurrent();
            if (graphics.created) {
                app.listener.resize(graphics.width, graphics.height);
            }
        }

    }

    GL20 gl20;
    GL30 gl30;
    int width;
    int height;
    long lastFrameTime;
    float deltaTime;
    long framesStart;
    int frames;
    int fps;
    BufferFormat bufferFormat;
    String extensions;

    IOSApplication app;
    IOSApplicationConfiguration config;
    EAGLContext context;
    GLVersion glVersion;
    GLKView view;
    IOSUIViewController viewController;
    IOSInput input;

    volatile boolean appPaused;
    private long frameId = -1;
    private boolean isContinuous = true;
    private boolean isFrameRequested = true;

    boolean created;

    public IOSGraphics(IOSApplication app, IOSApplicationConfiguration config) {
        this.config = config;
        this.app = app;
        this.input = app.input;
        final CGRect bounds = app.getBounds();
        // setup view and OpenGL
        width = (int) (bounds.getWidth());
        height = (int) (bounds.getHeight());

        context = new EAGLContext().initWithAPI(EAGLRenderingAPI.OpenGLES2);
        if (context.getNativePeer() != null) {
            System.out.println("OpenGL2.0 detected");
            gl20 = new IOSGLES20();
        }
        gl30 = null;

        view = new GLKView() {
            @Override
            @Keep
            public void touchesBegan(NSSet<UITouch> touches, UIEvent event) {
                app.input.onTouch(touches);
            }

            @Override
            @Keep
            public void touchesMoved(NSSet<UITouch> touches, UIEvent event) {
                app.input.onTouch(touches);
            }

            @Override
            @Keep
            public void touchesEnded(NSSet<UITouch> touches, UIEvent event) {
                app.input.onTouch(touches);
            }

            @Override
            @Keep
            public void touchesCancelled(NSSet<UITouch> touches, UIEvent event) {
                app.input.onTouch(touches);
            }
        };
        view.initWithFrame(bounds, context);

        view.setDelegate(this);
        view.setDrawableColorFormat(config.colorFormat);
        view.setDrawableDepthFormat(config.depthFormat);
        view.setDrawableStencilFormat(config.stencilFormat);
        view.setDrawableMultisample(config.multisample);
        //view.setMultipleTouchEnabled(true);

        viewController = new IOSUIViewController(app, this);
        viewController.setView(view);
        viewController.setPreferredFramesPerSecond(config.preferredFramesPerSecond);
        viewController.setDelegate(this);

        int r = 0, g = 0, b = 0, a = 0, depth = 0, stencil = 0, samples = 0;
        if (config.colorFormat == GLKViewDrawableColorFormat.RGB565) {
            r = 5;
            g = 6;
            b = 5;
            a = 0;
        } else {
            r = g = b = a = 8;
        }
        if (config.depthFormat == GLKViewDrawableDepthFormat._16) {
            depth = 16;
        } else if (config.depthFormat == GLKViewDrawableDepthFormat._24) {
            depth = 24;
        } else {
            depth = 0;
        }
        if (config.stencilFormat == GLKViewDrawableStencilFormat._8) {
            stencil = 8;
        }
        if (config.multisample == GLKViewDrawableMultisample._4X) {
            samples = 4;
        }
        bufferFormat = new BufferFormat(r, g, b, a, depth, stencil, samples, false);

        appPaused = false;
    }

    public void resume() {
        if (!appPaused) {
            return;
        }
        appPaused = false;

        Array<LifecycleListener> listeners = app.lifecycleListeners;
        synchronized (listeners) {
            for (LifecycleListener listener : listeners) {
                listener.resume();
            }
        }
        app.listener.resume();
    }

    public void pause() {
        if (appPaused) {
            return;
        }
        appPaused = true;

        Array<LifecycleListener> listeners = app.lifecycleListeners;
        synchronized (listeners) {
            for (LifecycleListener listener : listeners) {
                listener.pause();
            }
        }
        app.listener.pause();
    }

    // Delegate methods
    @Override
    public void draw(GLKView view, CGRect rect) {
        makeCurrent();
        // massive hack, GLKView resets the viewport on each draw call, so IOSGLES20
        // stores the last known viewport and we reset it here...
        gl20.glViewport(IOSGLES20.x, IOSGLES20.y, IOSGLES20.width, IOSGLES20.height);

        if (!created) {
            gl20.glViewport(0, 0, width, height);

            String versionString = gl20.glGetString(GL20.GL_VERSION);
            String vendorString = gl20.glGetString(GL20.GL_VENDOR);
            String rendererString = gl20.glGetString(GL20.GL_RENDERER);
            glVersion = new GLVersion(Application.ApplicationType.iOS, versionString, vendorString, rendererString);

            app.listener.create();
            app.listener.resize(width, height);
            created = true;
        }
        if (appPaused) {
            return;
        }

        long time = System.nanoTime();
        deltaTime = (time - lastFrameTime) / 1000000000.0f;
        lastFrameTime = time;

        frames++;
        if (time - framesStart >= 1000000000l) {
            framesStart = time;
            fps = frames;
            frames = 0;
        }

        input.processEvents();
        frameId++;
        app.listener.render();
    }

    @Override
    public void update(GLKViewController controller) {
        makeCurrent();
        app.processRunnables();
        // pause the GLKViewController render loop if we are no longer continuous
        // and if we haven't requested a frame in the last loop iteration
        if (!isContinuous && !isFrameRequested) {
            viewController.setPaused(true);
        }
        isFrameRequested = false;
    }

    @Override
    public void willPause(GLKViewController controller, boolean pause) {
        System.out.println("!!!!!!!!!!!!!!!!!! Will Pause !!!!!!!!!!!!!!!!");
    }
    // Delegate methods

    void makeCurrent() {
        EAGLContext.setCurrentContext(context);
    }

    @Override
    public boolean isGL30Available() {
        return gl30 != null;
    }

    @Override
    public GL20 getGL20() {
        return gl20;
    }

    @Override
    public GL30 getGL30() {
        return gl30;
    }

    @Override
    public void setGL20(GL20 gl20) {
        this.gl20 = gl20;
        if (gl30 == null) {
            Gdx.gl = gl20;
            Gdx.gl20 = gl20;
        }
    }

    @Override
    public void setGL30(GL30 gl30) {
        this.gl30 = gl30;
        if (gl30 != null) {
            this.gl20 = gl30;

            Gdx.gl = gl20;
            Gdx.gl20 = gl20;
            Gdx.gl30 = gl30;
        }
    }

    @Override
    public int getWidth() {
        return width;
    }

    @Override
    public int getHeight() {
        return height;
    }

    @Override
    public int getBackBufferWidth() {
        return width;
    }

    @Override
    public int getBackBufferHeight() {
        return height;
    }

    @Override
    public long getFrameId() {
        return frameId;
    }

    @Override
    public float getDeltaTime() {
        return deltaTime;
    }

    @Override
    public float getRawDeltaTime() {
        return deltaTime;
    }

    @Override
    public int getFramesPerSecond() {
        return fps;
    }

    @Override
    public GraphicsType getType() {
        return GraphicsType.iOSGL;
    }

    @Override
    public GLVersion getGLVersion() {
        return glVersion;
    }

    @Override
    public float getPpiX() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public float getPpiY() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public float getPpcX() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public float getPpcY() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public float getDensity() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean supportsDisplayModeChange() {
        return false;
    }

    @Override
    public Monitor getPrimaryMonitor() {
        return new IOSMonitor(0, 0, "Primary Monitor");
    }

    @Override
    public Monitor getMonitor() {
        return getPrimaryMonitor();
    }

    @Override
    public Monitor[] getMonitors() {
        return new Monitor[] { getPrimaryMonitor() };
    }

    @Override
    public DisplayMode[] getDisplayModes() {
        return new DisplayMode[] {getDisplayMode()};
    }

    @Override
    public DisplayMode[] getDisplayModes(Monitor mntr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DisplayMode getDisplayMode() {
        return new IOSDisplayMode(getWidth(), getHeight(), config.preferredFramesPerSecond, bufferFormat.r + bufferFormat.g
                + bufferFormat.b + bufferFormat.a);
    }

    @Override
    public DisplayMode getDisplayMode(Monitor mntr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean setFullscreenMode(DisplayMode dm) {
        return true;
    }

    @Override
    public boolean setWindowedMode(int i, int i1) {
        return false;
    }

    @Override
    public void setTitle(String string) {
    }

    @Override
    public void setUndecorated(boolean bln) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setResizable(boolean bln) {
    }

    @Override
    public void setVSync(boolean bln) {
    }

    @Override
    public BufferFormat getBufferFormat() {
        return bufferFormat;
    }

    @Override
    public boolean supportsExtension(String extension) {
        if (extensions == null) {
            extensions = Gdx.gl.glGetString(GL20.GL_EXTENSIONS);
        }
        return extensions.contains(extension);
    }

    @Override
    public void setContinuousRendering(boolean isContinuous) {
        if (isContinuous != this.isContinuous) {
            this.isContinuous = isContinuous;
            // start the GLKViewController if we go from non-continuous -> continuous
            if (isContinuous) {
                viewController.setPaused(false);
            }
        }
    }

    @Override
    public boolean isContinuousRendering() {
        return isContinuous;
    }

    @Override
    public void requestRendering() {
        isFrameRequested = true;
        // start the GLKViewController if we are in non-continuous mode
        // (we should already be started in continuous mode)
        if (!isContinuous) {
            viewController.setPaused(false);
        }
    }

    @Override
    public boolean isFullscreen() {
        return true;
    }

    @Override
    public Cursor newCursor(Pixmap pixmap, int i, int i1) {
        return null;
    }

    @Override
    public void setCursor(Cursor cursor) {
    }

    @Override
    public void setSystemCursor(Cursor.SystemCursor sc) {
    }

    private class IOSDisplayMode extends DisplayMode {
            protected IOSDisplayMode (int width, int height, int refreshRate, int bitsPerPixel) {
                    super(width, height, refreshRate, bitsPerPixel);
            }
    }

    private class IOSMonitor extends Monitor {
            protected IOSMonitor(int virtualX, int virtualY, String name) {
                    super(virtualX, virtualY, name);
            }
    }    
}
