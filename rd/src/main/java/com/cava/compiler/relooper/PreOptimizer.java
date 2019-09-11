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
package com.cava.compiler.relooper;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class PreOptimizer extends RelooperRecursor {

    Set<Block> live = new HashSet();

    public PreOptimizer(ReLooper parent) {
        super(parent);
    }

    public void findLive(Block root) {
        List<Block> toInvestigate = new ArrayList();
        toInvestigate.add(root);
        while (!toInvestigate.isEmpty()) {
            Block curr = toInvestigate.remove(0);
            if (live.contains(curr)) {
                continue;
            }
            live.add(curr);
            for (Block b : curr.branchesOut.keySet()) {
                toInvestigate.add(b);
            }
        }
    }

    // If a block has multiple entries but no exits, and it is small enough, it is useful to split it.
    // A common example is a C++ function where everything ends up at a final exit block and does some
    // RAII cleanup. Without splitting, we will be forced to introduce labelled loops to allow
    // reaching the final block
    void splitDeadEnds() {
        int totalCodeSize = 0;
        for (Block curr : live) {
            //totalSize += curr.bisi;
        }
        Set<Block> splits = new HashSet();
        Set<Block> removed = new HashSet();

        //DebugDump(Live, "before");
        for (Block iter : live) {
            Block original = iter;
            if (original.branchesIn.size() <= 1 || original.branchesOut.size() > 0) {
                continue; // only dead ends, for now
            }
            if (original.branchesOut.containsKey(original)) {
                continue; // cannot split a looping node
            }        //todo: if (strlen(Original->Code)*(Original->BranchesIn.size()-1) > TotalCodeSize/5) continue; // if splitting increases raw code size by a significant amount, abort
            // Split the node (for simplicity, we replace all the blocks, even though we could have reused the original)

            for (Block iterator : original.branchesIn) {
                Block prior = iter;
                Block split = new Block(); //todo: original code init
                parent.addBlock(split, original.id);
                split.branchesIn.add(prior);
                Branch details = prior.branchesOut.get(original);
                prior.branchesOut.put(split, new Branch(/*Details->Condition, Details->Code*/));
                prior.branchesOut.remove(original);
                for (Map.Entry<Block, Branch> iter2 : original.branchesOut.entrySet()) {
                    Block post = iter2.getKey();
                    Branch details2 = iter2.getValue();
                    split.branchesOut.put(post, new Branch(/*Details->Condition, Details->Code*/));
                    post.branchesIn.add(split);
                }
                splits.add(split);
                removed.add(original);
            }
            for (Map.Entry<Block, Branch> iter2 : original.branchesOut.entrySet()) {
                Block post = iter2.getKey();
                post.branchesIn.remove(original);
            }
            //DebugDump(Live, "mid");
        }
        for (Block b : splits) {
            live.add(b);
        }
        for (Block b : removed) {
            live.remove(b);
        }
        //DebugDump(Live, "after");
    }

}
