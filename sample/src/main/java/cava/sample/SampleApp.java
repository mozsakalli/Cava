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

package cava.sample;

import cava.annotation.Keep;
import cava.apple.foundation.NSDictionary;
import cava.apple.foundation.NSObject;
import cava.apple.uikit.UIApplication;
import cava.apple.uikit.UIApplicationDelegate;
import cava.apple.uikit.UIWindow;

/**
 *
 * @author mustafa
 */
@Keep
public class SampleApp extends NSObject implements UIApplicationDelegate {

    @Override
    public UIWindow getWindow() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setWindow(UIWindow window) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
