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

package compiler.model.ast;

import compiler.model.NameAndType;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Try extends Block {
    
    public List<NameAndType> catchVars;
    public List<List<String>> catchTypes;
    public List<Block> catchBlocks;
    public Block finallyBlock;
    
    @Override
    public void visit(Visitor v) {
        v.try_(this);
        super.visit(v);
        catchBlocks.forEach(b -> b.visit(v));
        catchTypes.forEach(l -> {
            if(l!=null) l.forEach(c -> v.visitClassReference(c));
        });
        
    }
    
    
}
