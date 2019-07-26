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
import cava.annotation.ObjC;
import cava.apple.coreanimation.CAEAGLLayer;
import cava.apple.coregraphics.CGRect;
import cava.apple.foundation.NSObject;
import cava.apple.opengles.EAGLContext;
import cava.apple.opengles.EAGLRenderingAPI;
import cava.apple.uikit.UIView;

/**
 *
 * @author mustafa
 */
@Keep
public class GameView extends UIView {

    EAGLContext context;
    
    @ObjC(value = "layerClass")
    public static Class getLayerClass() {
        System.out.println("GetLayerClass");
        return NSObject.getObjCClass(CAEAGLLayer.class);
    }

    public GameView(CGRect bounds) {
        super(bounds);
        context = new EAGLContext(EAGLRenderingAPI.OpenGLES2);
    }
}
