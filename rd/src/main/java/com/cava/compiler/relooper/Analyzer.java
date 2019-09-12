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

import java.util.HashSet;
import java.util.Set;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class Analyzer extends RelooperRecursor {

    public Analyzer(ReLooper parent) {
        super(parent);
    }

    // Add a shape to the list of shapes in this Relooper calculation
    void notice(Shape New) {
        New.id = parent.shapeIdCounter++;
        parent.shapes.add(New);
    }

    // Create a list of entries from a block. If LimitTo is provided, only results in that set
    // will appear
    void getBlocksOut(Block source, Set<Block> entries, Set<Block> limitTo) {
        for (Block iter : source.branchesOut.keySet()) {
            if (limitTo == null || limitTo.contains(iter)) {
                entries.add(iter);
            }
        }
    }

    // Converts/processes all branchings to a specific target
    void solipsize(Block target, Branch.FlowType type, Shape ancestor, Set<Block> from) {
        for (Block iter : target.branchesIn) {
            Block prior = iter;
            if (!from.contains(prior)) {
                continue;
            }
            Branch priorOut = prior.branchesOut.get(target);
            priorOut.ancestor = ancestor;
            priorOut.type = type;
            MultipleShape multiple;
            if ((multiple = Shape.isMultiple(ancestor)) != null) {
                multiple.breaks++; // We are breaking out of this Multiple, so need a loop
            }
            //iter++; // carefully increment iter before erasing
            target.branchesIn.remove(prior);
            target.processedBranchesIn.add(prior);
            prior.branchesOut.remove(target);
            prior.processedBranchesOut.put(target, priorOut);
        }
    }

    Shape makeSimple(Set<Block> blocks, Block inner, Set<Block> nextEntries) {
        SimpleShape simple = new SimpleShape();
        notice(simple);
        simple.inner = inner;
        inner.parent = simple;
        if (blocks.size() > 1) {
            blocks.remove(inner);
            getBlocksOut(inner, nextEntries, blocks);
            Set<Block> justInner = new HashSet();
            justInner.add(inner);
            for (Block iter : nextEntries) {
                solipsize(iter, Branch.FlowType.Direct, simple, justInner);
            }
        }
        return simple;
    }

    Shape makeLoop(Set<Block> blocks, Set<Block> entries, Set<Block> nextEntries) {
        // Find the inner blocks in this loop. Proceed backwards from the entries
        // until
        // you reach a seen block, collecting as you go.
        Set<Block> innerBlocks = new HashSet();
        Set<Block> queue = entries;
        while (!queue.isEmpty()) {
            Block curr = queue.iterator().next();
            queue.remove(curr);
            if (!innerBlocks.contains(curr)) {
                // This element is new, mark it as inner and remove from outer
                innerBlocks.add(curr);
                blocks.remove(curr);
                // Add the elements prior to it
                for (Block iter : curr.branchesIn) {
                    queue.add(iter);
                }
            }
        }
        assert (!innerBlocks.isEmpty());

        for (Block curr : innerBlocks) {
            for (Block iter : curr.branchesOut.keySet()) {
                Block possible = iter;
                if (!innerBlocks.contains(possible)) {
                    nextEntries.add(possible);
                }
            }
        }

        LoopShape loop = new LoopShape();
        notice(loop);

        // Solipsize the loop, replacing with break/continue and marking branches
        // as Processed (will not affect later calculations)
        // A. Branches to the loop entries become a continue to this shape
        for (Block iter : entries) {
            solipsize(iter, Branch.FlowType.Continue, loop, innerBlocks);
        }
        // B. Branches to outside the loop (a next entry) become breaks on this
        // shape
        for (Block iter : nextEntries) {
            solipsize(iter, Branch.FlowType.Break, loop, innerBlocks);
        }
        // Finish up
        Shape inner = null;//process(innerBlocks, entries, null);
        loop.inner = inner;
        return loop;
    }
    
      
}
