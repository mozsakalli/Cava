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

/**
 *
 * @author mustafa
 */
public class Array extends Code {
    final static long serialVersionUID = 0;
    
    public Code array;
    public Code index;
    public String type;
    
    public Array(Code array, Code index, String type) {
        this.array = array;
        this.index = index;
        this.type = type;
    }

    @Override
    public void visit(Visitor visitor) {
        visitor.arrayAccess(this);
        array.visit(visitor);
        index.visit(visitor);
    }

    
    @Override
    public String toString() {
        return array+"["+index+"]";
    }
    
    
}
