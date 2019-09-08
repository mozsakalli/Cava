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

package com.cava.compiler.code;

import com.cava.compiler.DecompilerUtils;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Invoke extends Code {
    
    public int opcode;
    public String className;
    public String name;
    public String signature;
    
    public Invoke(int opcode, String className, String name, String signature) {
        this.opcode = opcode;
        this.className = className;
        this.name = name;
        this.signature = signature;
    }

    @Override
    public int getStackDelta() {
        List sign = DecompilerUtils.parseSignature(signature);
        int size = -sign.size();
        if(!sign.get(sign.size() - 1).equals("V"))
            size++;
        return size;
    }
    
    
}
