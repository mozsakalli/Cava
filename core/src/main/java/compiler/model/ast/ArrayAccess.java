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

/**
 *
 * @author mustafa
 */
public class ArrayAccess extends Code {
    
    public Code array;
    public Code index;
    public Code value;
    
    public ArrayAccess(){}
    public ArrayAccess(Code array, Code index, Code value) {
        this.array = array;
        this.index = index;
        this.value = value;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        array.replaceClassName(src, dest);
        index.replaceClassName(src, dest);
    }

    @Override
    public void visit(Visitor v) {
        v.arrayAccess(this);
        array.visit(v);
        index.visit(v);
        if(value != null) value.visit(v);
    }
    
    
}
