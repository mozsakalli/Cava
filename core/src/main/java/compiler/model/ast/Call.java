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

import com.strobel.assembler.metadata.MethodReference;
import compiler.DecompilerUtils;
import compiler.model.Method;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class Call extends Code {
    final static long serialVersionUID = 0;
     
    public String className;
    public String methodName;
    public String signature;
    public CallType callType;
    
    public List<Code> args;
    
    public Call(){}
    public Call(MethodReference mr, List<Code> args, CallType type) {
        className = DecompilerUtils.getTypeName(mr.getDeclaringType());
        signature = DecompilerUtils.getSignature(mr.getErasedSignature());
        methodName = mr.getName();
        this.args = args;
        callType = type;  
    }

    public Call(Method method, CallType type) {
        this.className = method.declaringClass;
        this.signature = method.signature;
        this.methodName = method.name;
        this.callType = type;
    }
    
    @Override
    public void replaceClassName(String src, String dest) {
        super.replaceClassName(src, dest); 
        if(className.equals(src)) className = dest;
        args.forEach(a -> a.replaceClassName(src, dest));
    }

    @Override
    public void visit(Visitor v) {
        v.call(this);
        args.forEach(a -> a.visit(v));
        v.visitClassReference(className);
    }

    @Override
    public boolean isSimple() {
        return true;
    }
    
    
    public static enum CallType {
        New,
        Special,
        Virtual,
        Static,
        Interface,
        Dynamic,
        Direct
    }

    
    
}
