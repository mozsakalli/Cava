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

package compiler.model.ast;

import com.strobel.assembler.metadata.FieldReference;
import compiler.DecompilerUtils;
import compiler.model.NameAndType;

/**
 *
 * @author mustafa
 */
public class Field extends Code {
    
    final static long serialVersionUID = 0;
    
    public Code base;
    public String className;
    public String name;
    
    public Field(){}
    public Field(Code base, FieldReference ref) {
        this.base = base;
        this.className = DecompilerUtils.getTypeName(ref.getDeclaringType());
        this.name = ref.getName();
    }
    
    public Field(Code base, NameAndType field) {
        this.base = base;
        this.className = field.declaringClass;
        this.name = field.name;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        if(className!=null && className.equals(src)) className = dest;
        if(base != null) base.replaceClassName(src, dest);
    }

    @Override
    public void visit(Visitor v) {
        v.field(this);
        if(base != null) base.visit(v);
        v.visitClassReference(className);
    }

    @Override
    public boolean isSimple() {
        return true;
    }

    
    
    
}
