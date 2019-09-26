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

package com.cava.compiler.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class TrapInfo {
    
    public static class Info {
        public String type;
        public int target;
    }
    public List<Info> handlers = new ArrayList();
    
    public void addTrap(String type, int target) {
        Info i = new Info();
        i.type = type;
        i.target = target;
        handlers.add(i);
    }
}
