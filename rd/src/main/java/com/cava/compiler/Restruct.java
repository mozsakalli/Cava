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

import com.cava.compiler.code.Branch;
import com.cava.compiler.code.Code;
import com.cava.compiler.code.Goto;
import com.cava.compiler.code.Return;
import com.cava.compiler.code.Throw;
import com.cava.compiler.model.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Restruct {
    
    static class Block {
        public int start;
        public int end;
        public HashSet<Block> incoming = new HashSet();
        public HashSet<Block> outgoing = new HashSet();
        public List<Code> codes = new ArrayList();
    }
    
    public Restruct(Method method) {
        List<Block> blocks = new ArrayList();
        Block current = null;
        for(int i=0; i<method.body.size(); i++) {
            if(i==0 || method.labels.contains(i)) {
                current = new Block();
                current.start = i;
                blocks.add(current);
            }
            current.end = i;
            current.codes.add(method.body.get(i));
        }
        
        for(Block b : blocks) {
            for(Code c : b.codes) {
                if(c instanceof Branch) {
                    int target = ((Branch)c).target;
                    Block t = blocks.stream().filter(tb -> tb.start == target).findFirst().orElse(null);
                    b.outgoing.add(t);
                    t.incoming.add(b);
                }
            }
        }
        
        for(int i=0; i<blocks.size()-1; i++) {
            Block b1 = blocks.get(i);
            Block b2 = blocks.get(i+1);
            if(!b1.codes.isEmpty()) {
                Code c = b1.codes.get(b1.codes.size()-1);
                if(!(c instanceof Return) && !(c instanceof Goto) && !(c instanceof Throw)) {
                    b1.outgoing.add(b2);
                    b2.incoming.add(b1);
                }
            }
        }
        
        if(!method.declaringClass.equals("Test") || !method.name.equals("main")) return;
        
        for(Block b : blocks) {
            System.out.print("b "+b.start+" out:");
            for(Block b2 : b.outgoing) System.out.print(b2.start+",");
            System.out.print("  in:");
            for(Block b2 : b.incoming) System.out.print(b2.start+",");
            System.out.println();
        }
        
    }
}
