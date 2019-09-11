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

import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class ReLooper {

    List<Block> blocks = new LinkedList();
    List<Shape> shapes = new LinkedList();
    Shape root;
    boolean emulate;
    int blockIdCounter = 1;
    int shapeIdCounter;

    public void addBlock(Block block, int id) {
        block.id = id == -1 ? blockIdCounter++ : id;
        blocks.add(block);
    }

    public void calculate(Block entry) {
        PreOptimizer pre = new PreOptimizer(this);
        pre.findLive(entry);

        // Add incoming branches from live blocks, ignoring dead code
        for (int i = 0; i < blocks.size(); i++) {
            Block curr = blocks.get(i);
            if (!pre.live.contains(curr)) {
                continue;
            }
            for (Block iter : curr.branchesOut.keySet()) {
                iter.branchesIn.add(curr);
            }
        }

        if (!emulate) {
            pre.splitDeadEnds();
        }

    }
}
