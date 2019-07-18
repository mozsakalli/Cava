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
import java.io.Serializable;

/**
 *
 * @author mustafa
 */
public class Code implements Serializable {
    final static long serialVersionUID = 0;
    
    public int lineNumber = -1;
    public String inferredType;
    public String expectedType;
    
    public boolean isSimple() {
        return false;
    }
    
    public void replaceClassName(String src, String dest) {
        if(inferredType != null) inferredType = inferredType.replaceAll(src, dest);
        if(expectedType != null) expectedType = expectedType.replaceAll(src, dest);
    }
    
    public void visit(Visitor v) {
        throw new RuntimeException("No visitor");
        //v.code(this);
    }
    
    public boolean checkInferredType(String type) {
        return inferredType != null && inferredType.equals(type);
    }
    
    public boolean isPrimitiveInferred() {
        return inferredType != null && DecompilerUtils.isPrimitive(inferredType);
    }
    
}
