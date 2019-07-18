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
public class Inc extends Code {
    final static long serialVersionUID = 0;
    
    public Code value;
    public Code amount;
    public boolean isPost;
    
    public Inc(){}
    public Inc(Code value, Code amount, boolean isPost) {
        this.value = value;
        this.amount = amount;
        this.isPost = isPost;
    }

    @Override
    public void visit(Visitor v) {
        v.inc(this);
        value.visit(v);
        amount.visit(v);
    }

    
    
}
