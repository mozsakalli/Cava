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
import cava.apple.foundation.NSDictionary;

/**
 *
 * @author mustafa
 */
@Include("<UIKit/UIKit.h> <Foundation/Foundation.h>")
@ObjC
public interface UIApplicationDelegate {
    
    @ObjC(value="window", property=true)
    public UIWindow getWindow();
    
    @ObjC(value="window", property=true)
    public void setWindow(UIWindow window);
    
    @ObjC("application:didFinishLaunchingWithOptions:")
    public boolean didFinishLaunchingWithOptions(UIApplication application, NSDictionary launchOptions);
    
    @ObjC("applicationDidBecomeActive:")
    public void didBecomeActive(UIApplication application);
    @ObjC("applicationWillResignActive:")
    public void willResignActive(UIApplication application);    
    
    @ObjC("applicationDidEnterBackground:")
    public void didEnterBackground(UIApplication application);
    @ObjC("applicationWillEnterForeground:")
    public void willEnterForeground(UIApplication application);    
    
}
