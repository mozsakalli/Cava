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

package cava.c;

import cava.annotation.Include;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<stdlib.h> <stdio.h> <string.h>")
public class CLib {
    
    public static void memcpy(Object dst, Object src, int size) {
        NativeCode.Void("memcpy(%s, %s, %s)", dst, src, size);
    }
}
