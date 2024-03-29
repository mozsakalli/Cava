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

package compiler.backend.c;

import compiler.Platform;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class A {
    
    public final static String ObjC = "cava.annotation.ObjC";
    public final static String Keep = "cava.annotation.Keep";
    public final static String Native = "cava.annotation.Native";
    public final static String Framework = "cava.annotation.Framework";
    public final static String Resource = "cava.annotation.Resource";
    public final static String Inline = "cava.annotation.Inline";
    public final static String Unsafe = "cava.annotation.Unsafe";
    public final static String Modify = "cava.annotation.Modify";
    public final static String JNI = "cava.annotation.JNI";
    
    static Map<String, Map<String,Object>> getAnnotationMap(Object o) {
        if(o instanceof NameAndType)
            return ((NameAndType)o).annotations;
        else if(o instanceof Clazz)
            return ((Clazz)o).annotations;
        return null;
    }
    
    public static Map<String,Object> get(Object o, String name) {
        Map<String, Map<String, Object>> map = getAnnotationMap(o);
        return map != null ? map.get(name) : null;
    }
    public static Object value(Object o, String name, String key) {
        Map<String, Object> map = get(o, name);
        return map != null ? map.get(key) : null;
    }
    public static String string(Object o, String name, String key) {
        Object p = value(o,name,key);
        return p!=null ? p.toString() : "";
    }
    public static boolean bool(Object o, String name, String key) {
        return string(o,name,key).equals("true");
    }
    public static boolean has(Object o, String name) {
        return get(o, name) != null;
    }
    
    public static boolean hasNative(Object o) {
        return has(o, Native);
    }
    public static String nativeValue(Object o) {
        return string(o, Native, "value");
    }
    public static boolean hasObjC(Object o) {
        return has(o, ObjC);
    }
    public static String objcSelector(Object o) {
        return string(o, ObjC, "value");
    }
    public static boolean objcProperty(Object o) {
        return bool(o, ObjC, "property");
    }
    public static boolean objcNoInit(Object o) {
        return bool(o, ObjC, "noInit");
    }
    public static boolean objcNoAlloc(Object o) {
        return bool(o, ObjC, "noAlloc");
    }
    public static boolean hasKeep(Object o) {
        return has(o, Keep);
    }
    public static boolean hasInline(Object o) {
        return has(o, Inline);
    }
    public static boolean hasUnsafe(Object o) {
        return has(o, Unsafe);
    }
    public static String framework(Object o) {
        return string(o, Framework, "value");
    }
    public static String modify(Object o, Platform platform) {
        String result = string(o, Modify, platform.toString());
        return result != null && !result.equals("java/lang/Object") && !result.isEmpty() ? result : null;
    }
    public static boolean hasJNI(Object o) {
        return has(o, JNI);
    }
    public static String jniName(Object o) {
        if(hasJNI(o)) {
            String name = string(o, JNI,"value");
            if((name == null || name.isEmpty())) {
                if(o instanceof NameAndType) {
                    return ((NameAndType)o).name;
                }
            }
        }
        return null;
    }
    public static boolean jniField(Object o) {
        return bool(o, JNI, "field");
    }
}
