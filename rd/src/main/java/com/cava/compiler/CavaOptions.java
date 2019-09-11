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

package com.cava.compiler;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class CavaOptions {
    
    static Map<String, Object> argMap = new HashMap();
    
    public static Object set(String name, Object value) {
        argMap.put(name, value);
        return value;    
    }
    
    public static File getFile(String name) {
        Object file = get(name, null);
        if(file == null) return null;
        if(file instanceof File) return (File)file;
        return new File(String.valueOf(file));
    }
    
    public static Object get(String name, Object def) {
        Object arg = argMap.get(name);
        return arg == null ? def : arg;
    }
    
    public static String getStr(String name, String def) {
        Object str = get(name, def);
        return str != null ? str.toString().trim() : null;
    }
    public static boolean getBool(String name) {
        Object o = get(name, null);
        if(o != null) {
            if(o instanceof Boolean) return (Boolean)o;
            return o.toString().equals("true") || o.toString().equals("yes");
        }
        return false;
    }
    public static int getInt(String name, int def) {
        Object o = get(name, null);
        if(o != null && o instanceof Number)
            return ((Number)o).intValue();
        return def;
    }
    
    public static Platform targetPlatform() {
        if(!argMap.containsKey("platform"))
            throw new RuntimeException("Target platform must be supplied");
        return Platform.valueOf(getStr("platform",null));
    }
    public static void targetPlatform(String platform) {
        set("platform", platform);
    }
    
    public static File buildDir() {
        File result = getFile("buildDir");
        if(result == null) 
            result = (File)set("buildDir", new File("build"));
        return result;
    }
    public static void buildDir(File file) {
        set("buildDir", file);
    }
    
    public static void mainClass(String name) {
        set("mainClass", name.replace('.', '/'));
    }
    public static String mainClass() {
        if(!argMap.containsKey("mainClass"))
            throw new RuntimeException("mainClass must be supplied");
        return getStr("mainClass", null);
    }
    
    public static boolean debug() {
        return getBool("debug");
    }
    public static void debug(boolean value) {
        set("debug", value);
    }
    public static int debugPort() {
        return getInt("debugPort", 10000);
    }
    public static String debugHost() {
        return getStr("debugHost", null);
    }
    public static void debugHost(String host) {
        set("debugHost", host);
    }
    public static void debugPort(int port) {
        set("debugPort", port);
    }
    public static boolean simulator() {
        return getBool("simulator");
    }
    public static void simulator(boolean value) {
        set("simulator", value);
    }
    public static void simulatorId(String value) {
        set("simulatorId", value);
    }
    public static String simulatorId() {
        return getStr("simulatorId", null);
    }
    public static File infoPList() {
        File file = getFile("infoPList");
        if(file == null || !file.exists()) throw new RuntimeException("Info.plist not found at ("+file+")");
        return file;
    }
    public static void infoPList(File file) {
        set("infoPList", file);
    }
    public static String applicationName() {
        String name = getStr("appName", null);
        if(name == null) throw new RuntimeException("Application Name must be supplied");
        return name;
    }
    public static void applicationName(String name) {
        set("appName", name);
    }
    
    public static String applicationId() {
        String name = getStr("appId", null);
        if(name == null) throw new RuntimeException("Application Id must be supplied");
        return name;
    }
    public static void applicationId(String id) {
        set("appId", id);
    }
}
