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
import java.util.Set;
import org.apache.bcel.generic.BranchHandle;
import org.apache.bcel.generic.ConstantPoolGen;
import org.apache.bcel.generic.Instruction;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.InstructionList;
import org.apache.bcel.generic.MethodGen;
import org.apache.bcel.generic.ReturnInstruction;
import org.apache.bcel.verifier.structurals.ControlFlowGraph;
import org.apache.bcel.verifier.structurals.Frame;

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
        int index;
        StackCalculator stack;
        public int firstStack;
        public String firstType;
        
        public Block(int index) {
            this.index = index;
        }
        
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
        
        public StackCalculator getStack(ConstantPoolGen cpg) {
            if(stack == null) {
                stack = new StackCalculator(cpg);
                for(InstructionHandle i : this.instructions)
                    i.accept(stack);
            }
            return stack;
        }
        
        public Set<Block> getAllTargets() {
            Set<Block> result = new HashSet();
            List<Block> queue = new ArrayList();
            queue.addAll(targets);
            int index = 0;
            while(index < queue.size()) {
                Block b = queue.get(index++);
                if(b.index > index) result.add(b);
                for(Block t : b.targets) {
                    if(!queue.contains(t) && t.index > index) queue.add(t);
                }
            }
            return result;
            /*
            Set<Block> result = new HashSet();
            result.addAll(targets);
            for(Block b : targets)
                result.addAll(b.getAllTargets());
            return result;
            */
        }

        @Override
        public String toString() {
            return "Block "+index;
        }
        
    }
    List<Block> blocks = new ArrayList();

    public MethodParser2(Clazz cls, Method method, org.apache.bcel.classfile.Method jmethod) {
        cpg = new ConstantPoolGen(jmethod.getConstantPool());
        MethodGen mg = new MethodGen(jmethod, method.declaringClass, cpg);
        
        InstructionList il = mg.getInstructionList();
        il.setPositions();

        InstructionHandle[] ihs = il.getInstructionHandles();

        ControlFlowGraph cfg = new ControlFlowGraph(mg);
        for(int i=0; i<ihs.length; i++) {
            Frame frame = cfg.contextOf(ihs[i]).getInFrame();
            System.out.println(frame);
        }
        
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

        Block current = new Block(0);
        blocks.add(current);
        for (int i = 0; i < ihs.length; i++) {
            InstructionHandle ih = ihs[i];
            int pos = ih.getPosition();
            if (marks[pos] == 1) {
                current = new Block(blocks.size());
                blocks.add(current);
            } else if (marks[pos] == -1) {
                if (current == null) {
                    blocks.add(current = new Block(blocks.size()));
                }
                current.instructions.add(ih);
                current = null;
                continue;
            }
            if (current == null) {
                blocks.add(current = new Block(blocks.size()));
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
            //b.calculateStackSize(cpg);
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
            if(b1.index == 0) continue;
            StackCalculator s1 = b1.getStack(cpg);
            for(Block b2 : b1.sources) {
                StackCalculator s2 = b2.getStack(cpg);
                int size = 0;
                String type = null;
                if(b2.firstStack > s2.getSize()) {
                    size = b2.firstStack;
                    type = b2.firstType;
                } else {
                    size = s2.getSize();
                    type = s2.getType();
                }
                if(size > b1.firstStack) {
                    b1.firstStack = size;
                    b1.firstType = type;
                }
            }
        }

        /*
        for(Block b : blocks) {
            GeneratorVisitor v = new GeneratorVisitor(cpg, b.firstStack, b.firstType);
            System.out.println("label"+b.instructions.get(0).getPosition()+":");
            for(InstructionHandle ih : b.instructions) {
                v.generate(ih);
            }
        }*/
        
        
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

            System.out.println("--- block " + b.index + "  " + str+"  stack:"+b.getStack(cpg).getSize()+"  start:"+b.firstStack+" type:"+b.firstType);
            for (InstructionHandle ih : b.instructions) {
                System.out.println(ih.getPosition() + ": " + ih);
            }
            //processBlock(b);
        }
        
    }
    
    void parseBlock(Block b) {
        
    }
}
