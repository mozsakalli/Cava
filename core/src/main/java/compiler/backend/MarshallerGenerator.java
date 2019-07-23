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

package compiler.backend;

import compiler.CompilerContext;
import compiler.backend.c.A;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Assign;
import compiler.model.ast.Call;
import compiler.model.ast.Code;
import compiler.model.ast.Const;
import compiler.model.ast.Field;
import compiler.model.ast.InitArray;
import compiler.model.ast.Local;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class MarshallerGenerator {
    
    public static void generate() {
        CompilerContext.classes.values().forEach(c -> {
            if(!c.isInterface && c.isStruct()) {
                generateStruct(c);
            }
        });
        
    }
    
    static Call makeNativeCall(String format, Code...nargs) {
        Call call = new Call();
        call.className = "cava/platform/NativeCode";
        call.methodName = "Object";
        List<Code> args = new ArrayList();
        args.add(new Const(format));
        List<Code> array = new ArrayList();
        for(Code a : nargs) array.add(a);
        args.add(new InitArray("java/lang/Object", args));
        call.args = args;
        return call;
    }
    
    static void generateStruct(Clazz c) {
    }
}
