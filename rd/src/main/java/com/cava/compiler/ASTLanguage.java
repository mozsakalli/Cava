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

import com.strobel.assembler.metadata.MethodBody;
import com.strobel.assembler.metadata.MethodDefinition;
import com.strobel.assembler.metadata.TypeDefinition;
import com.strobel.decompiler.DecompilationOptions;
import com.strobel.decompiler.DecompilerContext;
import com.strobel.decompiler.ITextOutput;
import com.strobel.decompiler.ast.AstBuilder;
import com.strobel.decompiler.ast.AstOptimizationStep;
import com.strobel.decompiler.ast.AstOptimizer;
import com.strobel.decompiler.ast.Block;
import com.strobel.decompiler.ast.Expression;
import com.strobel.decompiler.ast.Variable;
import com.strobel.decompiler.languages.Language;
import com.strobel.decompiler.languages.TypeDecompilationResults;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ASTLanguage extends Language {

    @Override
    public String getName() {
        return "AST";
    }

    @Override
    public String getFileExtension() {
        return ".ast";
    }

    @Override
    public TypeDecompilationResults decompileType(TypeDefinition type, ITextOutput output, DecompilationOptions options) {
        for (final MethodDefinition method : type.getDeclaredMethods()) {
            decompileMethod(method, output, options);
        }
        return new TypeDecompilationResults( null );      
    }

    
    @Override
    public void decompileMethod(MethodDefinition method, ITextOutput output, DecompilationOptions options) {
        System.out.println(method.getName());
        final MethodBody body = method.getBody();
        if(body != null) {
            final DecompilerContext context = new DecompilerContext();
            context.setCurrentMethod(method);
            context.setCurrentType(method.getDeclaringType());
            final Block methodAst = new Block();
            try {
                methodAst.getBody().addAll(AstBuilder.build(body, true, context));
            }catch(Exception e){
                methodAst.getBody().addAll(AstBuilder.build(body, false, context));
            }
            AstOptimizer.optimize(context, methodAst, AstOptimizationStep.CopyPropagation);
            System.out.println(methodAst);
        }        
        //super.decompileMethod(method, output, options); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
