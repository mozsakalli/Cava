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

import com.strobel.assembler.metadata.TypeReference;
import compiler.DecompilerUtils;

/**
 *
 * @author mustafa
 */
public class InstanceOf extends Code {
    
    public String className;
    public Code value;
    
    public InstanceOf(){}
    public InstanceOf(TypeReference type, Code value) {
        this.className = DecompilerUtils.getTypeName(type);// CompilerContext.realClassName(className);
        this.value = value;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        if(className.equals(src)) className = dest;
        value.replaceClassName(src, dest);
    }

    @Override
    public void visit(Visitor v) {
        v.instanceOf(this);
        value.visit(v);
        v.visitClassReference(className);
    }
    
    
    
}
