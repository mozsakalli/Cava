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

import com.cava.compiler.model.Method;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class JSGenerator extends Generator {
    Map<Object, Integer> names = new HashMap();
    public String nameFor(Object o) {
        return "_"+Integer.toHexString(names.computeIfAbsent(o, (k) -> names.size()));
    }
    
    @Override
    public void generateMethod(Method m) {
        out.println("//"+m.declaringClass+":"+m.name);
        out.print("function %s(vm", nameFor(m));
        for(int i=0; i<m.args.size(); i++) {
            out.print(",a"+i);
        }
        out.println("){");
        if(!m.locals.isEmpty()) {
            out.print("var ");
            for(int i=0; i<m.locals.size(); i++) {
                if(i>0) out.print(",");
                out.print("v%d",i);
            }
            out.println(";");
        }
        new JSMethodGenerator(this, m).generate();
        out.println("}");
    }

    
}
