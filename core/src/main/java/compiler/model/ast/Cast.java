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
public class Cast extends Code {
    
    public String source;
    public String target;
    public Code value;
    
    public Cast(){}
    public Cast(String source, String target,Code value) {
        this.source = source;
        this.target = target;
        this.value = value;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        if(source.equals(src)) source = dest;
        if(target.equals(src)) target = dest;
    }

    @Override
    public void visit(Visitor v) {
        v.cast(this);
        value.visit(v);
    }
    
    
}
