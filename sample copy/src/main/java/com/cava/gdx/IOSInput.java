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

import cava.apple.coregraphics.CGPoint;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSArray;
import cava.apple.foundation.NSSet;
import cava.apple.uikit.UITouch;
import cava.apple.uikit.UITouchPhase;
import cava.c.VoidPtr;
import cava.platform.NativeCode;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Input.Buttons;
import com.badlogic.gdx.Input.TextInputListener;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pool;

/**
 *
 * @author mustafa
 */
public class IOSInput implements Input {

    static final int MAX_TOUCHES = 20;
    private static final int POINTER_NOT_FOUND = -1;

    IOSApplication app;
    IOSApplicationConfiguration config;
    int[] deltaX = new int[MAX_TOUCHES];
    int[] deltaY = new int[MAX_TOUCHES];
    int[] touchX = new int[MAX_TOUCHES];
    int[] touchY = new int[MAX_TOUCHES];
    float[] pressures = new float[MAX_TOUCHES];
    boolean pressureSupported;
    // we store the pointer to the UITouch struct here, or 0
    long[] touchDown = new long[MAX_TOUCHES];
    int numTouched = 0;
    boolean justTouched = false;
    Pool<TouchEvent> touchEventPool = new Pool<TouchEvent>() {
        @Override
        protected TouchEvent newObject() {
            return new TouchEvent();
        }
    };
    Array<TouchEvent> touchEvents = new Array<TouchEvent>();
    private long currentEventTimeStamp = 0;
    float[] acceleration = new float[3];
    float[] rotation = new float[3];
    float[] R = new float[9];
    InputProcessor inputProcessor = null;

    boolean hasVibrator;
    //CMMotionManager motionManager;
    //todo: protected UIAccelerometerDelegate accelerometerDelegate;
    boolean compassSupported;
    boolean keyboardCloseOnReturn;

    public IOSInput(IOSApplication app) {
        this.app = app;
        this.config = app.config;
        this.keyboardCloseOnReturn = app.config.keyboardCloseOnReturn;
    }

    void setupPeripherals() {
        //motionManager = new CMMotionManager();
        setupAccelerometer();
        setupCompass();
        /* todo:
        UIDevice device = UIDevice.getCurrentDevice();
        if (device.getModel().equalsIgnoreCase("iphone")) {
            hasVibrator = true;
        }

        if (app.getIosVersion() >= 9) {
            UIForceTouchCapability forceTouchCapability = UIScreen.getMainScreen().getTraitCollection().getForceTouchCapability();
            pressureSupported = forceTouchCapability == UIForceTouchCapability.Available;
        }
         */
    }

    protected void setupCompass() {
        if (config.useCompass) {
            //setupMagnetometer();
        }
    }

    protected void setupAccelerometer() {
        if (config.useAccelerometer) {
            /* todo:
            accelerometerDelegate = new UIAccelerometerDelegateAdapter() {

                @Method(selector = "accelerometer:didAccelerate:")
                public void didAccelerate(UIAccelerometer accelerometer, @Pointer long valuesPtr) {
                    UIAcceleration values = UI_ACCELERATION_WRAPPER.wrap(valuesPtr);
                    float x = (float) values.getX() * 10;
                    float y = (float) values.getY() * 10;
                    float z = (float) values.getZ() * 10;

                    acceleration[0] = -x;
                    acceleration[1] = -y;
                    acceleration[2] = -z;
                }
            };
            UIAccelerometer.getSharedAccelerometer().setDelegate(accelerometerDelegate);
            UIAccelerometer.getSharedAccelerometer().setUpdateInterval(config.accelerometerUpdate);
             */
        }
    }

    @Override
    public float getAccelerometerX() {
        return acceleration[0];
    }

    @Override
    public float getAccelerometerY() {
        return acceleration[1];
    }

    @Override
    public float getAccelerometerZ() {
        return acceleration[2];
    }

    @Override
    public float getAzimuth() {
        if (!compassSupported) {
            return 0;
        }
        return rotation[0];
    }

    @Override
    public float getPitch() {
        if (!compassSupported) {
            return 0;
        }
        return rotation[1];
    }

    @Override
    public float getRoll() {
        if (!compassSupported) {
            return 0;
        }
        return rotation[2];
    }

    @Override
    public void getRotationMatrix(float[] matrix) {
        if (matrix.length != 9) {
            return;
        }
        //TODO implement when azimuth is fixed
    }

    @Override
    public int getMaxPointers() {
        return MAX_TOUCHES;
    }

    @Override
    public int getX() {
        return touchX[0];
    }

    @Override
    public int getX(int pointer) {
        return touchX[pointer];
    }

    @Override
    public int getDeltaX() {
        return deltaX[0];
    }

    @Override
    public int getDeltaX(int pointer) {
        return deltaX[pointer];
    }

    @Override
    public int getY() {
        return touchY[0];
    }

    @Override
    public int getY(int pointer) {
        return touchY[pointer];
    }

    @Override
    public int getDeltaY() {
        return deltaY[0];
    }

    @Override
    public int getDeltaY(int pointer) {
        return deltaY[pointer];
    }

    @Override
    public boolean isTouched() {
        for (int pointer = 0; pointer < MAX_TOUCHES; pointer++) {
            if (touchDown[pointer] != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean justTouched() {
        return justTouched;
    }

    @Override
    public boolean isTouched(int pointer) {
        return touchDown[pointer] != 0;
    }

    @Override
    public float getPressure() {
        return pressures[0];
    }

    @Override
    public float getPressure(int pointer) {
        return pressures[pointer];
    }

    @Override
    public boolean isButtonPressed(int button) {
        return button == Buttons.LEFT && numTouched > 0;
    }

    @Override
    public boolean isButtonJustPressed(int button) {
        return button == Buttons.LEFT && justTouched;
    }

    @Override
    public boolean isKeyPressed(int key) {
        return false;
    }

    @Override
    public boolean isKeyJustPressed(int key) {
        return false;
    }

    @Override
    public void getTextInput(TextInputListener listener, String title, String text, String hint) {
        //todo: buildUIAlertView(listener, title, text, hint).show();
    }

    @Override
    public void vibrate(int milliseconds) {
        //todo: mst AudioServices.playSystemSound(4095);
    }

    @Override
    public void vibrate(long[] pattern, int repeat) {
        // FIXME implement this
    }

    @Override
    public void cancelVibrate() {
        // FIXME implement this
    }

    @Override
    public long getCurrentEventTime() {
        return currentEventTimeStamp;
    }

    @Override
    public void setOnscreenKeyboardVisible(boolean visible) {
        /* todo: mst
        if (textfield == null) {
            createDefaultTextField();
        }
        if (visible) {
            textfield.becomeFirstResponder();
            textfield.setDelegate(textDelegate);
        } else {
            textfield.resignFirstResponder();
        }*/
    }

    @Override
    public void setCatchBackKey(boolean catchBack) {
    }

    @Override
    public boolean isCatchBackKey() {
        return false;
    }

    @Override
    public void setCatchMenuKey(boolean catchMenu) {
    }

    @Override
    public boolean isCatchMenuKey() {
        return false;
    }

    @Override
    public void setCatchKey(int keycode, boolean catchKey) {

    }

    @Override
    public boolean isCatchKey(int keycode) {
        return false;
    }

    @Override
    public void setInputProcessor(InputProcessor processor) {
        this.inputProcessor = processor;
    }

    @Override
    public InputProcessor getInputProcessor() {
        return inputProcessor;
    }

    @Override
    public boolean isPeripheralAvailable(Peripheral peripheral) {
        if (peripheral == Peripheral.Accelerometer && config.useAccelerometer) {
            return true;
        }
        if (peripheral == Peripheral.MultitouchScreen) {
            return true;
        }
        if (peripheral == Peripheral.Vibrator) {
            return hasVibrator;
        }
        if (peripheral == Peripheral.Compass) {
            return compassSupported;
        }
        if (peripheral == Peripheral.OnscreenKeyboard) {
            return true;
        }
        if (peripheral == Peripheral.Pressure) {
            return pressureSupported;
        }
        return false;
    }

    @Override
    public int getRotation() {
        /* todo: mst
        // we measure orientation counter clockwise, just like on Android
        switch (app.uiApp.getStatusBarOrientation()) {
            case LandscapeLeft:
                return 270;
            case PortraitUpsideDown:
                return 180;
            case LandscapeRight:
                return 90;
            case Portrait:
            default:
                return 0;
        }*/
        return 0;
    }

    @Override
    public Orientation getNativeOrientation() {
        return Orientation.Landscape;
        /* todo: mst
        switch (app.uiApp.getStatusBarOrientation()) {
            case LandscapeLeft:
            case LandscapeRight:
                return Orientation.Landscape;
            default:
                return Orientation.Portrait;
        }
         */
    }

    @Override
    public void setCursorCatched(boolean catched) {
    }

    @Override
    public boolean isCursorCatched() {
        return false;
    }

    @Override
    public void setCursorPosition(int x, int y) {
    }

    @Override
    public float getGyroscopeX() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public float getGyroscopeY() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public float getGyroscopeZ() {
        // TODO Auto-generated method stub
        return 0;
    }

    private int getFreePointer() {
        for (int i = 0; i < touchDown.length; i++) {
            if (touchDown[i] == 0) {
                return i;
            }
        }
        throw new GdxRuntimeException("Couldn't find free pointer id!");
    }

    private int findPointer(UITouch touch) {
        long ptr = touch.getNativePeer().toLong();
        for (int i = 0; i < touchDown.length; i++) {
            if (touchDown[i] == ptr) {
                return i;
            }
        }
        // If pointer is not found
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < touchDown.length; i++) {
            sb.append(i + ":" + touchDown[i] + " ");
        }
        Gdx.app.error("IOSInput", "Pointer ID lookup failed: " + ptr + ", " + sb.toString());
        return POINTER_NOT_FOUND;
    }

    NSArray touchArray;
    UITouch uiTouch = new UITouch((VoidPtr) null, true);

    public void onTouch(NSSet touches) {
        touchArray = touches.getAllObjects(touchArray);
        int count = touchArray.getCount();
        final CGRect bounds = app.getCachedBounds();
        final double minX = bounds.getMinX();
        final double minY = bounds.getMinY();
        for (int i = 0; i < count; i++) {
            touchArray.getObjectAtIndex(i, uiTouch);
            CGPoint pt = uiTouch.getLocationInWindow();
            final int locX = (int) (pt.getX() * app.displayScaleFactor - minX);
            final int locY = (int) (pt.getY() * app.displayScaleFactor - minY);

            float pressure = 1.0f;
            if (pressureSupported) {
                //todo: pressure = (float)touch.getForce();
            }
            UITouchPhase phase = uiTouch.getPhase();
            TouchEvent event = touchEventPool.obtain();
            event.x = locX;
            event.y = locY;
            event.phase = phase;
            event.timestamp = (long) (uiTouch.getTimestamp() * 1000000000);
            if (phase == UITouchPhase.Began) {
                event.pointer = getFreePointer();
                touchDown[event.pointer] = uiTouch.getNativePeer().toLong();
                touchX[event.pointer] = event.x;
                touchY[event.pointer] = event.y;
                deltaX[event.pointer] = 0;
                deltaY[event.pointer] = 0;
                pressures[event.pointer] = pressure;
                numTouched++;
            } else if (phase == UITouchPhase.Moved || phase == UITouchPhase.Stationary) {
                event.pointer = findPointer(uiTouch);
                if (event.pointer != POINTER_NOT_FOUND) {
                    deltaX[event.pointer] = event.x - touchX[event.pointer];
                    deltaY[event.pointer] = event.y - touchY[event.pointer];
                    touchX[event.pointer] = event.x;
                    touchY[event.pointer] = event.y;
                    pressures[event.pointer] = pressure;
                }
            } else if (phase == UITouchPhase.Cancelled || phase == UITouchPhase.Ended) {
                event.pointer = findPointer(uiTouch);
                if (event.pointer != POINTER_NOT_FOUND) {
                    touchDown[event.pointer] = 0;
                    touchX[event.pointer] = event.x;
                    touchY[event.pointer] = event.y;
                    deltaX[event.pointer] = 0;
                    deltaY[event.pointer] = 0;
                    pressures[event.pointer] = 0;
                    numTouched--;
                }
            }

            if (event.pointer != POINTER_NOT_FOUND) {
                touchEvents.add(event);
            } else {
                touchEventPool.free(event);
            }
        }
        Gdx.graphics.requestRendering();
    }

    void processEvents() {
        //synchronized (touchEvents) {
            justTouched = false;
            for (TouchEvent event : touchEvents) {
                currentEventTimeStamp = event.timestamp;
                switch (event.phase) {
                    case Began:
                        if (inputProcessor != null) {
                            inputProcessor.touchDown(event.x, event.y, event.pointer, Buttons.LEFT);
                        }
                        if (numTouched >= 1) {
                            justTouched = true;
                        }
                        break;
                    case Cancelled:
                    case Ended:
                        if (inputProcessor != null) {
                            inputProcessor.touchUp(event.x, event.y, event.pointer, Buttons.LEFT);
                        }
                        break;
                    case Moved:
                    case Stationary:
                        if (inputProcessor != null) {
                            inputProcessor.touchDragged(event.x, event.y, event.pointer);
                        }
                        break;
                }
            }
            touchEventPool.freeAll(touchEvents);
            touchEvents.clear();
        //}
    }

    static class TouchEvent {

        UITouchPhase phase;
        long timestamp;
        int x, y;
        int pointer;
    }
}
