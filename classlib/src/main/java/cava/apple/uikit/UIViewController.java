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

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.c.VoidPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<UIKit/UIKit.h>")
@Framework("UIKit.framework")
@ObjC
public class UIViewController extends UIResponder {
    /*
    public UIViewController() {
        this(NativeCode.VoidPtr("[[cava_apple_uikit_UIViewController_ObjC alloc] initWithJavaPeer:pthis]"));
    }*/
    /*
    public UIViewController() {
        this(NativeCode.VoidPtr("[[cava_apple_uikit_UIViewController_ObjC alloc] initWithJavaPeer:pthis]"));
    }
    public UIViewController(VoidPtr handle) {
        this(handle, false);
    }
    public UIViewController(VoidPtr handle, boolean sub) {
        super(handle, sub);
    }
    */
    public void setView(UIView view) {
        NativeCode.Void("((UIViewController*)%s).view = %s", getHandle(), view.getHandle());
    }
    
    @ObjC("viewWillAppear")
    public native void viewWillAppear(boolean animated);

    @ObjC("viewDidAppear")
    public native void viewDidAppear(boolean animated);
}
