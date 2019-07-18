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

package compiler;

import com.strobel.assembler.metadata.DynamicCallSite;
import com.strobel.assembler.metadata.MetadataFilters;
import com.strobel.assembler.metadata.MetadataHelper;
import com.strobel.assembler.metadata.MethodDefinition;
import com.strobel.assembler.metadata.MethodHandle;
import com.strobel.assembler.metadata.MethodReference;
import com.strobel.assembler.metadata.ParameterDefinition;
import com.strobel.assembler.metadata.TypeReference;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Alloc;
import compiler.model.ast.Call;
import compiler.model.ast.DynamicCall;
import compiler.model.ast.Return;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mustafa
 */
public class LambdaGenerator {
    
    public static List<DynamicCall> pending = new ArrayList();
    
    public static void process() throws Exception {
        while(!pending.isEmpty()) {
            decompileLambda(pending.remove(0));
        }
    }
    
    static void decompileLambda(DynamicCall dc) throws Exception {
        DynamicCallSite callSite = dc.callSite;
        final MethodReference bootstrapMethod = callSite.getBootstrapMethod();
        boolean isLambdaMetafactory = 
        "java/lang/invoke/LambdaMetafactory".equals(bootstrapMethod.getDeclaringType().getInternalName()) && (  
        bootstrapMethod.getName().equalsIgnoreCase("metafactory") ||
        bootstrapMethod.getName().equalsIgnoreCase("altMetafactory")) &&
        callSite.getBootstrapArguments().size() >= 3 &&
        callSite.getBootstrapArguments().get(1) instanceof MethodHandle;                
        
        if(isLambdaMetafactory) {
            final MethodHandle targetMethodHandle = (MethodHandle) callSite.getBootstrapArguments().get(1);
            final MethodReference targetMethod = targetMethodHandle.getMethod();
            final MethodDefinition resolvedMethod = targetMethod.resolve();

            if (resolvedMethod == null ||
                resolvedMethod.getBody() == null ||
                !resolvedMethod.isSynthetic()) {

                throw new RuntimeException("Can't decompile lambda "+callSite);
            }    

            final TypeReference functionType = callSite.getMethodType().getReturnType();

            final List<MethodReference> methods = MetadataHelper.findMethods(
                functionType,
                MetadataFilters.matchName(callSite.getMethodName())
            );

            MethodReference functionMethod = null;

            for (final MethodReference m : methods) {
                final MethodDefinition r = m.resolve();

                if (r != null && r.isAbstract() && !r.isStatic() && !r.isDefault()) {
                    functionMethod = r;
                    break;
                }
            }

            if (functionMethod == null) {
                throw new RuntimeException("Can't decompile lambda "+callSite);
            }   
        
            Clazz lambdaClass = new Clazz();
            lambdaClass.name = resolvedMethod.getDeclaringType().getInternalName()+resolvedMethod.getName()+"$Lambda";
            lambdaClass.superName = "java/lang/Object";
            lambdaClass.interfaces.add(functionMethod.getDeclaringType().getInternalName());

            Method lambdaMethod = new Method();
            lambdaMethod.name = functionMethod.getName();
            lambdaMethod.type = DecompilerUtils.getTypeName(functionMethod.getReturnType());
            lambdaMethod.signature = DecompilerUtils.getSignature(functionMethod.getErasedSignature());
            lambdaMethod.declaringClass = lambdaClass.name;
            
            for(ParameterDefinition def : functionMethod.getParameters()) {
                lambdaMethod.args.add(new NameAndType(def));
            }
            //resolvedMethod.getBody().getVariables()

            Clazz targetClass = CompilerContext.resolve(resolvedMethod.getDeclaringType().getInternalName());
            Method targetCallMethod = targetClass.findDeclaredMethod(resolvedMethod.getName(), DecompilerUtils.getSignature(resolvedMethod.getErasedSignature()));
            if(targetCallMethod == null) throw new RuntimeException("Can't find method: "+resolvedMethod);

            Call call = new Call(targetCallMethod, targetCallMethod.isStatic() ? Call.CallType.Static : Call.CallType.Virtual);
            call.args = new ArrayList();
            if(!lambdaMethod.type.equals("V")) {
                lambdaMethod.body.children.add(new Return(call));
            } else {
                lambdaMethod.body.children.add(call);
            }
            
            lambdaClass.methods.add(lambdaMethod);
            dc.code = new Alloc(lambdaClass.name);
            CompilerContext.defineLambdaClass(lambdaClass);
        }
    }    
}
