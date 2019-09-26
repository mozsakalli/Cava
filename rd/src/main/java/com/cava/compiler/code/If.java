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

import soot.Unit;

/**
 *
 * @author mustafa
 */
public class If extends Branch {
    
    public enum Condition {
        Eq("=="), Neq("!="), Gt(">"), Lt("<"), Ge(">="), Le("<=");
        String sign;
        Condition(String sign) {
            this.sign = sign;
        }
    }
    
    public Code left, right;
    public Condition op;
    
    public If(){}
    public If(Code left, Code right, Condition op, int target) {
        this.left = left;
        this.right = right;
        this.op = op;
        this.target = target;
    }

    @Override
    public String toString() {
        return "if("+left+op.sign+right+") goto label"+target+";";
    }
    
    
}
