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

package compiler.backend.c;

import compiler.CompilerContext;
import compiler.DecompilerUtils;
import compiler.backend.CodeWriter;
import compiler.backend.INameManager;
import compiler.backend.SourceWriter;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Alloc;
import compiler.model.ast.ArrayAccess;
import compiler.model.ast.ArrayLength;
import compiler.model.ast.Binary;
import compiler.model.ast.Block;
import compiler.model.ast.Break;
import compiler.model.ast.Call;
import compiler.model.ast.Cast;
import compiler.model.ast.CaughtException;
import compiler.model.ast.CheckCast;
import compiler.model.ast.ClassInit;
import compiler.model.ast.ClassRef;
import compiler.model.ast.Code;
import compiler.model.ast.Const;
import compiler.model.ast.Field;
import compiler.model.ast.Inc;
import compiler.model.ast.InitArray;
import compiler.model.ast.InstanceOf;
import compiler.model.ast.Local;
import compiler.model.ast.Monitor;
import compiler.model.ast.NewArray;
import compiler.model.ast.Return;
import compiler.model.ast.Throw;
import compiler.model.ast.TryCatch;
import java.util.List;
import java.util.Stack;

/**
 *
 * @author mustafa
 */
public class CWriter extends CodeWriter {
    
    CType cType;
    Stack<Integer> returnExceptionId = new Stack();
    List<NameAndType> globalRefs;

    public CWriter(Method method, SourceWriter out, INameManager naming, CType cType, List<NameAndType> globalRefs) {
        super(method, out, naming);
        this.cType = cType;
        this.globalRefs = globalRefs;
    }
    
    public void requireInclude(String name) {
        addCustomData("customIncludes", name);
    }
    
    @Override
    public void write(Inc i) {
        int amount = (Integer)(((Const)i.amount).value);
        if(i.isPost) {
            write(i.value);
            switch(amount) {
                case 1: out.print("++");break;
                case -1: out.print("--");break;
                default: out.print("+=%d",amount);
            }
        } else {
            switch(amount) {
                case 1: out.print("++");write(i.value);break;
                case -1: out.print("--");write(i.value);break;
                default: write(i.value);out.print("+=%d",amount);
            }
        }
    }

    @Override
    public void write(Field field) {
        NameAndType fieldDef = CompilerContext.resolve(field.className).findField(field.name);
        if(fieldDef == null) throw new RuntimeException("Cant find field: "+field.className+"::"+field.name);
        if(fieldDef.isStatic() && !DecompilerUtils.isPrimitive(fieldDef.type) && !fieldDef.type.equals("java/lang/Class")) {
            int index = globalRefs.indexOf(fieldDef);
            if(index == -1) throw new RuntimeException("Cant find global ref (static field "+field.className+"::"+field.name);
            out.print("JVMGLOBALS[%d]", index);
        } else {
            if(field.base != null) {
                out.print("((%s*)(", naming.clazz(fieldDef.declaringClass));
                write(field.base);
                out.print("))->");
            }
            out.print(naming.field(fieldDef));
        }
        cType.dependency.add(fieldDef.declaringClass);
    }

    @Override
    public void write(Binary b) {
        if(b.operand == Binary.Op.UShr) {
            out.print("(((u_%s)", cType.toC(b.expectedType));
            write(b.left);
            out.print(") >> (");
            write(b.right);
            out.print("))");
        }
        else
        if(b.operand == Binary.Op.FRem) {
            if(b.expectedType.equals("F"))
                out.print("fmodf(");
            else
                out.print("fmod(");
            write(b.left);
            out.print(",");
            write(b.right);
            out.print(")");
        }   
        else
        if(b.operand == Binary.Op.LogicalNot) {
            out.print("!(");
            write(b.left);
            out.print(")");
        } else {
            if(!b.left.isSimple()) out.print("(");
            write(b.left);
            if(!b.left.isSimple()) out.print(")");
            String op = binOp(b.operand);
            out.print(" %s ",op);
            if(!b.right.isSimple()) out.print("(");
            write(b.right);
            if(!b.right.isSimple()) out.print(")");
        }
    }

    @Override
    public void write(Cast c) {
        if(!c.source.equals(c.target)) {
            cType.dependency.add(c.target);
            out.print("((%s)(", cType.toC(c.target));
            write(c.value);
            out.print("))");
        }
    }

    //todo: find better way!!
    Code verifyBoxingForNative(Code code) {
        if(code instanceof Call) {
            Call call = (Call)code;
            if(call.methodName.equals("valueOf")) {
                code = call.args.get(0);
            }
        }
        
        return code;
    }
    
    @Override
    public void write(Call call) {
        if(call.className.equals("cava/platform/NativeCode")) {
            String pattern = ((Const)call.args.get(0)).value.toString();
            if(call.args.size()>1 && call.args.get(1) instanceof InitArray) {
                InitArray ia = (InitArray)call.args.get(1);
                Object[] args = new String[ia.elements.size()];
                SourceWriter tmp = new SourceWriter();
                SourceWriter saved = this.out;
                this.out = tmp;
                for(int i=0; i<args.length; i++) {
                    Code code = verifyBoxingForNative(ia.elements.get(i));
                    /*
                    if(code instanceof Call)
                        code = ((Call)code).args.get(0);*/
                    this.write(code);
                    args[i] = tmp.toString();
                    tmp.clear();
                }
                try {
                    pattern = String.format(pattern, args);
                } catch(Exception e){
                    throw new RuntimeException(e.getMessage()+" at "+method, e.getCause());
                }
                this.out = saved;
            }
            out.print(pattern);
            return;
        }
        Clazz c = CompilerContext.resolve(call.className);
        Method m = c.findMethod(call.methodName, call.signature);
        if(m == null) throw new RuntimeException("Cant find method: "+call.className+"::"+call.methodName+"::"+call.signature);
        if(call.callType == Call.CallType.Virtual && m.virtualBaseClass != null) {
            cType.dependency.add(m.virtualBaseClass);
            out.print("virtual_%s(",naming.method(m, m.virtualBaseClass));
        } else
        if(call.callType == Call.CallType.Interface) {
            if(m.interfaceImplementor != null) {
                m = m.interfaceImplementor;
                out.print("%s(",naming.method(m));
                cType.dependency.add(m.declaringClass);
            } else {
                out.print("interface_%s(",naming.method(m));
                cType.dependency.add(m.declaringClass);
            }
        } else {    
            out.print(naming.method(m)).print("(");
            cType.dependency.add(m.declaringClass);
        }
        for(int i=0; i<call.args.size(); i++) {
            if(i > 0) out.print(",");
            write(call.args.get(i));
        }
        out.print(")");
    }

    @Override
    public void write(ArrayLength a) {
        out.print("JvmArrayLen(");
        write(a.array);
        out.print(")");
    }

    @Override
    public void write(ArrayAccess a) {
        String type = a.inferredType;
        if(type == null) type = a.expectedType;
        if(!DecompilerUtils.isPrimitive(type)) type = "O";
        if(a.value == null) {
            out.print("JvmArrayGet_%s(",type);
            write(a.array);
            out.print(",");
            write(a.index);
            out.print(")");
        } else {
            out.print("JvmArraySet_%s(",type);
            write(a.array);
            out.print(",");
            write(a.index);
            out.print(",");
            write(a.value);
            out.print(")");
        }
    }

    @Override
    public void write(NewArray a) {
        cType.dependency.add(a.elementType);
        boolean isPrim = DecompilerUtils.isPrimitive(a.elementType);
        String arrayClassName = a.elementType;
        for(int i=0 ;i<a.size.size(); i++) arrayClassName = "[" + arrayClassName;
        arrayClassName = naming.clazz(arrayClassName);
        out.print("JvmAlloc%sArray%s(&%s_Class", isPrim ? "Prim" : "Object", a.size.size(), arrayClassName);
        for(int i=0; i<a.size.size(); i++) {
            out.print(",");
            write(a.size.get(i));
        }
        out.print(")");
        /*
        if(DecompilerUtils.isPrimitive(a.elementType)) {
            out.print("JvmAllocPrimArray%d_%s(", a.size.size(), a.elementType);
            for(int i=0; i<a.size.size(); i++) {
                if(i > 0) out.print(",");
                write(a.size.get(i));
            }
            out.print(")");
        } else {
            out.print("JvmAllocArray%d(", a.size.size());
            out.print("&%s_Class", naming.clazz(a.elementType));
            for(Code c : a.size) {
                out.print(",");
                write(c);
            }
            out.print(")");
        }
        /*
        if(a.size.size() == 1) {
            cType.dependency.add(a.elementType);
            out.print("JvmAllocArray_%s(", DecompilerUtils.isPrimitive(a.elementType) ? a.elementType : "O");
            write(a.size.get(0));
            out.print(")");
        } else out.print(a);
        */
    }

    @Override
    public void write(Throw t) {
        out.print("JvmThrow(");
        write(t.value);
        out.print(")");
    }

    @Override
    public void write(Const c) {
        if(c.value == null) out.print("jnull");
        else if(c.value instanceof Boolean) out.print((Boolean)c.value ? "jtrue" : "jfalse");
        else if(c.value instanceof Float) {
            String value = c.value.toString();
            if(!value.contains("Infinity") && !value.contains("NaN"))
                out.print("%sf",value);
            else super.write(c);
        }
        else super.write(c);
    }

    @Override
    public void write(Alloc a) {
        cType.dependency.add(a.className);
        out.print("JvmAllocObject(&%s_Class)",naming.clazz(a.className));
    }

    @Override
    public void write(InstanceOf i) {
        cType.dependency.add(i.className);
        out.print("JvmInstanceOf(");
        write(i.value);
        out.print(",&%s_Class)", naming.clazz(i.className));
    }

    @Override
    public void write(CheckCast c) {
        cType.dependency.add(c.className);
        out.print("JvmCheckCast(");
        write(c.value);
        out.print(",&%s_Class)", naming.clazz(c.className));
    }

    @Override
    public void write(InitArray a) {
        cType.dependency.add(a.elementType);
        out.print("JvmInit%sArray1(&ArrOf_%s_Class,%d,(%s[]){", 
                DecompilerUtils.isPrimitive(a.elementType) ? "Prim" : "Object", 
                naming.clazz(a.elementType),
                a.elements.size(),
                cType.toC(a.elementType));
        
        //out.print("JvmInitArray_%s(%d,(%s[]){", DecompilerUtils.isPrimitive(a.elementType) ? a.elementType : "O",
        //        a.elements.size(), cType.toC(a.elementType));
        for(int i=0; i<a.elements.size(); i++) {
            if(i > 0) out.print(",");
            write(a.elements.get(i));
        }
        out.print("})");
        /*if(!DecompilerUtils.isPrimitive(a.elementType)) {
            out.print(",&%s_Class", naming.clazz("["+a.elementType));
        }*/
        //out.print(")");
    }

    @Override
    public void write(ClassRef c) {
        cType.dependency.add(c.className);
        out.print("&%s_Class", naming.clazz(c.className));
    }

    @Override
    public void write(Break b) {
        if(b.label != null) {
            out.print("goto %s", b.label.name);
        } else out.print("break");
    }

    @Override
    public void write(TryCatch t) {
        out.println("/* try */");
        out.println("jint exception%d = thread->exceptionCount++;", t.index);
        out.println("thread->exceptions[exception%d].framePtr = thread->framePtr;", t.index);
        out.println("if(setjmp(thread->exceptions[exception%d].jmp) == 0) {", t.index).indent();
        returnExceptionId.push(t.index);
        write((Block)t);
        returnExceptionId.pop();
        out.println("thread->exceptionCount = exception%d;", t.index)
           .undent().println("} else {").indent()
           .println("thread->exceptionCount = exception%d;", t.index);     
        //out.println("else {").indent();
        out.println("/* catch */");
        if(t.catchBlock != null)
            write(t.catchBlock);
        out.undent().println("}");
    }
    
    

    @Override
    public void write(Monitor m) {
        out.print("JvmMonitor%s(", m.isExit ? "Exit" : "Enter");
        write(m.object);
        out.print(")");
    }

    @Override
    public void write(ClassInit c) {
        cType.dependency.add(c.className);
        Method m = CompilerContext.resolve(c.className).findClassInitializer();
        out.print("%s()", naming.method(m));
    }

    @Override
    public void write(CaughtException c) {
        out.print("thread->exception");
    }

    @Override
    public void write(Return r) {
        if(r.value == null) {
            out.print("{ thread->framePtr = entryFramePtr; ");
            if(!returnExceptionId.isEmpty()) {
                out.print("thread->exceptionCount = exception%d; ",returnExceptionId.peek());
            }
            out.print("return; }");
        } else {
            //todo: dont use local variable for constant returns
            out.print("{ %s $$ret = ", cType.toC(method.type));
            write(r.value);
            out.print("; thread->framePtr = entryFramePtr; ");
            if(!returnExceptionId.isEmpty()) {
                out.print("thread->exceptionCount = exception%d; ",returnExceptionId.peek());
            }
            out.print("return $$ret; }");
        }
    }
    
    
    @Override
    public void writeLineNumber(int line) {
        out.println("JVMLINE(%d)", line);
    }

    @Override
    public void write(Local local) {
        out.print("LOCAL(%s,%s)",naming.local(local.ref), cType.toC(local.ref.type));
        if(currentLine != Integer.MAX_VALUE) {
            int[] loc = variableLocations.computeIfAbsent(local.ref.name, (k) -> new int[]{Integer.MAX_VALUE, Integer.MIN_VALUE});
            loc[0] = Math.min(loc[0], currentLine);
            loc[1] = Math.max(loc[1], currentLine);
        }
        
    }
    
}
