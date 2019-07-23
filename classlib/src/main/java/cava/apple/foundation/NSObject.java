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

package cava.apple.foundation;

import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.c.NativeObject;
import cava.c.VoidPtr;
import cava.platform.NativeCode;
import static javafx.scene.input.KeyCode.T;

/**
 *
 * @author mustafa
 */

@Include("<Foundation/Foundation.h>")
@ObjC
public class NSObject extends NativeObject {
    
    public static NSObject alloc() {
        return new NSObject(NativeCode.VoidPtr("[NSObject alloc]"));
    }
    
    public NSObject(){}
    public NSObject(VoidPtr handle) { this(handle, false); }
    public NSObject(VoidPtr handle, boolean sub) {
        this.$handle = handle;
        this.$sub = sub;
    }
    
    @Override
    public void dispose() {
        if($handle != null) {
            NativeCode.Void("[(NSObject*)%s release]", $handle );
            $handle = null;
        }
    }
    
    public static String getObjCClassName(Class aClass) {
        return aClass.getName().replace('.', '_').replace('$', '_') + "_ObjC";
    }
}
