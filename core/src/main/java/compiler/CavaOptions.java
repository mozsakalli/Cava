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
    
    static Map<String, List<String>> argMap = new HashMap();
    
    public static void parse(String[] args) {
        int i=0;
        while(i < args.length) {
            if(args[i].startsWith("--")) {
                String name = args[i++].substring(2).trim();
                List<String> params = new ArrayList();
                while(i < args.length && !args[i].startsWith("--"))
                    params.add(args[i++].trim());
                argMap.put(name, params);
            }
        }
    }
    
    public static File getFile(String name) {
        List<String> params = argMap.get(name);
        if(params == null || params.isEmpty()) return null;
        return new File(params.get(0));
    }
    
    public static String get(String name, String def) {
        List<String> params = argMap.get(name);
        if(params == null || params.isEmpty())
            return def;
        return params.get(0).trim();
    }
}
