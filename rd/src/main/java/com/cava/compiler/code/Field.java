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
public class Field extends Code {

    public Code base;
    public String className;
    public String name;
    
    public Field(){}
    
    public Field(Code base, String className, String name) {
        this.base = base;
        this.className = className;
        this.name = name;
    }

    @Override
    public void visit(Visitor v) {
        v.field(this);
        if(base != null) base.visit(v);
        v.visitClassReference(className);
    }
    
}
