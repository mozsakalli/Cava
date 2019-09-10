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
public class Binop extends Code {
    
    public enum Op {
        Rem("%"),Mul("*"),Add("+"),Sub("-");
        
        String sign;        
        Op(String sign) { this.sign = sign; }
        public String sign() { return sign; }
    }
    
    public Code left, right;
    public Op op;
    public String type;
    
    public Binop(Code left, Code right, Op op, String type) {
        this.left = left;
        this.right = right;
        this.op = op;
        this.type = type;
    }

    @Override
    public String toString() {
        return left+op.sign()+right;
    }
    
    
}
