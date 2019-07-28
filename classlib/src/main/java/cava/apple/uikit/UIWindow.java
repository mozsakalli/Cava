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
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<UIKit/UIKit.h> <Foundation/Foundation.h>")
@ObjC
public class UIWindow extends UIView {
    
    public void setRootViewController(UIViewController controller) {
        System.out.println("RootController: "+controller.getClass()+" / "+NativeCode.Long("(jlong)%s", controller.getNativePeer()));
        NativeCode.Void("((UIWindow*)%s).rootViewController = %s", getNativePeer(), controller.getNativePeer());
    }
    
    public void makeKeyAndVisible() {
        NativeCode.Void("[(UIWindow*)%s makeKeyAndVisible]", getNativePeer());
    }

    
}
