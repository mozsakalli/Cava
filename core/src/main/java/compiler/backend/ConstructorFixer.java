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

import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Alloc;
import compiler.model.ast.Call;
import compiler.model.ast.Local;
import compiler.model.ast.Return;
import compiler.model.ast.Visitor;

/**
 *
 * @author mustafa
 */
public class ConstructorFixer {
    
    public void fix(Clazz c) {
        c.methods.forEach(m -> {
            if(m.usedInProject) {
                if(m.name.equals("<init>")) fixConstructor(m); 
                else if(!m.isStatic()) {
                    m.args.add(0, new NameAndType("this", m.declaringClass, true));
                }
                fixAlloc(m);
            }
        });
    }
    
    void fixConstructor(Method m) {
        m.type = m.declaringClass;
        final NameAndType self = new NameAndType("this", m.declaringClass, true); 
        m.args.add(0, self);
        m.body.visit(new Visitor(){
            @Override
            public void return_(Return r) {
                r.value = new Local(self);
            }
        });
        //remove recursive parent call
        if(m.declaringClass.equals("java/lang/Object") && !m.body.children.isEmpty()) {
            m.body.children.remove(0);
        }
        
        m.body.children.add(new Return(new Local(self)));        
    }
    
    void fixAlloc(Method m) {
        m.body.visit(new Visitor(){
            @Override
            public void call(Call c) {
                if(c.callType == Call.CallType.New) {
                    c.args.add(0, new Alloc(c.className));
                }
            }
            
        });
    }
}
