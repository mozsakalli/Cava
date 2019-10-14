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
        Restruct rt = new Restruct(method);
        boolean hasGoto = method.hasGoto || !method.traps.isEmpty();
        out.println("var $f={};//vm.frames[vm.fp++];");
        if(hasGoto) {
            out.println("var $b=-1;");
            out.print("while(1)");
        }
        if(!method.traps.isEmpty()) {
            out.print("try{");
        }
        if(hasGoto) {
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
        if(hasGoto) {
            out.undent().undent().println("}");
        }
        if(!method.traps.isEmpty()) {
            out.undent().print("}catch(error){").indent();
            //out.println("switch($f.trap) {").indent();
            for(int i=0; i<method.traps.size(); i++) {
                TrapInfo t = method.traps.get(i);
                out.println("if($f.trap==%d){", i+1).indent();
                for(TrapInfo.Info ti : t.handlers) {
                    out.println("if(vm.is(vm.exception,%d)) {$b=%d; continue;}", generator.getClassIndex(ti.type), ti.target);
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
        else if(c instanceof Call) {
            call((Call)c);
            out.println(";");
        } else if(c instanceof Var)
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
        out.print("a%d", a.index);
    }
    
    public void constant(Const c) {
        if(c.type.equals("java/lang/String")) {
            out.print("$str%d", generator.getStringIndex(c.value.toString()));
        } else
        out.print(c.value);
    }
    
    public void classConst(ClassConst c) {
        out.print("cls%d", generator.getClassIndex(c.name));
    }
    
    public void neg(Neg n) {
        out.print("-");
        code(n.value);
    }
    
    public void field(Field f) {
        if(f.base == null) {
            out.print("$g%d",generator.getGlobalIndex(f.className,f.name));
        } else {
            code(f.base);
            out.print(".%s /*%s.%s*/", generator.nameFor(f.className+":"+f.name), f.className, f.name);
        }
    }
    
    public void isInstance(InstanceOf i) {
        out.print("vm.is(");
        code(i.value);
        out.print(",%d)", generator.getClassIndex(i.type));
    }
    
    public void throw_(Throw t) {
        out.print("throw ");
        code(t.exception);
        out.println(";");
    }
    
    public void cast(Cast c) {
        if(!DecompilerUtils.isPrimitive(c.toType)) {
            out.print("vm.cast(");
            code(c.code);
            out.print(",%d)", generator.getClassIndex(c.toType));
            return;
        }
        switch(c.toType) {
            case "I": code(c.code);out.print("|0"); return;
            case "D":
            case "F": code(c.code);return;   
            case "B": code(c.code);out.print("&0xff");return;
            case "C":
            case "S": code(c.code);out.print("&0xffff");return;
            case "J": out.print("Math.floor(");code(c.code);out.print(")");return;
        }
        out.print("(%s)", c.toType);
        code(c.code);
    }
    
    public void alloc(Alloc a) {
        /*
        Clazz cls = CompilerContext.resolve("cava/VM");
        Method m = cls.findDeclaredMethod("allocObject", "(Ljava/lang/Class;)Ljava/lanf/Object;");
        out.print("%s(cls%d)", generator.nameFor(m), generator.getClassIndex(a.className));*/
        out.print("VM.allocObject(cls%d)", generator.getClassIndex(a.className));
    }
    
    public void goto_(Goto g) {
        out.println("{ $b=%d; break; }", g.target);
    }
    
    public void allocArray(AllocArray a) {
        if(a.sizes.size() == 1) {
            out.print("vm.newArray(cls%d,", generator.getClassIndex(a.type));
            code(a.sizes.get(0));
            out.print(") /*%s*/", a.type);
        } else {
            out.print("newMultiArray(%d",generator.getClassIndex(a.type));
            for(Code s : a.sizes) {
                out.print(",");
                code(s);
            }
            out.print(")");
        }
    }
    
    public void array(Array a) {
        code(a.array);
        out.print(".$a[");
        code(a.index);
        out.print("]");
    }
    
    public void arrayLength(ArrayLength a) {
        code(a.array);
        out.print(".$l");
    }
    
    String convert(Code c) {
        SourceWriter saved = out;
        out = new SourceWriter();
        code(c);
        String result = out.toString();
        out = saved;
        return result;
    }
    
    public void binary(Binop bin) {
        if(bin.op == Binop.Op.Cmp) {
            String l = convert(bin.left);
            String r = convert(bin.right);
            out.print("(" + l + " > " + r + ") - (" + l + " < " + r + ")");            
            return;
        }
        if(bin.op == Binop.Op.Cmpl) {
            String l = convert(bin.left);
            String r = convert(bin.right);
            out.print(String.format("(%s != %s || %s != %s) ? -1 : (%s > %s) - (%s < %s)", l, l, r, r, l, r, l, r));            
            return;
        }
        if(bin.op == Binop.Op.Cmpg) {
            String l = convert(bin.left);
            String r = convert(bin.right);
            out.print(String.format("(%s != %s || %s != %s) ? 1 : (%s > %s) - (%s < %s)", l, l, r, r, l, r, l, r));            
            return;
        }
        
        if(!DecompilerUtils.isFloatingNumber(bin.type)) out.print("(");
        code(bin.left);
        String sign = null;
        switch(bin.op) {
            case Add: sign="+";break;
            case Rem: sign="%";break;
            case Div: sign="/";break;
            case Sub: sign="-";break;
            case Mul: sign="*";break;
            case And: sign="&";break;
            case Or : sign="|";break;
            case Shl: sign="<<";break;
            case UShr: sign=">>>";break;
            case Shr: sign=">>";break;
            case Xor: sign="^";break;
            default: sign = bin.op.toString();
        }
        out.print(" %s ",sign);
        code(bin.right);
        if(!DecompilerUtils.isFloatingNumber(bin.type)) out.print(")|0");
    }
    
    public void assign(Assign a) {
        code(a.left);
        out.print("=");
        code(a.right);
        out.println(";");
    }
    
    public void switch_(Switch s) {
        for(int i=0; i<s.values.size(); i++) {
            //if(i>0) out.print("else ");
            out.print("if(");code(s.key);out.println("==%d) {$b=%d;break;}", s.values.get(i), s.labels.get(i));
            //out.println("case %d: $b=%d;break;", s.values.get(i), s.labels.get(i)); 
        }
        if(s.defaultLabel != -1) {
            out.println("$b=%d;", s.defaultLabel);
        }
        out.println("break;");
        
        /*
        out.print("switch(");
        code(s.key);
        out.println("){");
        for(int i=0; i<s.values.size(); i++) {
            out.println("case %d: $b=%d;break;", s.values.get(i), s.labels.get(i)); 
        }
        out.println("}");*/
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
    
    boolean generateVMCall(Call call) {
        if(!call.className.equals("cava/VM")) return false;
        switch(call.methodName) {
            case "ceil":
            case "sqrt":
            case "sin":
            case "cos":
                out.print("Math.%s(",call.methodName);
                for(int i=0; i<call.args.size(); i++) {
                    if(i > 0) out.print(",");
                    code(call.args.get(i));
                }
                out.print(")");
                return true;
                
            case "getArrayLength":
                code(call.args.get(0));
                out.print(".$l");
                return true;                
        }
        return false;
    }
    
    public void call(Call call) {
        if(generateVMCall(call)) return;
        Clazz c = CompilerContext.resolve(call.className);
        Method m = c.findMethod(call.methodName, call.signature);
        if(m == null) throw new RuntimeException("Cant find method: "+call.className+"::"+call.methodName+"::"+call.signature);   
        if(call.callType == Call.CallType.Virtual && m.virtualBaseClass != null) {
            Clazz vc = CompilerContext.resolve(m.virtualBaseClass);
            Method vm = vc.findMethod(m.name, m.signature);
            //cType.dependency.add(m.virtualBaseClass);
            code(call.args.get(0));
            out.print(".%s.$vt[%d](", generator.nameFor("java/lang/Object:klass"), vm.virtualTableIndex);
            //out.print("virtual_%s(",naming.method(m, m.virtualBaseClass));
        } else
        if(call.callType == Call.CallType.Interface) {
            if(m.interfaceImplementor != null) {
                m = m.interfaceImplementor;
                out.print("%s(",generator.nameFor(m));
                //out.print("%s(",naming.method(m));
                //cType.dependency.add(m.declaringClass);
            } else {
                code(call.args.get(0));
                out.print(".%s.$it[%d](", generator.nameFor("java/lang/Object:klass"), m.interfaceTableIndex);
                //out.print("interface_%s(",naming.method(m));
                //cType.dependency.add(m.declaringClass);
            }
        } else {    
            out.print("%s(",generator.nameFor(m));
            //out.print(naming.method(m)).print("(");
            //cType.dependency.add(m.declaringClass);
        }
        out.print("vm");
        for(int i=0; i<call.args.size(); i++) {
            out.print(",");
            code(call.args.get(i));
        }
        out.print(")");  
        out.print("/*%s:%s*/", call.className,call.methodName);
        //out.println("call");
    }
}
