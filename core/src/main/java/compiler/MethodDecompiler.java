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

import com.strobel.assembler.ir.attributes.LineNumberTableAttribute;
import com.strobel.assembler.ir.attributes.LineNumberTableEntry;
import com.strobel.assembler.ir.attributes.SourceAttribute;
import com.strobel.assembler.metadata.DynamicCallSite;
import com.strobel.assembler.metadata.FieldReference;
import com.strobel.assembler.metadata.MethodDefinition;
import com.strobel.assembler.metadata.MethodReference;
import com.strobel.assembler.metadata.PrimitiveType;
import com.strobel.assembler.metadata.TypeReference;
import com.strobel.decompiler.ast.AstCode;
import com.strobel.decompiler.ast.AstCodeHelpers;
import com.strobel.decompiler.ast.BasicBlock;
import com.strobel.decompiler.ast.CatchBlock;
import com.strobel.decompiler.ast.Condition;
import com.strobel.decompiler.ast.Expression;
import com.strobel.decompiler.ast.Label;
import com.strobel.decompiler.ast.Loop;
import com.strobel.decompiler.ast.LoopType;
import com.strobel.decompiler.ast.Node;
import com.strobel.decompiler.ast.Switch;
import com.strobel.decompiler.ast.TryCatchBlock;
import com.strobel.decompiler.ast.Variable;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Alloc;
import compiler.model.ast.ArrayAccess;
import compiler.model.ast.ArrayLength;
import compiler.model.ast.Assign;
import compiler.model.ast.Binary;
import compiler.model.ast.Block;
import compiler.model.ast.Break;
import compiler.model.ast.Call;
import compiler.model.ast.Cast;
import compiler.model.ast.CaughtException;
import compiler.model.ast.CheckCast;
import compiler.model.ast.ClassRef;
import compiler.model.ast.Code;
import compiler.model.ast.Const;
import compiler.model.ast.Continue;
import compiler.model.ast.DynamicCall;
import compiler.model.ast.Field;
import compiler.model.ast.Goto;
import compiler.model.ast.If;
import compiler.model.ast.Inc;
import compiler.model.ast.InitArray;
import compiler.model.ast.InstanceOf;
import compiler.model.ast.Local;
import compiler.model.ast.Monitor;
import compiler.model.ast.Neg;
import compiler.model.ast.NewArray;
import compiler.model.ast.Return;
import compiler.model.ast.Ternary;
import compiler.model.ast.Throw;
import compiler.model.ast.TryCatch;
import compiler.model.ast.While;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class MethodDecompiler {
    
    Method method;
    Map<String, NameAndType> locals = new HashMap();
    Map<String, compiler.model.ast.Label> labels = new HashMap();
    LineNumberTableAttribute lineNumbers;
    int currentLineNumber = -1;
    public int tryCatchCount;
    
    public MethodDecompiler(Method method, MethodDefinition definition) {
        this.method = method;
        for(NameAndType n : method.args)
            locals.put(n.name, n);
        for(NameAndType n : method.locals)
            locals.put(n.name, n);
        
        List<SourceAttribute> list = definition.getSourceAttributes();
        if(list != null) {
            for(SourceAttribute sa : list) {
                if(sa instanceof LineNumberTableAttribute) {
                    lineNumbers = (LineNumberTableAttribute)sa;
                    break;
                }
            }
        }        
    }
    
    NameAndType getLocal(Variable var) {
        NameAndType local = null;
        if(var.isParameter()) {
            local = locals.get(var.getOriginalParameter().getName());
        } else local = locals.get(var.getName());
        if(local == null) {
            if(var.getName().equals("this")) {
                local = new NameAndType();
                local.name = "this";
                local.type = method.declaringClass;
                locals.put("this", local);
            } else {
                local = new NameAndType();
                local.name = var.getName();
                local.type = var.getType().getInternalName();
                locals.put(local.name, local);
                method.locals.add(local);
            }
        }
        if(local == null) throw new RuntimeException("Cant find local: "+var);
        return local;
    }
    
    void updateLineNumber(Node node) {
        if(lineNumbers == null)
            return;
        int offset = -1;
        if(node instanceof Expression) {
            offset = ((Expression)node).getOffset();
        } else if(node instanceof Condition) {
            if(!((Condition)node).getCondition().getArguments().isEmpty())
                offset = ((Condition)node).getCondition().getArguments().get(0).getOffset();
            else
                offset = ((Condition)node).getCondition().getOffset();
        }
        if(offset == -1) return;
        
        if(offset < 0) offset = -offset;
        int line = -1;
        for(LineNumberTableEntry e : lineNumbers.getEntries()) {
            if(offset >= e.getOffset()) {
                line = e.getLineNumber();
            } else break;
        }
        
        if(line != -1) currentLineNumber = line;
    }
    
    compiler.model.ast.Label getLabel(Object operand) {
        if(operand == null) return null;
        if(operand instanceof Label) {
            String name = ((Label)operand).getName();
            return labels.computeIfAbsent(name, (n) -> new compiler.model.ast.Label(n));
        }
        
        throw new RuntimeException("Unknown operand for label "+operand);
    }
    
    private Code decompileInternal(Node node) {
        if(node instanceof com.strobel.decompiler.ast.Block)
            return decompile((com.strobel.decompiler.ast.Block)node);
        if(node instanceof Expression)
            return decompile((Expression)node);
        if(node instanceof Loop)
            return decompile((Loop)node);
        if(node instanceof Condition)
            return decompile((Condition)node);
        if(node instanceof Label)
            return decompile((Label)node);
        if(node instanceof Switch)
            return decompile((Switch)node);
        if(node instanceof TryCatchBlock)
            return decompile((TryCatchBlock)node);
        if(node instanceof BasicBlock)
            return decompile((BasicBlock)node);
        
        throw new RuntimeException("Unknown node: "+node.getClass());
    }

    public Code decompile(Node node) {
        int lno = currentLineNumber;
        updateLineNumber(node);
        Code code = decompileInternal(node);
        if(lno != currentLineNumber) code.lineNumber = currentLineNumber;
        return code;
    }
    
    Code decompile(com.strobel.decompiler.ast.Block b) {
        Block block = new Block();
        for(Node n : b.getChildren()) {
            Code c = decompile(n);
            if(c != null)
            block.children.add(c);
        }
        return block;
    }
    
    Code decompile(Expression e) {
        Code c = _decompile(e);
        if(c != null) {
            if(e.getExpectedType() != null)
                c.expectedType = DecompilerUtils.getTypeName(e.getExpectedType());
            if(e.getInferredType() != null)
                c.inferredType = DecompilerUtils.getTypeName(e.getInferredType());
        }
        return c;
    }
    
    Code _decompile(Expression e) {
        final AstCode code = e.getCode();
        final Object operand = e.getOperand();
        final TypeReference inferredType = e.getInferredType();
        final TypeReference expectedType = e.getExpectedType();

        List<Code> args = new ArrayList();
        
        if (operand instanceof Variable) {
            Variable var = (Variable)operand;
            if (AstCodeHelpers.isLocalStore(code)) {
                return new Assign(
                    new Local(getLocal(var)),
                    decompile(e.getArguments().get(0))        
                );
            }
            
            if(AstCodeHelpers.isLocalLoad(code)) {
                return new Local(getLocal(var));
            }
            
            args.add(new Local(getLocal(var)));
        }
        
        for (final Expression argument :  e.getArguments()) {
            args.add(decompile(argument));
        }
        
        switch(code) {
            case InvokeSpecial:
                return new Call((MethodReference)operand, args, Call.CallType.Special);
            case InvokeVirtual:
                return new Call((MethodReference)operand, args, Call.CallType.Virtual);
            case InvokeStatic:
                return new Call((MethodReference)operand, args, Call.CallType.Static);
            case InvokeInterface:
                return new Call((MethodReference)operand, args, Call.CallType.Interface);
            case InitObject:
                return new Call((MethodReference)operand, args, Call.CallType.New);
            case InvokeDynamic:
                DynamicCall dc = new DynamicCall((DynamicCallSite)operand, args);
                LambdaGenerator.pending.add(dc);
                return dc;
                
            case AConstNull:
                return new Const(null);
            case LdC:
                if(operand instanceof TypeReference) 
                    return new ClassRef(((TypeReference)operand).getInternalName());
                if(expectedType != null && expectedType.getInternalName().equals("Z") && operand instanceof Integer)
                    return new Const(((Integer)operand) == 0 ? false : true);
                return new Const(operand);
                
            case CmpLt:
                return new Binary(args.get(0), Binary.Op.Lt, args.get(1));
            case CmpLe:
                return new Binary(args.get(0), Binary.Op.Le, args.get(1));
            case CmpGt:
                return new Binary(args.get(0), Binary.Op.Gt, args.get(1));
            case CmpGe:
                return new Binary(args.get(0), Binary.Op.Ge, args.get(1));
            case CmpEq:
                return new Binary(args.get(0), Binary.Op.Eq, args.get(1));
            case CmpNe:
                return new Binary(args.get(0), Binary.Op.Ne, args.get(1));
            case LogicalOr:
                return new Binary(args.get(0), Binary.Op.LogicalOr, args.get(1));
            case LogicalAnd:
                return new Binary(args.get(0), Binary.Op.LogicalAnd, args.get(1));
            case LogicalNot:
                return new Binary(args.get(0), Binary.Op.LogicalNot, null);
            case Add:    
                return new Binary(args.get(0), Binary.Op.Add, args.get(1));
            case Sub:    
                return new Binary(args.get(0), Binary.Op.Sub, args.get(1));
            case Div:    
                return new Binary(args.get(0), Binary.Op.Div, args.get(1));
            case Mul:    
                return new Binary(args.get(0), Binary.Op.Mul, args.get(1));
            case Rem:    
                return new Binary(args.get(0), inferredType.getInternalName().equals("I") ? Binary.Op.Rem : Binary.Op.FRem, args.get(1));
            case Shl:    
                return new Binary(args.get(0), Binary.Op.Shl, args.get(1));
            case Shr:    
                return new Binary(args.get(0), Binary.Op.Shr, args.get(1));
            case UShr:    
                return new Binary(args.get(0), Binary.Op.UShr, args.get(1));
            case And:    
                return new Binary(args.get(0), Binary.Op.And, args.get(1));
            case Or:    
                return new Binary(args.get(0), Binary.Op.Or, args.get(1));
            case Xor:    
                return new Binary(args.get(0), Binary.Op.Xor, args.get(1));
            case Neg:
                return new Neg(args.get(0));
                
            case GetField:
                FieldReference fr = (FieldReference)operand;
                return new Field(args.get(0), fr);
            case PutField:
                fr = (FieldReference)operand;
                return new Assign(new Field(args.get(0), fr), args.get(1));
                
            case GetStatic:
                fr = (FieldReference)operand;
                return new Field(null, fr);
            case PutStatic:
                fr = (FieldReference)operand;
                return new Assign(new Field(null, fr), args.get(0));
                
            case Inc:
                return new Inc(args.get(0), args.get(1), true);
            case PostIncrement:
                return new Inc(args.get(0), new Const(operand), true);
            case PreIncrement:
                return new Inc(args.get(0), new Const(operand), false);
                
            case Return:
                return new Return(args.isEmpty() ? null : args.get(0));
                
            case AThrow:
                return new Throw(args.get(0));
                
            case I2B:
                return new Cast("I","B",args.get(0));
            case I2C:
                return new Cast("I","C",args.get(0));
            case I2S:
                return new Cast("I","S",args.get(0));
            case I2F:
                return new Cast("I","F",args.get(0));
            case I2L:
                return new Cast("I","J",args.get(0));
            case I2D:
                return new Cast("I","D",args.get(0));
            case F2I:
                return new Cast("F","I",args.get(0));
            case F2L:
                return new Cast("F","J",args.get(0));
            case F2D:
                return new Cast("F","D",args.get(0));
            case D2I:
                return new Cast("D","I",args.get(0));
            case D2F:
                return new Cast("D","F",args.get(0));
            case D2L:
                return new Cast("D","J",args.get(0));
            case L2I:
                return new Cast("J","I",args.get(0));
            case L2F:
                return new Cast("J","F",args.get(0));
            case L2D:
                return new Cast("J","D",args.get(0));
                
            case ArrayLength:
                return new ArrayLength(args.get(0));
            case LoadElement:
                return new ArrayAccess(args.get(0), args.get(1), null);
            case StoreElement:
                return new ArrayAccess(args.get(0), args.get(1), args.get(2));
            case NewArray:
                return new NewArray(((TypeReference)operand).getInternalName(), Arrays.asList(args.get(0)));
            case MultiANewArray:
                return new NewArray(((TypeReference)operand).getInternalName(), args);
            case InitArray:
                return new InitArray(((TypeReference)operand).getElementType().getInternalName(), args);
                
            case TernaryOp:
                return new Ternary(args.get(0), args.get(1), args.get(2));
                
            case InstanceOf:
                return new InstanceOf(((TypeReference)operand), args.get(0));
            case CheckCast:
                return new CheckCast(((TypeReference)operand), args.get(0));
                
            case LoopContinue:
                if(operand != null) 
                    return new Continue(getLabel(operand));
                    //throw new RuntimeException("Labeled continue: "+operand);
                return new Continue();
                
            case Goto:
                this.method.hasGoto = true;
                return new Goto(getLabel(operand));
                
            case LoopOrSwitchBreak:
                return new Break(getLabel(operand));
                
            case __New:
                return new Alloc(DecompilerUtils.getTypeName((TypeReference)operand));
                
            case MonitorEnter:
                return new Monitor(args.get(0), false);
            
            case MonitorExit:
                return new Monitor(args.get(0), true);
                
            case DefaultValue:
                if(operand instanceof PrimitiveType) {
                    switch(((PrimitiveType)operand).getSimpleType()) {
                        case Integer:
                        case Character:
                        case Long:    
                        case Byte: return new Const(0);
                        default: throw new RuntimeException("Unknown primitive default "+operand);
                    }
                } else {
                    return new ClassRef(operand.toString());
                }                
                
            case Bind:
                //Lambda lambda = (Lambda)operand;
                //System.out.println(lambda.getMethod());
            //default: return new Dummy(e.toString());
        }
        throw new RuntimeException("Unknown expression: "+e+" / "+code);
    }

    Code decompile(Loop loop) {
        While wb = new While();
        wb.isPost = loop.getLoopType() == LoopType.PostCondition;
        if(loop.getCondition() != null)
            wb.condition = decompile(loop.getCondition());
        else 
            wb.condition = new Const(true);

        for(Node n : loop.getBody().getChildren())
            wb.children.add(decompile(n));
        return wb;
    }
    
    Code decompile(Condition c) {
        If i = new If();
        i.condition = decompile(c.getCondition());
        c.getTrueBlock().getChildren().forEach(n -> i.children.add(decompile(n)));
        if(c.getFalseBlock()!=null)
            i.elseBlock = (Block)decompile(c.getFalseBlock());
        return i;
    }
    
    Code decompile(Label l) {
        return getLabel(l);
    }
    
    Code decompile(Switch s) {
        final compiler.model.ast.Switch result = new compiler.model.ast.Switch();
        result.blocks = new ArrayList();
        result.values = new ArrayList();
        result.condition = decompile(s.getCondition());
        s.getCaseBlocks().forEach(cb -> {
            if(cb.isDefault()) {
                result.values.add(null);
            } else {
                List<Integer> list = new ArrayList();
                list.addAll(cb.getValues());
                result.values.add(list);
            }
            Block b = new Block();
            for(Node n : cb.getBody()) b.children.add(decompile(n));
            result.blocks.add(b);
        });
        return result;
    }
    
    Code decompile(TryCatchBlock tcb) {
        TryCatch tr = new TryCatch(tryCatchCount++);
        for(Node n : tcb.getTryBlock().getBody()) {
            tr.children.add(decompile(n));
        }
        
        //Instruction caughtException = new CaughtException();
        //If unconditionalHandler = null;
        //hasTryCatchBlock = true;
        
        Code caughtException = new CaughtException();
        
        for(CatchBlock cb : tcb.getCatchBlocks()) {
            NameAndType nt = getLocal(cb.getExceptionVariable());
            List<TypeReference> types = new ArrayList();
            if(!cb.getCaughtTypes().isEmpty()) {
                types.addAll(cb.getCaughtTypes());
            } else if(cb.getExceptionType() != null) {
                types.add(cb.getExceptionType());
            }
            Code root = null;
            for(TypeReference t : types) {
                Code iio = new InstanceOf(t, caughtException);
                if(root == null)
                    root = iio;
                else
                    root = new Binary(root, Binary.Op.Or, iio);
            }
            if(root != null) {
                If fi = new If();
                fi.condition = root;
                fi.children.add(new Assign(new Local(nt), caughtException));
                for(Node n : cb.getBody())
                    fi.children.add(decompile(n));
                if(tr.catchBlock == null)
                    tr.catchBlock = fi;
                else {
                    If f = (If)tr.catchBlock;
                    while(f.elseBlock != null) f = (If)f.elseBlock;
                    f.elseBlock = fi;
                }
            }
        }
  
        List<Code> fbody = new ArrayList();
        if(tcb.getFinallyBlock() != null && !tcb.getFinallyBlock().getBody().isEmpty()) {
            for(Node n : tcb.getFinallyBlock().getChildren()) {
                fbody.add(decompile(n));
            }
        }
        
        fbody.add(new Throw(new CaughtException()));
        Block b = new Block();
        b.children.addAll(fbody);
        if(tr.catchBlock == null) {
            tr.catchBlock = b;
        } else {
            If f = (If)tr.catchBlock;
            while(f.elseBlock != null) f = (If)f.elseBlock;
            f.elseBlock = b;
        }
        
        return tr;        
        /*
        final Try tr = new Try();
        tr.catchBlocks = new ArrayList();
        tr.catchTypes = new ArrayList();
        tr.catchVars = new ArrayList();
        tcb.getTryBlock().getBody().forEach(n -> tr.children.add(decompile(n)));
        tcb.getCatchBlocks().forEach(c -> {
            tr.catchVars.add(getLocal(c.getExceptionVariable()));
            final List<String> types = new ArrayList();
            c.getCaughtTypes().forEach(t -> types.add(t.getInternalName()));
            if(types.isEmpty() && c.getExceptionType() != null) types.add(c.getExceptionType().getInternalName());
            tr.catchTypes.add(types);
            final Block b = new Block();
            c.getBody().forEach(n -> b.children.add(decompile(n)));
            tr.catchBlocks.add(b);
        });
        
        if(tcb.getFinallyBlock() != null) {
            tr.finallyBlock = new Block();
            tcb.getFinallyBlock().getChildren().forEach(n -> tr.finallyBlock.children.add(decompile(n)));
        }
        this.method.hasTryCatch = true;
        return tr;*/
    }
    
    Code decompile(BasicBlock bb) {
        Block b = new Block();
        bb.getBody().forEach(n -> b.children.add(decompile(n)));
        return b;
    }
    

}
