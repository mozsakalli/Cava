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
public class Visitor {
    
    public void visitClassReference(String className) {}
    public void code(Code code) {}
    public void arrayAccess(Array aa) { code(aa); }
    public void arrayLength(ArrayLength al) { code(al); }
    public void assign(Assign a) { code(a); }
    public void binary(Binop b) { code(b); }
    public void call(Call c) { code(c); }
    public void cast(Cast c) { code(c); }
    public void checkCast(CheckCast c) { code(c); }
    public void classRef(ClassConst c) { code(c); }
    public void constant(Const c) { code(c); }
    //public void continue_(Continue c) { code(c); }
    public void field(Field f) { code(f); }
    public void goto_(Goto g) { code(g); }
    public void if_(If i) { code(i); }
    //public void inc(Inc i) { code(i); }
    //public void initArray(InitArray a) { code(a); }
    public void instanceOf(InstanceOf i) { code(i); }
    public void label(Label l) { code(l); }
    //public void local(Local l) { code(l); }
    //public void neg(Neg n) { code(n); }
    public void newArray(AllocArray n) { code(n); }
    public void return_(Return r) { code(r); }
    //public void switch_(Switch s) { code(s); }
    //public void ternary(Ternary t) { code(t); }
    public void throw_(Throw t) { code(t); }
    //public void try_(Try t) { code(t); }
    //public void while_(While w) { code(w); }
    //public void alloc(Alloc a) { code(a); }
    //public void parentesis(Parentesis p) { code(p); }
    //public void classInit(ClassInit c) { code(c); }
    //public void monitorEnter(Monitor m) { code(m); }
    
}
