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

import cava.apple.foundation.NSDictionary;
import cava.apple.foundation.NSObject;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
public class UIApplicationDelegateAdapter extends NSObject implements UIApplicationDelegate {
    
    private UIWindow window;
    
    @Override
    public UIWindow getWindow() {
        return window;
    }

    @Override
    public void setWindow(UIWindow window) {
        this.window = window;
        NativeCode.Void("((cava_apple_uikit_UIApplicationDelegateAdapter_ObjC*)%s).window = %s", $handle, window.getHandle());
    }

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions) {
        return true;
    }

    @Override
    public void didBecomeActive(UIApplication application) {
    }

    @Override
    public void willResignActive(UIApplication application) {
    }

    @Override
    public void didEnterBackground(UIApplication application) {
    }

    @Override
    public void willEnterForeground(UIApplication application) {
    }

}
