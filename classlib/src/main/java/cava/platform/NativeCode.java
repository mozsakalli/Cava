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

package cava.platform;

import cava.c.CharPtr;
import cava.c.CharPtrPtr;
import cava.c.VoidPtr;
import cava.c.VoidPtrPtr;
import cava.c.WCharPtr;

/**
 *
 * @author mustafa
 */
public class NativeCode {
    //Use correct return types to avoid unnecessary check cast calls
    public native static void Void(String code, Object...args);
    public native static Object Object(String code, Object...args);
    public native static char Char(String code, Object...args);
    public native static byte Byte(String code, Object...args);
    public native static short Short(String code, Object...args);
    public native static float Float(String code, Object...args);
    public native static double Double(String code, Object...args);
    public native static boolean Bool(String code, Object...args);
    public native static int Int(String code, Object...args);
    public native static long Long(String code, Object...args);
    public native static Class Class(String code, Object...args);
    public native static Class[] ClassArray(String code, Object...args);
    public native static Thread Thread(String code, Object...args);
    public native static String String(String code, Object...args);
    
    public native static VoidPtr VoidPtr(String code, Object...args);
    public native static VoidPtrPtr VoidPtrPtr(String code, Object...args);
    public native static CharPtr CharPtr(String code, Object...args);
    public native static CharPtrPtr CharPtrPtr(String code, Object...args);
    public native static WCharPtr WCharPtr(String code, Object...args);
    
}
