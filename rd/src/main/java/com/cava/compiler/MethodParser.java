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

import com.cava.compiler.code.Arithmetic;
import com.cava.compiler.code.Code;
import com.cava.compiler.code.Const;
import com.cava.compiler.code.Dup;
import com.cava.compiler.code.Goto;
import com.cava.compiler.code.If;
import com.cava.compiler.code.Iinc;
import com.cava.compiler.code.Invoke;
import com.cava.compiler.code.Local;
import com.cava.compiler.code.Return;
import com.cava.compiler.code.Switch;
import com.cava.compiler.code.Throw;
import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.objectweb.asm.Handle;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

/**
 *
 * @author mustafa
 */
public class MethodParser extends MethodVisitor {

    Method method;
    Clazz cls;
    int stackSize;

    final static String INT = "I";
    final static String FLOAT = "F";
    final static String DOUBLE = "D";
    final static String LONG = "J";
    final static String OBJECT = "L";

    String[] stackType = new String[256];
    Set<String> vars = new HashSet();
    List<Code> codes = new ArrayList();
    
    public MethodParser(Clazz cls, Method method, MethodVisitor mv) {
        super(Opcodes.ASM5, mv);
        this.cls = cls;
        this.method = method;
    }

    @Override
    public void visitEnd() {
        final Map<String, List<String>> vr = new HashMap();
        vars.forEach(v -> {
            String t = ""+v.charAt(v.length() - 1);
            List<String> list = vr.computeIfAbsent(t, (k) -> new ArrayList());
            list.add(v);
        });
        
        vr.forEach((k,v) -> {
            switch(k) {
                case INT: System.out.print("int ");break;
                case OBJECT: System.out.print("void ");break;
            }
            for(int i=0; i<v.size(); i++) {
                if(i > 0) System.out.print(",");
                System.out.print(v.get(i));
            }
            System.out.println();
        });
        super.visitEnd(); //To change body of generated methods, choose Tools | Templates.
    }

    /*
    void push(String type, Object value) {
        String var = "stack" + stackSize + type;
        vars.add(var);
        System.out.println(var + " = " + value+";");
        stackType[stackSize++] = type;
    }

    String pop() {
        return "stack" + (--stackSize) + stackType[stackSize];
    }

    String local(String type, int index) {
        String var = "local"+index+type;
        vars.add(var);
        return var;
    }
    */
    
    @Override
    public void visitLineNumber(int line, Label start) {
        //System.out.println("line: " + line);
        super.visitLineNumber(line, start); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitMultiANewArrayInsn(String desc, int dims) {
        throw new RuntimeException("Unimplemented visitMultiANewArrayInsn");
        //super.visitMultiANewArrayInsn(desc, dims);
    }

    @Override
    public void visitLookupSwitchInsn(Label dflt, int[] keys, Label[] labels) {
        String[] lbls = new String[keys.length];
        for(int i=0; i<keys.length; i++) lbls[i] = labels[i].toString();
        codes.add(new Switch(keys,lbls,dflt!=null ? dflt.toString() : null));
        /*
        System.out.println("switch("+pop()+") {");
        for(int i=0; i<keys.length; i++) {
            System.out.println("case "+keys[i]+": goto "+labels[i].toString());
        }
        if(dflt != null)
            System.out.println("default: goto "+dflt.toString());
        System.out.println("}");
        */
        //throw new RuntimeException("Unimplemented visitLookupSwitchInsn");
        super.visitLookupSwitchInsn(dflt, keys, labels); 
    }

    @Override
    public void visitTableSwitchInsn(int min, int max, Label dflt, Label... labels) {
        int[] keys = new int[labels.length];
        String[] lbls = new String[labels.length];
        for(int i=0; i<keys.length; i++) {
            keys[i] = min+i;
            lbls[i] = labels[i].toString();
        }
        codes.add(new Switch(keys,lbls,dflt != null ? dflt.toString() : null));
        /*
        System.out.println("switch("+pop()+"){");
        for(int i=0; i<labels.length; i++) {
            System.out.println("case "+(min+i)+": goto "+labels[i].toString()+";");
        }
        if(dflt != null)
            System.out.println("default: goto "+dflt.toString()+";");
        System.out.println("}");
        */
        super.visitTableSwitchInsn(min,max, dflt, labels);
    }

    @Override
    public void visitIincInsn(int var, int increment) {
        codes.add(new Iinc(var, increment));
        //System.out.println(local(INT,var) + " += "+increment+";");
        super.visitIincInsn(var, increment); 
    }

    @Override
    public void visitLabel(Label label) {
        //System.out.println(label.toString() + ":");
        codes.add(new com.cava.compiler.code.Label(label.toString()));
        super.visitLabel(label);
    }

    @Override
    public void visitJumpInsn(int opcode, Label label) {
        switch (opcode) {
            case Opcodes.IFEQ:
                codes.add(new If(opcode, label.toString()));
                //System.out.println("if("+pop()+" == 0) goto "+label.toString()+";");
                break;
                
            case Opcodes.IFNULL:
                codes.add(new If(opcode, label.toString()));
                //System.out.println("if("+pop()+" == NULL) goto "+label.toString()+";");
                break;
                
            case Opcodes.IF_ICMPGE:
                /*String v2 = pop();
                String v1 = pop();
                System.out.println("if("+v1+" >= "+v2+") goto "+label.toString()+";");
                */
                codes.add(new If(opcode, label.toString()));
                break;
                
            case Opcodes.GOTO:
                codes.add(new Goto(label.toString()));
                //System.out.println("goto "+label.toString()+";");
                break;
                
            default:
                throw new RuntimeException("Unknown jump: " + opcode);
        }
        //mtd.addJump(opcode, label);
        super.visitJumpInsn(opcode, label); 
    }

    @Override
    public void visitInvokeDynamicInsn(String name, String desc, Handle bsm, Object... bsmArgs) {
        throw new RuntimeException("Unimplemented");
        //super.visitInvokeDynamicInsn(name, desc, bsm, bsmArgs);
    }

    @Override
    public void visitMethodInsn(int opcode, String owner, String name, String desc, boolean itf) {
        codes.add(new Invoke(opcode, owner, name, desc));
        /*
        List<String> args = DecompilerUtils.parseSignature(desc);
        String type = args.remove(args.size() - 1);
        String call = owner+"."+name+"(";
        int argCount = args.size();
        if(opcode != Opcodes.INVOKESTATIC) argCount++;
        for(int i=0; i<argCount; i++) {
            if(i > 0) call += ",";
            call += pop();
        }
        call += ")";
        if(!type.equals("V")) {
            switch(type) {
                case INT: 
                case "Z":
                case "S":
                case "C":
                case "B":    
                    push(INT,call);break;
                case FLOAT: push(FLOAT,call);break;
                case DOUBLE: push(DOUBLE,call);break;
                case LONG: push(LONG,call);break;
                default: push(OBJECT,call);
            }
        } else System.out.println(call);
        //throw new RuntimeException("Unimplemented");*/
        super.visitMethodInsn(opcode, owner, name, desc, itf);
    }

    @Override
    public void visitFieldInsn(int opcode, String owner, String name, String desc) {
        throw new RuntimeException("Unimplemented");
        //super.visitFieldInsn(opcode, owner, name, desc);
    }

    @Override
    public void visitTypeInsn(int opcode, String type) {
        /*
        switch(opcode) {
            case Opcodes.NEW:
                push(OBJECT, "alloc("+type+")");
                break;
                
            case Opcodes.ANEWARRAY:
                push(OBJECT, "alloc_array("+type+")");
                break;
                
            case Opcodes.CHECKCAST:
                System.out.println("check_cast("+pop()+","+type+")");
                break;
                
            default: throw new RuntimeException("Unknown opcode: "+opcode);
                
        }*/
        throw new RuntimeException("Unimplemented");
        //super.visitTypeInsn(opcode, type);
    }

    @Override
    public void visitVarInsn(int opcode, int var) {
        /*
        switch(opcode) {
            case Opcodes.ILOAD:
                push(INT, local(INT,var));
                break;
                
            case Opcodes.ALOAD:
                push(OBJECT, local(OBJECT,var));
                break;
            
            case Opcodes.ASTORE:
                System.out.println(local(OBJECT,var)+" = "+pop()+";");
                break;
                
            case Opcodes.ISTORE:
                System.out.println(local(INT,var)+" = "+pop()+";");
                break;
                
            case Opcodes.DSTORE:
                System.out.println(local(DOUBLE,var)+" = "+pop()+";");
                break;
                
            default: throw new RuntimeException("Unknown opcode: "+opcode);
        }*/
        codes.add(new Local(opcode,var));
        //throw new RuntimeException("Unimplemented");
        super.visitVarInsn(opcode, var);
    }

    @Override
    public void visitIntInsn(int opcode, int operand) {
        switch(opcode) {
            case Opcodes.BIPUSH:
                codes.add(new Const(INT, operand));
                //push(INT, operand);
                break;
                
            default: throw new RuntimeException("Unknown opcode: "+opcode);
        }
        //throw new RuntimeException("Unimplemented");
        //super.visitIntInsn(opcode, operand);
    }

    @Override
    public void visitLdcInsn(Object value) {
        if (value instanceof Integer) {
            //push(INT, value);
            codes.add(new Const(INT, value));
        } else if (value instanceof Float) {
            //push(FLOAT, value);
            codes.add(new Const(FLOAT, value));
        } else if (value instanceof Double) {
            //push(DOUBLE, value);
            codes.add(new Const(DOUBLE, value));
        } else if (value instanceof Long) {
            //push(LONG, value);
            codes.add(new Const(LONG, value));
        } else if (value instanceof String || value instanceof Type) {
            //push(OBJECT, value);
            codes.add(new Const(OBJECT, value));
        } else {
            throw new RuntimeException("Unknown constant type: " + value.getClass());
        }
        super.visitLdcInsn(value); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitInsn(int opcode) {
        switch (opcode) {
            case Opcodes.ICONST_M1:
                //push(INT, -1);
                codes.add(new Const(INT, -1));
                break;

            case Opcodes.ICONST_0:
            case Opcodes.ICONST_1:
            case Opcodes.ICONST_2:
            case Opcodes.ICONST_3:
            case Opcodes.ICONST_4:
            case Opcodes.ICONST_5:
                codes.add(new Const(INT, opcode - Opcodes.ICONST_0));
                //push(INT, opcode - Opcodes.ICONST_0);
                break;

            case Opcodes.DCONST_0:
            case Opcodes.DCONST_1:
                codes.add(new Const(DOUBLE, opcode - Opcodes.DCONST_0));
                //push(DOUBLE, opcode - Opcodes.DCONST_0);
                break;
                
            case Opcodes.DUP:
                //push(stackType[stackSize - 1], "stack" + (stackSize - 1) + stackType[stackSize - 1]);
                codes.add(new Dup(opcode));
                break;

            case Opcodes.ARETURN:
            case Opcodes.IRETURN:
                //System.out.println("return "+pop()+";");
                codes.add(new Return(opcode));
                break;
                
            case Opcodes.RETURN:
                codes.add(new Return(opcode));
                //System.out.println("return;");
                break;

            case Opcodes.ATHROW:
                codes.add(new Throw());
                //System.out.println("throw " + pop());
                break;

            case Opcodes.IADD:
                codes.add(new Arithmetic(opcode));
                //push(INT, pop()+"+"+pop()+";");
                break;
                
            case Opcodes.IMUL:
                codes.add(new Arithmetic(opcode));
                //push(INT, pop()+"*"+pop()+";");
                break;
                
            default:
                throw new RuntimeException("Unknown opcode: " + opcode);
        }
        super.visitInsn(opcode); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLocalVariable(String name, String descriptor, String signature, Label start, Label end, int index) {
        //System.out.println("var: "+name+" "+descriptor+" - "+index);
        super.visitLocalVariable(name, descriptor, signature, start, end, index); //To change body of generated methods, choose Tools | Templates.
    }

}
