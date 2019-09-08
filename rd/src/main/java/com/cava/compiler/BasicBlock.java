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

import com.cava.compiler.code.Code;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.bcel.generic.BranchHandle;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.ReturnInstruction;

/**
 *
 * @author mustafa
 */
public class BasicBlock {
    
    public Set<BasicBlock> sources = new HashSet();
    public Set<BasicBlock> targets = new HashSet();
    
    
    public static void build(List<Code> codes) {
        /*
        List<BasicBlock> blocks = new ArrayList();
        //create basic blocks
        int[] marks = new int[codes.size()];
        //Block current = marks[0] = new Block(); //begin block
        for (int i = 0; i < codes.size(); i++) {
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

        MethodParser2.Block current = new MethodParser2.Block();
        blocks.add(current);
        for (int i = 0; i < ihs.length; i++) {
            InstructionHandle ih = ihs[i];
            int pos = ih.getPosition();
            if (marks[pos] == 1) {
                current = new MethodParser2.Block();
                blocks.add(current);
            } else if (marks[pos] == -1) {
                if (current == null) {
                    blocks.add(current = new MethodParser2.Block());
                }
                current.instructions.add(ih);
                current = null;
                continue;
            }
            if (current == null) {
                blocks.add(current = new MethodParser2.Block());
            }
            current.instructions.add(ih);
        }

        for (int i = 0; i < blocks.size(); i++) {
            MethodParser2.Block source = blocks.get(i);
            InstructionHandle ih = source.instructions.get(source.instructions.size() - 1);
            if (ih instanceof BranchHandle) {
                BranchHandle bh = (BranchHandle) ih;
                int target = bh.getTarget().getPosition();
                for (int k = 0; k < blocks.size(); k++) {
                    MethodParser2.Block tb = blocks.get(k);
                    if (tb.contains(bh.getTarget())) {
                        source.targets.add(tb);
                        tb.sources.add(source);
                    }
                }
            }

            if (i < blocks.size() - 1 && !source.isCompleted()) {
                MethodParser2.Block target = blocks.get(i + 1);
                source.targets.add(target);
                target.sources.add(source);
            }
        }

        for (MethodParser2.Block b : blocks) {
            b.calculateStackSize();
            b.labelName = "block" + blocks.indexOf(b);
            for (InstructionHandle ih : b.instructions) {
                if (ih instanceof BranchHandle) {
                    BranchHandle bh = (BranchHandle) ih;
                    for (MethodParser2.Block b2 : blocks) {
                        if (b2.contains(bh.getTarget())) {
                            //instructionTargets.put(ih.getInstruction(), b2);
                            break;
                        }
                    }
                }
            }
        }
        
        for(MethodParser2.Block b1 : blocks) {
            for(MethodParser2.Block b2 : b1.sources) {
                b1.stackStartSize = Math.max(b1.stackStartSize, b2.stackSize);
            }
        }
        */
    }
}
