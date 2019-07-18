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

package compiler;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class CavaOptions {
    
    static Map<String, List<Object>> argMap = new HashMap();
    
    public static Object set(String name, Object value) {
        if(value instanceof List)
            argMap.put(name, (List)value);
        else {
            List list = new ArrayList();
            list.add(value);
            argMap.put(name, list);
        }
        return value;    
    }
    
    public static void parse(String[] args) {
        int i=0;
        while(i < args.length) {
            if(args[i].startsWith("--")) {
                String name = args[i++].substring(2).trim();
                List<Object> params = new ArrayList();
                while(i < args.length && !args[i].startsWith("--"))
                    params.add(args[i++].trim());
                argMap.put(name, params);
            }
        }
    }
    
    public static File getFile(String name) {
        Object file = get(name, null);
        if(file == null) return null;
        if(file instanceof File) return (File)file;
        return new File(String.valueOf(file));
    }
    
    public static Object get(String name, Object def) {
        List params = argMap.get(name);
        if(params == null || params.isEmpty())
            return def;
        return params.get(0);
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
        set("mainClass", name);
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
    
    public static File infoPList() {
        File file = getFile("infoPList");
        if(file == null || !file.exists()) throw new RuntimeException("Info.plist file must be supplied");
        return file;
    }
    public static void infoPList(File file) {
        set("infoPList", file);
    }
    
}
