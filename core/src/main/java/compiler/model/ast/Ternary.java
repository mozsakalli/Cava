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
public class Ternary extends Code {
    
    public Code condition;
    public Code trueCode;
    public Code falseCode;
    
    public Ternary(){}
    public Ternary(Code condition, Code trueInstruction, Code falseInstruction) {
        this.condition = condition;
        this.trueCode = trueInstruction;
        this.falseCode = falseInstruction;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        condition.replaceClassName(src, dest);
        trueCode.replaceClassName(src, dest);
        falseCode.replaceClassName(src, dest);
    }

    @Override
    public void visit(Visitor v) {
        v.ternary(this);
        condition.visit(v);
        trueCode.visit(v);
        falseCode.visit(v);
    }
    
    
}
