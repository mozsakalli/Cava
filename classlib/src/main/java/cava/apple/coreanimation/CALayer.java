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

package cava.apple.coreanimation;

import cava.annotation.Framework;
import cava.annotation.Include;
import cava.annotation.ObjC;
import cava.apple.foundation.NSObject;
import cava.c.VoidPtr;

/**
 *
 * @author mustafa
 */
@Framework("QuartzCore.framework")
@Include("<QuartzCore/QuartzCore.h>")
@ObjC
public class CALayer extends NSObject {
    public CALayer(){}
    public CALayer(VoidPtr handle) { $handle = handle; $sub = true; }
}
