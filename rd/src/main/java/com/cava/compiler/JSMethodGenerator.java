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

package com.cava.compiler;

import com.cava.compiler.code.*;
import com.cava.compiler.model.*;

/**
 *
 * @author mustafa
 */
public class JSMethodGenerator {
    
    JSGenerator generator;
    SourceWriter out;
    Method method;
    
    public JSMethodGenerator(JSGenerator gen, Method method) {
        generator = gen;
        out = generator.out;
        this.method = method;
    }
    
    public void generate() {
        out.println("var $f=vm.frames[vm.fp++];");
        if(method.hasGoto) {
            out.println("var $b=-1;");
            out.print("while(1)");
        }
        if(!method.traps.isEmpty()) {
            out.print("try{");
        }
        if(method.hasGoto) {
            //out.println("var $b=-1;");
            out.println("switch($b){").indent();
            out.println("case -1:").indent();
        }
        int index = 0;
        for(Code c : method.body) {
            if(method.labels.contains(index)) {
                out.undent().println("case %d:", index).indent();
            }
            code(c);
            index++;
        }
        if(method.hasGoto) {
            out.undent().undent().println("}");
        }
        if(!method.traps.isEmpty()) {
            out.undent().print("}catch(error){").indent();
            //out.println("switch($f.trap) {").indent();
            for(int i=0; i<method.traps.size(); i++) {
                TrapInfo t = method.traps.get(i);
                out.println("if($f.trap==%d){", i+1).indent();
                for(TrapInfo.Info ti : t.handlers) {
                    out.println("if(vm.exception is %s) {$b=%d; continue;}", ti.type, ti.target);
                }
                out.undent().println("}");
                //out.println("break;");
            }
            out.undent()
                .println("throw error;")
                .undent().println("}");
        }
    }

    public void code(Code c) {
        if(c instanceof LineNumber)
            lineNumber((LineNumber)c);
        else if(c instanceof Assign)
            assign((Assign)c);
        else if(c instanceof Return)
            return_((Return)c);
        else if(c instanceof If)
            if_((If)c);
        else if(c instanceof Goto)
            goto_((Goto)c);
        else if(c instanceof Call)
            call((Call)c);
        else if(c instanceof Var)
            var((Var)c);
        else if(c instanceof Arg)
            arg((Arg)c);
        else if(c instanceof Const)
            constant((Const)c);
        else if(c instanceof Field)
            field((Field)c);
        else if(c instanceof Cast)
            cast((Cast)c);
        else if(c instanceof Alloc)
            alloc((Alloc)c);
        else if(c instanceof AllocArray)
            allocArray((AllocArray)c);
        else if(c instanceof Array)
            array((Array)c);
        else if(c instanceof Binop)
            binary((Binop)c);
        else if(c instanceof ArrayLength)
            arrayLength((ArrayLength)c);
        else if(c instanceof InstanceOf)
            isInstance((InstanceOf)c);
        else if(c instanceof Throw)
            throw_((Throw)c);
        else if(c instanceof ClassConst)
            classConst((ClassConst)c);
        else if(c instanceof Neg)
            neg((Neg)c);
        else if(c instanceof Switch)
            switch_((Switch)c);
        else if(c instanceof TrapEnter)
            trapEnter((TrapEnter)c);
        else if(c instanceof TrapLeave)
            trapLeave((TrapLeave)c);
        else if(c instanceof TrapSelector)
            trapSelector((TrapSelector)c);
        else if(c instanceof CaughtException)
            caughtException((CaughtException)c);
        else if(c instanceof Monitor)
            monitor((Monitor)c);
        else
        throw new RuntimeException("Unknown code: "+c.getClass());
    }
    
    public void lineNumber(LineNumber l) {
        out.println("$f.l=%d;", l.line);
    }
    
    public void var(Var v) {
        out.print("v%d", v.index);
    }
    
    public void arg(Arg a) {
        out.print("arg%d", a.index);
    }
    
    public void constant(Const c) {
        out.print(c.value);
    }
    
    public void classConst(ClassConst c) {
        out.print("class_of(%s)", c.name);
    }
    
    public void neg(Neg n) {
        out.print("-");
        code(n.value);
    }
    
    public void field(Field f) {
        if(f.base == null) {
            out.print("%s.%s",f.className,f.name);
        } else {
            code(f.base);
            out.print(".%s", f.name);
        }
    }
    
    public void isInstance(InstanceOf i) {
        out.print("is(");
        code(i.value);
        out.print(",%s)", i.type);
    }
    
    public void throw_(Throw t) {
        out.print("throw ");
        code(t.exception);
    }
    
    public void cast(Cast c) {
        out.print("(%s)", c.toType);
        code(c.code);
    }
    
    public void alloc(Alloc a) {
        out.print("new %s", a.className);
    }
    
    public void goto_(Goto g) {
        out.println("{ $b=%d; break; }", g.target);
    }
    
    public void allocArray(AllocArray a) {
        out.println("newArray(%s,", a.type);
        code(a.size);
        out.print(")");
    }
    
    public void array(Array a) {
        code(a.array);
        out.print("[");
        code(a.index);
        out.print("]");
    }
    
    public void arrayLength(ArrayLength a) {
        code(a.array);
        out.print(".len");
    }
    public void binary(Binop bin) {
        code(bin.left);
        out.print(bin.op);
        code(bin.right);
    }
    
    public void assign(Assign a) {
        code(a.left);
        out.print("=");
        code(a.right);
        out.println(";");
    }
    
    public void switch_(Switch s) {
        out.print("switch(");
        code(s.key);
        out.println("){");
        for(int i=0; i<s.values.size(); i++) {
            out.println("case %d: $b=%d;break;", s.values.get(i), s.labels.get(i)); 
        }
        out.println("}");
    }
    
    public void trapEnter(TrapEnter t) {
        //out.println("$f.pushTrap();");
    }
    
    public void trapLeave(TrapLeave t) {
        out.println("$f.trap=0;");
    }
    
    public void trapSelector(TrapSelector t) {
        out.println("$f.trap=%d;", t.selector);
    }
    
    public void caughtException(CaughtException c) {
        out.print("__caught");
    }
    
    public void monitor(Monitor m) {
        out.print("monitor(");
        code(m.value);
        out.println(","+m.leave+");");
    }
    public void return_(Return r) {
        out.print("return");
        if(r.value != null) {
            out.print(" ");
            code(r.value);
        }
        out.println(";");
    }
    
    public void if_(If i) {
        out.print("if(");
        code(i.left);
        switch(i.op) {
            case Eq: out.print("==");break;
            case Ge: out.print(">=");break;
            case Gt: out.print(">");break;
            case Le: out.print("<=");break;
            case Lt: out.print("<");break;
            case Neq: out.print("!=");break;
        }
        code(i.right);
        out.println(") {$b=%d; break;}", i.target);
    }
    
    public void call(Call call) {
        generator.
        out.println("call");
    }
}
