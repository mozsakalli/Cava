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

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class Block {
    
    public Map<Block, Branch> branchesOut = new HashMap();
    public Set<Block> branchesIn = new HashSet();

    public Map<Block, Branch> processedBranchesOut = new HashMap();
    public Set<Block> processedBranchesIn = new HashSet();
    
    Shape parent;
    int id;
    boolean isCheckedMultipleEntry;
    
    void render(boolean inLoop) {}
}
