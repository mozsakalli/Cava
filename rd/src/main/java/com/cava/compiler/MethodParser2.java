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

import com.cava.compiler.model.Clazz;
import com.cava.compiler.model.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.apache.bcel.generic.ArithmeticInstruction;
import org.apache.bcel.generic.BranchHandle;
import org.apache.bcel.generic.ConstantPoolGen;
import org.apache.bcel.generic.IfInstruction;
import org.apache.bcel.generic.Instruction;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.InstructionList;
import org.apache.bcel.generic.MethodGen;
import org.apache.bcel.generic.PopInstruction;
import org.apache.bcel.generic.PushInstruction;
import org.apache.bcel.generic.ReturnInstruction;

/**
 *
 * @author mustafa
 */
public class MethodParser2 {

    ConstantPoolGen cpg;

    static class Block {

        List<InstructionHandle> instructions = new ArrayList();
        HashSet<Block> sources = new HashSet();
        HashSet<Block> targets = new HashSet();
        List<Instruction> compiledInstructions;
        public String labelName;
        public int stackSize;
        public int stackStartSize;
        
        public int getStart() {
            return instructions.get(0).getPosition();
        }

        public int getEnd() {
            return instructions.get(instructions.size() - 1).getPosition();
        }

        public boolean contains(InstructionHandle ih) {
            int pos = ih.getPosition();
            return pos >= getStart() && pos <= getEnd();
        }
        
        public boolean isCompleted() {
            InstructionHandle ih = instructions.get(instructions.size()-1);
            int op = ih.getInstruction().getOpcode();
            return ((op>=org.apache.bcel.Const.IRETURN && op<=org.apache.bcel.Const.RETURN) || 
                    op == org.apache.bcel.Const.ATHROW || op == org.apache.bcel.Const.GOTO || op == org.apache.bcel.Const.GOTO_W);
        }
        
        public void calculateStackSize() {
            stackSize = 0;
            instructions.forEach(i -> {
                if(i.getInstruction() instanceof PushInstruction) stackSize++;
                else if(i.getInstruction() instanceof PopInstruction) stackSize--;
                else if(i.getInstruction() instanceof IfInstruction) stackSize -=2;
                else if(i.getInstruction() instanceof ArithmeticInstruction) stackSize--;
                else System.out.println(i+" = "+i.getInstruction().getClass());
            });
        }
    }
    List<Block> blocks = new ArrayList();

    public MethodParser2(Clazz cls, Method method, org.apache.bcel.classfile.Method jmethod) {
        cpg = new ConstantPoolGen(jmethod.getConstantPool());
        MethodGen mg = new MethodGen(jmethod, method.declaringClass, cpg);

        InstructionList il = mg.getInstructionList();
        il.setPositions();

        InstructionHandle[] ihs = il.getInstructionHandles();

        //create basic blocks
        int[] marks = new int[ihs[ihs.length - 1].getPosition() + 1];
        //Block current = marks[0] = new Block(); //begin block
        for (int i = 0; i < ihs.length; i++) {
            InstructionHandle ih = ihs[i];
            int pos = ih.getPosition();

            if (ih.getInstruction() instanceof ReturnInstruction) {
                marks[pos] = -1; //eof
            } else if (ih instanceof BranchHandle) {
                BranchHandle bh = (BranchHandle) ih;
                int target = bh.getTarget().getPosition();
                marks[target] = 1; //begin
                marks[pos] = -1;
            }
        }

        Block current = new Block();
        blocks.add(current);
        for (int i = 0; i < ihs.length; i++) {
            InstructionHandle ih = ihs[i];
            int pos = ih.getPosition();
            if (marks[pos] == 1) {
                current = new Block();
                blocks.add(current);
            } else if (marks[pos] == -1) {
                if (current == null) {
                    blocks.add(current = new Block());
                }
                current.instructions.add(ih);
                current = null;
                continue;
            }
            if (current == null) {
                blocks.add(current = new Block());
            }
            current.instructions.add(ih);
        }

        for (int i = 0; i < blocks.size(); i++) {
            Block source = blocks.get(i);
            InstructionHandle ih = source.instructions.get(source.instructions.size() - 1);
            if (ih instanceof BranchHandle) {
                BranchHandle bh = (BranchHandle) ih;
                int target = bh.getTarget().getPosition();
                for (int k = 0; k < blocks.size(); k++) {
                    Block tb = blocks.get(k);
                    if (tb.contains(bh.getTarget())) {
                        source.targets.add(tb);
                        tb.sources.add(source);
                    }
                }
            }

            if (i < blocks.size() - 1 && !source.isCompleted()) {
                Block target = blocks.get(i + 1);
                source.targets.add(target);
                target.sources.add(source);
            }
        }

        for (Block b : blocks) {
            b.calculateStackSize();
            b.labelName = "block" + blocks.indexOf(b);
            for (InstructionHandle ih : b.instructions) {
                if (ih instanceof BranchHandle) {
                    BranchHandle bh = (BranchHandle) ih;
                    for (Block b2 : blocks) {
                        if (b2.contains(bh.getTarget())) {
                            //instructionTargets.put(ih.getInstruction(), b2);
                            break;
                        }
                    }
                }
            }
        }
        
        for(Block b1 : blocks) {
            for(Block b2 : b1.sources) {
                b1.stackStartSize = Math.max(b1.stackStartSize, b2.stackSize);
            }
        }

        //for(int i=0; i<parameters.size(); i++)
        //    locals[i] = parameters.get(i);
        for (Block b : blocks) {
            String str = "in[";
            for (Block b2 : b.sources) {
                str += blocks.indexOf(b2) + ",";
            }
            str += "] out[";
            for (Block b2 : b.targets) {
                str += blocks.indexOf(b2) + ",";
            }
            str += "]";

            System.out.println("--- block " + blocks.indexOf(b) + "  " + str+"  stack:"+b.stackSize+"  start:"+b.stackStartSize);
            for (InstructionHandle ih : b.instructions) {
                System.out.println(ih.getPosition() + ": " + ih);
            }
            //processBlock(b);
        }
    }
    
    void parseBlock(Block b) {
        
    }
}
