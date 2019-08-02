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

import compiler.model.ast.Alloc;
import compiler.model.ast.Call;
import compiler.model.ast.Cast;
import compiler.model.ast.CheckCast;
import compiler.model.ast.Field;
import compiler.model.ast.Visitor;

/**
 *
 * @author mustafa
 */
public class ClassRenameVisitor extends Visitor {
    
    String search;
    String replace;
    
    public ClassRenameVisitor(String search, String replace) {
        this.search = search;
        this.replace = replace;
    }
    
    @Override
    public void field(Field f) {
        if(f.className.equals(search)) f.className = replace;
    }

    @Override
    public void call(Call c) {
        if(c.className.equals(search)) c.className = replace;
    }

    @Override
    public void checkCast(CheckCast c) {
        if(c.className.equals(search)) c.className = replace;
    }

    @Override
    public void alloc(Alloc a) {
        if(a.className.equals(search)) a.className = replace;
    }

    
    
    
}
