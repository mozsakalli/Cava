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

import com.strobel.assembler.ir.attributes.AttributeNames;
import com.strobel.assembler.ir.attributes.SourceAttribute;
import com.strobel.assembler.ir.attributes.SourceFileAttribute;
import com.strobel.assembler.metadata.FieldDefinition;
import com.strobel.assembler.metadata.Flags;
import com.strobel.assembler.metadata.MethodBody;
import com.strobel.assembler.metadata.MethodDefinition;
import com.strobel.assembler.metadata.ParameterDefinition;
import com.strobel.assembler.metadata.TypeDefinition;
import com.strobel.assembler.metadata.TypeReference;
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
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Visitor;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class ModelLanguage extends Language {

    public Clazz clazz = new Clazz();
    
    public ModelLanguage() {
    }
    
    @Override
    public String getName() {
        return "Model Language";
    }

    @Override
    public String getFileExtension() {
        return ".model";
    }
    
    @Override
    public TypeDecompilationResults decompileType(final TypeDefinition type, final ITextOutput output, final DecompilationOptions options) {
        decompileType(type);
        for (final MethodDefinition method : type.getDeclaredMethods()) {
            decompileMethod(method, output, options);
        }
        /*
        clazz.extendedFromObjC = clazz.isExtendedFromObjC();
        
        //collect all interfaces
        Clazz tmp = clazz;
        while(tmp != null) {
            for(String intfName : tmp.interfaces) {
                Clazz intfClazz = CompilerContext.resolve(intfName);
                while(intfClazz != null) {
                    if(intfClazz.extendedFromObjC)
                        clazz.allObjCInterfaces.add(intfClazz.name);
                    else
                        clazz.allInterfaces.add(intfClazz.name);

                    intfClazz.childClasses.add(clazz.name);
                    CompilerContext.markClassModelDirty(intfClazz.name);
                    
                    if(intfClazz.superName == null || intfClazz.superName.equals("java/lang/Object")) break;
                    intfClazz = CompilerContext.resolve(intfClazz.superName);
                }
            }
            if(tmp.superName == null) break;
            tmp = CompilerContext.resolve(tmp.superName);
        }
        
        if(clazz.extendedFromObjC)
            System.out.println(clazz.name+" implements "+clazz.allInterfaces+" objc="+clazz.allObjCInterfaces);
        
        //link methods
        if(!clazz.isInterface && clazz.superName != null) {
            Clazz sc = CompilerContext.resolve(clazz.superName);
            while(sc != null) {
                sc.childClasses.add(clazz.name);
                CompilerContext.markClassModelDirty(sc.name);
                for(Method m : clazz.methods) {
                    if(m.isStatic() || m.isNative() || m.isAbstract() || m.name.equals("<init>")) continue;
                    Method pm = sc.findMethod(m.name, m.signature);
                    if(pm != null) {
                        pm.childClasses.add(clazz.name);
                        CompilerContext.markClassModelDirty(pm.declaringClass);
                        m.parentClass = sc.name;
                    }
                }
                if(sc.superName == null) break;
                sc = CompilerContext.resolve(sc.superName);
            }
        }
        */
        return new TypeDecompilationResults( null /*no line number mapping*/);      
    }    
    
    @Override
    public void decompileMethod(final MethodDefinition method, final ITextOutput output, final DecompilationOptions options) {
         compiler.model.Method currentMethod = new compiler.model.Method();
         currentMethod.declaringClass = clazz.name;
         currentMethod.name = method.getName();
         currentMethod.modifiers = method.getModifiers();
         currentMethod.type = DecompilerUtils.getTypeName(method.getReturnType());
         currentMethod.signature = DecompilerUtils.getSignature(method.getErasedSignature());
         currentMethod.annotations = DecompilerUtils.parseAnnotations(method.getAnnotations());

         for(ParameterDefinition p : method.getParameters()) {
             String type = DecompilerUtils.getTypeName(p.getParameterType());
             
             currentMethod.args.add(new NameAndType(p));
         }
         
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
            AstOptimizer.optimize(context, methodAst, AstOptimizationStep.None);

            final Set<Variable> allVariables = new LinkedHashSet();
            final Set<String> allVariableNames = new HashSet();
            for (final Expression e : methodAst.getSelfAndChildrenRecursive(Expression.class)) {
                final Object operand = e.getOperand();

                if (operand instanceof Variable && !((Variable) operand).isParameter()) {
                    Variable var = (Variable)operand;
                    boolean found = false;
                    for(Variable v : allVariables)
                        if(v.getName().equals(var.getName()) && v.getType().equals(var.getType())) {
                            found = true;
                            break;
                        }
                    if(!found) {
                        allVariables.add(var);
                        allVariableNames.add(var.getName());
                    }
                }
            }

            Set<String> usedVariableNames = new HashSet();
            for(Variable v : allVariables) {
                if(usedVariableNames.contains(v.getName())) {
                    for(int id=2; id<100; id++) {
                        if(!allVariableNames.contains(v.getName()+id)) {
                            v.setName(v.getName()+id);
                            allVariableNames.add(v.getName());
                            break;
                        }
                    }
                }
                NameAndType nv = new NameAndType(v);
                boolean found = false;
                for(NameAndType nt : currentMethod.locals) {
                    if(nt.name.equals(nv.name)) {
                        found = true;
                        if(!nt.type.equals(nv.type)) throw new RuntimeException(nv.name+" used different types in "+currentMethod.declaringClass+":"+currentMethod.name+currentMethod.signature);
                        break;
                    }
                }
                if(!found) {
                    currentMethod.locals.add(nv);
                    usedVariableNames.add(nv.name);
                }
            }

            MethodDecompiler md = new MethodDecompiler(currentMethod, method);
            currentMethod.body = (compiler.model.ast.Block)md.decompile(methodAst);
        }
        clazz.methods.add(currentMethod);
    }
    
    void calculateDependency(compiler.model.Method m) {
        m.addDependency(m.type);
        for(NameAndType arg : m.args) {
            m.addDependency(arg.type);
        }
        m.body.visit(new Visitor() {
            @Override
            public void visitClassReference(String className) {
                m.addDependency(className);
            }
        });
    }
    
    void decompileType(TypeDefinition type) {
        SourceFileAttribute sourceFile = 
        SourceAttribute.find(AttributeNames.SourceFile, type.getSourceAttributes());
        if(sourceFile != null)
            clazz.sourceFile = sourceFile.getSourceFile();
        
        clazz.name = type.getInternalName();
        if(type.getBaseType() != null)
            clazz.superName = type.getBaseType().getInternalName();
        
        clazz.isInterface = type.isInterface();
        clazz.isAbstract = Flags.testAny(type.getFlags(), Flags.ABSTRACT);
        
        for(TypeReference tr : type.getExplicitInterfaces()) {
            clazz.interfaces.add(tr.getInternalName());
        }
        
        //interface extended from another interface
        if(clazz.isInterface && !clazz.interfaces.isEmpty()) {
            clazz.superName = clazz.interfaces.remove(0);
        }
        for(FieldDefinition f : type.getDeclaredFields()) {
            NameAndType nt = new NameAndType(f);
            nt.declaringClass = clazz.name;
            nt.annotations = DecompilerUtils.parseAnnotations(f.getAnnotations());
            clazz.fields.add(nt);
        }
        clazz.annotations = DecompilerUtils.parseAnnotations(type.getAnnotations());
    }
}
