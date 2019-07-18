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

import compiler.DecompilerUtils;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class InitArray extends Code {
    
    public String elementType;
    public List<Code> elements;
    
    public InitArray(){}
    public InitArray(String elementType, List<Code> elements) {
        this.elementType = elementType;
        this.elements = elements;
    }

    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        if(elementType.equals(src)) elementType = dest;
        elements.forEach(e -> e.replaceClassName(src, dest));
    }

    @Override
    public void visit(Visitor v) {
        v.initArray(this);
        elements.forEach(e -> e.visit(v));
        if(!DecompilerUtils.isPrimitive(elementType))
            v.visitClassReference(elementType);
    }
    
    
}
