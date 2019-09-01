package compiler;

import static com.strobel.assembler.metadata.Flags.BRIDGE;
import static com.strobel.assembler.metadata.Flags.SYNTHETIC;
import compiler.model.Clazz;
import compiler.model.Method;
import compiler.model.NameAndType;
import compiler.model.ast.Alloc;
import compiler.model.ast.ArrayAccess;
import compiler.model.ast.ArrayLength;
import compiler.model.ast.Assign;
import compiler.model.ast.Binary;
import compiler.model.ast.Block;
import compiler.model.ast.Call;
import compiler.model.ast.Cast;
import compiler.model.ast.CaughtException;
import compiler.model.ast.CheckCast;
import compiler.model.ast.ClassRef;
import compiler.model.ast.Cmp;
import compiler.model.ast.Code;
import compiler.model.ast.Const;
import compiler.model.ast.Field;
import compiler.model.ast.Goto;
import compiler.model.ast.If;
import compiler.model.ast.InstanceOf;
import compiler.model.ast.Label;
import compiler.model.ast.Local;
import compiler.model.ast.Lookup;
import compiler.model.ast.Monitor;
import compiler.model.ast.Neg;
import compiler.model.ast.NewArray;
import compiler.model.ast.Return;
import compiler.model.ast.Switch;
import compiler.model.ast.Throw;
import compiler.model.ast.TryCatch;
import static java.lang.invoke.LambdaMetafactory.FLAG_BRIDGES;
import static java.lang.invoke.LambdaMetafactory.FLAG_MARKERS;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import soot.Body;
import soot.PackManager;
import soot.RefType;
import soot.SootClass;
import soot.SootMethod;
import soot.SootMethodHandle;
import soot.SootMethodRef;
import soot.SootMethodType;
import soot.SootResolver;
import soot.Trap;
import soot.Type;
import soot.Unit;
import soot.Value;
import soot.jimple.AddExpr;
import soot.jimple.AndExpr;
import soot.jimple.ArrayRef;
import soot.jimple.AssignStmt;
import soot.jimple.BinopExpr;
import soot.jimple.CastExpr;
import soot.jimple.CaughtExceptionRef;
import soot.jimple.ClassConstant;
import soot.jimple.CmpExpr;
import soot.jimple.CmpgExpr;
import soot.jimple.CmplExpr;
import soot.jimple.Constant;
import soot.jimple.ConstantSwitch;
import soot.jimple.DivExpr;
import soot.jimple.DoubleConstant;
import soot.jimple.DynamicInvokeExpr;
import soot.jimple.EnterMonitorStmt;
import soot.jimple.EqExpr;
import soot.jimple.ExitMonitorStmt;
import soot.jimple.Expr;
import soot.jimple.FieldRef;
import soot.jimple.FloatConstant;
import soot.jimple.GeExpr;
import soot.jimple.GotoStmt;
import soot.jimple.GtExpr;
import soot.jimple.IdentityStmt;
import soot.jimple.IfStmt;
import soot.jimple.InstanceFieldRef;
import soot.jimple.InstanceInvokeExpr;
import soot.jimple.InstanceOfExpr;
import soot.jimple.IntConstant;
import soot.jimple.InterfaceInvokeExpr;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.LeExpr;
import soot.jimple.LengthExpr;
import soot.jimple.LongConstant;
import soot.jimple.LookupSwitchStmt;
import soot.jimple.LtExpr;
import soot.jimple.MulExpr;
import soot.jimple.NeExpr;
import soot.jimple.NegExpr;
import soot.jimple.NewArrayExpr;
import soot.jimple.NewExpr;
import soot.jimple.NewMultiArrayExpr;
import soot.jimple.NullConstant;
import soot.jimple.OrExpr;
import soot.jimple.ParameterRef;
import soot.jimple.Ref;
import soot.jimple.RemExpr;
import soot.jimple.ReturnStmt;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.ShlExpr;
import soot.jimple.ShrExpr;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.jimple.SubExpr;
import soot.jimple.TableSwitchStmt;
import soot.jimple.ThisRef;
import soot.jimple.ThrowStmt;
import soot.jimple.UshrExpr;
import soot.jimple.VirtualInvokeExpr;
import soot.jimple.XorExpr;

/**
 *
 * @author mustafa
 */
public class SootMethodDecompiler {
    Clazz klass;
    Method method;
    SootMethod sootMethod;
    Map<Unit, Label> unitToLabelMap = new HashMap();

    public void decompile(SootMethod sm, Method m, Clazz c) {
        klass = c;
        method = m;
        sootMethod = sm;

        Body body = sm.retrieveActiveBody();
        PackManager.v().getPack("jtp").apply(body);
        PackManager.v().getPack("jop").apply(body);
        PackManager.v().getPack("jap").apply(body);

        generateLabels(body);

        for (soot.Local l : body.getLocals()) {
            m.locals.add(new NameAndType(l.getName(), SootDecompiler.toJavaType(l.getType()), false));
        }
        
        Map<Unit,Code> unitToCode = new HashMap();
        
        for (Unit u : body.getUnits()) {
            Label label = unitToLabelMap.get(u);
            if (label != null) {
                m.body.children.add(label);
            }

            Code code = decompile(u);
            if (code != null) {
                m.body.children.add(code);
                unitToCode.put(u, code);
            }
        }

        /*
        if(m.name.contains("debuggerLoop"))
            System.out.println(body);
        
        Unit lastBegin = null;
        Unit lastEnd = null;
        TryCatch lastTry = null;
        int index = 0;
        for(Trap t : body.getTraps()) {
            Unit begin = t.getBeginUnit();
            Unit end = t.getEndUnit();
            Unit tryEof = null;
            if(end instanceof GotoStmt)
                tryEof = ((GotoStmt)end).getTarget();
            else if(end instanceof ReturnStmt || end instanceof ThrowStmt)
                tryEof = end;
            else
            throw new RuntimeException("Try block must end with goto or return or throw statement at "+m+" for "+t);
            
            if(lastBegin != begin || lastEnd != end) {
                //new block
                lastTry = new TryCatch(index++);
                m.body.children.add(m.body.children.indexOf(unitToCode.get(begin)), lastTry);
                
                int beginIndex = m.body.children.indexOf(unitToCode.get(begin));
                int endIndex = m.body.children.indexOf(unitToCode.get(end));
                int count = endIndex - beginIndex + 1;
                for(int i=0; i<count; i++)
                    lastTry.children.add(m.body.children.remove(beginIndex));
            }
            
            If target = null;
            if(lastTry.catchBlock == null) {
                If _if = new If();
                _if.condition = new InstanceOf(t.getException().getName().replace('.', '/'), new CaughtException());
                lastTry.catchBlock = _if;
                target = _if;
            } else {
                If _if = (If)lastTry.catchBlock;
                while(_if.elseBlock != null) _if = (If)_if.elseBlock;
                target = new If();
                target.condition =new InstanceOf(t.getException().getName().replace('.', '/'), new CaughtException());
                _if.elseBlock = target;
            }
            
            Unit handler = t.getHandlerUnit();
            int handlerStart = m.body.children.indexOf(unitToCode.get(handler));
            
            lastBegin = begin;
            lastEnd = end;
            
            System.out.println(end);
        } */
    }

    int labelIdCounter;

    private void newLabel(Stmt stmt) {
        Label label = unitToLabelMap.get(stmt);
        if (label == null) {
            label = new Label("label" + labelIdCounter++);
            unitToLabelMap.put(stmt, label);
        }
    }

    void generateLabels(Body body) {
        // generate labels for each statement another statement points to
        for (Unit unit : body.getUnits()) {
            if (unit instanceof IfStmt) {
                newLabel(((IfStmt) unit).getTarget());
            }
            if (unit instanceof GotoStmt) {
                newLabel((Stmt) ((GotoStmt) unit).getTarget());
            }
            if (unit instanceof TableSwitchStmt) {
                TableSwitchStmt stmt = (TableSwitchStmt) unit;
                for (Object target : stmt.getTargets()) {
                    newLabel((Stmt) target);
                }
                if (stmt.getDefaultTarget() != null) {
                    newLabel((Stmt) stmt.getDefaultTarget());
                }
            }
            if (unit instanceof LookupSwitchStmt) {
                LookupSwitchStmt stmt = (LookupSwitchStmt) unit;
                for (Object target : stmt.getTargets()) {
                    newLabel((Stmt) target);
                }
                if (stmt.getDefaultTarget() != null) {
                    newLabel((Stmt) stmt.getDefaultTarget());
                }
            }
        }
    }

    Code decompile(Unit unit) {
        if (unit instanceof TableSwitchStmt) {
            If f = null;
            TableSwitchStmt stmt = (TableSwitchStmt) unit;
            Switch sw = new Switch();
            sw.condition = value(stmt.getKey());
            sw.values = new ArrayList();
            sw.blocks = new ArrayList();
            for (int i = stmt.getLowIndex(); i <= stmt.getHighIndex(); i++) {
                sw.values.add(Arrays.asList(i));
                Block b = new Block();
                b.children.add(new Goto(unitToLabelMap.get(stmt.getTarget(i - stmt.getLowIndex()))));
                sw.blocks.add(b);
            }

            if (stmt.getDefaultTarget() != null) {
                sw.values.add(null);
                Block b = new Block();
                b.children.add(new Goto(unitToLabelMap.get(stmt.getDefaultTarget())));
                sw.blocks.add(b);
            }
            return sw;
            //todo: parse tableswitch
            //return new TableSwitch();
        } else if (unit instanceof LookupSwitchStmt) {
            //todo: implement lookup
            return new Lookup();
        } else {
            return statement((Stmt) unit);
        }
    }

    Code statement(Stmt stmt) {

        if (stmt instanceof IdentityStmt) {
            IdentityStmt id = (IdentityStmt) stmt;
            return new Assign(value(id.getLeftOp()), value(id.getRightOp()));
        }

        if (stmt instanceof InvokeStmt) {
            return value(((InvokeStmt) stmt).getInvokeExpr());
        }

        if (stmt instanceof ReturnStmt) {
            return new Return(value(((ReturnStmt) stmt).getOp()));
        }

        if (stmt instanceof ReturnVoidStmt) {
            return new Return();
        }

        if (stmt instanceof AssignStmt) {
            AssignStmt assign = (AssignStmt) stmt;
            return assign(assign);
            //return new Assign(value(assign.getLeftOp()), value(assign.getRightOp()));
        }

        if (stmt instanceof ThrowStmt) {
            return new Throw(value(((ThrowStmt) stmt).getOp()));
        }

        if (stmt instanceof GotoStmt) {
            Unit target = ((GotoStmt) stmt).getTarget();
            Label label = unitToLabelMap.get(target);
            if (label == null) {
                throw new RuntimeException("Invalid goto target: " + target);
            }
            return new Goto(label);
        }

        if (stmt instanceof IfStmt) {
            IfStmt ifs = (IfStmt) stmt;
            If ifc = new If();
            ifc.condition = value(ifs.getCondition());
            Unit target = ifs.getTarget();
            Label label = unitToLabelMap.get(target);
            if (label == null) {
                throw new RuntimeException("Invalid goto target: " + target);
            }
            ifc.children.add(new Goto(label));
            return ifc;
        }

        if (stmt instanceof EnterMonitorStmt) {
            return new Monitor(value(((EnterMonitorStmt) stmt).getOp()), false);
        }

        if (stmt instanceof ExitMonitorStmt) {
            return new Monitor(value(((ExitMonitorStmt) stmt).getOp()), true);
        }
        /*
        if (stmt instanceof InvokeStmt) {
            return translateValue(((InvokeStmt) stmt).getInvokeExpr());
        }

        if (stmt instanceof ReturnVoidStmt) {
            return new ReturnInstruction(null);
        }

        if (stmt instanceof ReturnStmt) {
            return new ReturnInstruction(translateValue(((ReturnStmt) stmt).getOp()));
        }

        if (stmt instanceof AssignStmt) {
            AssignStmt assign = (AssignStmt) stmt;
            AssignInstruction ai = new AssignInstruction(translateValue(assign.getLeftOp()), translateValue(assign.getRightOp()));
            if(ai.left instanceof VarInstruction)
                usedVars.add(((VarInstruction)ai.left).name);
            return ai;
        }

        if (stmt instanceof IfStmt) {
            IfStmt ifs = (IfStmt) stmt;
            return new IfInstruction(translateValue(ifs.getCondition()), getLabel(ifs.getTarget()));
        }

        if (stmt instanceof GotoStmt) {
            return new GotoInstruction(getLabel((Stmt) ((GotoStmt) stmt).getTarget()));
        }

        if (stmt instanceof ThrowStmt) {
            return new ThrowInstruction(translateValue(((ThrowStmt) stmt).getOp()));
        }
        
        if(stmt instanceof EnterMonitorStmt) {
            EnterMonitorStmt em = (EnterMonitorStmt)stmt;
            return new MonitorInstruction(translateValue(em.getOp()), false);
        }
        
        if(stmt instanceof ExitMonitorStmt) {
            ExitMonitorStmt em = (ExitMonitorStmt)stmt;
            return new MonitorInstruction(translateValue(em.getOp()), true);
        }
         */
        throw new RuntimeException("Unknown statement " + stmt + " @" + stmt.getClass());
    }

    Code value(Value val) {
        if (val instanceof Expr) {
            return expr((Expr) val);
        } else if (val instanceof soot.Local) {
            soot.Local local = (soot.Local) val;
            for (NameAndType n : method.locals) {
                if (n.name.equals(local.getName())) {
                    return new Local(n);
                }
            }
            throw new RuntimeException("Unknown local: " + local.getName() + ":" + SootDecompiler.toJavaType(local.getType()));
        } else if (val instanceof Ref) {
            return ref((Ref) val);
        } else if (val instanceof IntConstant) {
            return new Const(((IntConstant) val).value);
        } else if (val instanceof ClassConstant) {
            String ref = ((ClassConstant) val).getValue().replace('.', '/');
            if(ref.startsWith("[") && ref.endsWith(";")) {
                int p = 0;
                while(ref.charAt(p) == '[') p++;
                ref = ref.substring(0,p) + ref.substring(p+1, ref.length()-1);
            }
            return new ClassRef(ref);
        } else if (val instanceof StringConstant) {
            return new Const(((StringConstant) val).value);
        } else if (val instanceof NullConstant) {
            return new Const();
        } else if (val instanceof LongConstant) {
            return new Const(((LongConstant) val).value);
        } else if (val instanceof FloatConstant) {
            return new Const(((FloatConstant) val).value);
        } else if (val instanceof DoubleConstant) {
            return new Const(((DoubleConstant) val).value);
        } /* else if (val instanceof Immediate) {
            return decompile((Immediate) val);
        } else if (val instanceof soot.Local) {
            return decompile((soot.Local) val);
        } else if (val instanceof Ref) {
            return decompile((Ref) val);
        } */ else {
            throw new RuntimeException("Unkown Value " + val.getClass());
        }
    }

    Code ref(Ref val) {
        if (val instanceof ThisRef) {
            return new Local(new NameAndType("this", method.declaringClass, false));
        }

        if (val instanceof ParameterRef) {
            int index = ((ParameterRef) val).getIndex();
            if (index < 0 || index >= method.args.size()) {
                throw new RuntimeException("Invalid parameter index: " + index);
            }
            return new Local(method.args.get(index));
        }

        if (val instanceof ArrayRef) {
            ArrayRef ar = (ArrayRef) val;
            ArrayAccess aa = new ArrayAccess(value(ar.getBase()), value(ar.getIndex()), null);
            aa.expectedType = aa.inferredType = SootDecompiler.toJavaType(ar.getType());
            //todo 
            return aa;
        }

        if (val instanceof CaughtExceptionRef) {
            return new CaughtException();
        }

        if (val instanceof FieldRef) {
            FieldRef ref = (FieldRef) val;
            Field f = new Field();
            f.className = ref.getField().getDeclaringClass().getName().replace('.', '/');
            f.name = ref.getField().getName();
            if (ref instanceof InstanceFieldRef) {
                f.base = value(((InstanceFieldRef) ref).getBase());
            }
            return f;
        }

        throw new RuntimeException("Unknown Ref Value " + val + " / " + val.getClass());
        /*
        if (val instanceof ArrayRef) {
            ArrayRef v = (ArrayRef) val;
            Instruction target = translateValue(v.getBase());
            Instruction index = translateValue(v.getIndex());
            return new ArrayInstruction(target, index);
        } else if (val instanceof StaticFieldRef) {
            StaticFieldRef v = (StaticFieldRef) val;
            Clazz clazz = Context.resolveClazz(v.getField().getDeclaringClass().getName());
            if(clazz.bridgedClass != null) clazz = clazz.bridgedClass;
            Field field = clazz.findField(v.getField().getName());
            return new FieldInstruction(field, null);
        } else if (val instanceof InstanceFieldRef) {
            InstanceFieldRef v = (InstanceFieldRef) val;
            Clazz clazz = Context.resolveClazz(v.getField().getDeclaringClass().getName());
            if(clazz.bridgedClass != null) clazz = clazz.bridgedClass;
            Field field = clazz.findField(v.getField().getName());
            if (field == null) {
                throw new RuntimeException("unknown field " + v);
            }
            return new FieldInstruction(field, translateValue(v.getBase()));
        } else if (val instanceof IdentityRef) {
            IdentityRef v = (IdentityRef) val;
            if (v instanceof ThisRef) {
                return new VarInstruction(type.Type.createRefType(method.declaringClass), "@@this");
            }
            if (v instanceof CaughtExceptionRef) {
                return caughtException;
                //throw new RuntimeException("ıdentityref "+v.getClass());
            }

            Variable var = getParameter(((ParameterRef) v).getIndex());
            if (var == null) {
                throw new RuntimeException("Unknown local variable index " + ((ParameterRef) v).getIndex());
            }
            return new VarInstruction(var.type, var.name);// "param" + ((ParameterRef) v).getIndex());
        } else {
            throw new RuntimeException("Unknown Ref Value " + val);
        }    */
    }

    Code binary(Expr e, Binary.Op op) {
        BinopExpr expr = (BinopExpr) e;
        Binary bin = new Binary(value(expr.getOp1()), op, value(expr.getOp2()));
        bin.expectedType = bin.inferredType = SootDecompiler.toJavaType(expr.getOp1().getType());
        return bin;
    }

    Code expr(Expr val) {
        if (val instanceof AddExpr) {
            return binary(val, Binary.Op.Add);
        } else if (val instanceof AndExpr) {
            return binary(val, Binary.Op.And);
        } else if (val instanceof GeExpr) {
            return binary(val, Binary.Op.Ge);
        } else if (val instanceof EqExpr) {
            return binary(val, Binary.Op.Eq);
        } else if (val instanceof NeExpr) {
            return binary(val, Binary.Op.Ne);
        } else if (val instanceof LtExpr) {
            return binary(val, Binary.Op.Lt);
        } else if (val instanceof GtExpr) {
            return binary(val, Binary.Op.Gt);
        } else if (val instanceof LeExpr) {
            return binary(val, Binary.Op.Le);
        } else if (val instanceof CmpExpr) {
            CmpExpr ce = (CmpExpr) val;
            return new Cmp(value(ce.getOp1()), value(ce.getOp2()), Cmp.Op.Cmp);
        } else if (val instanceof CmplExpr) {
            CmplExpr ce = (CmplExpr) val;
            return new Cmp(value(ce.getOp1()), value(ce.getOp2()), Cmp.Op.Cmpl);
        } else if (val instanceof CmpgExpr) {
            CmpgExpr ce = (CmpgExpr) val;
            return new Cmp(value(ce.getOp1()), value(ce.getOp2()), Cmp.Op.Cmpg);
        } else if (val instanceof DivExpr) {
            return binary(val, Binary.Op.Div);
        } else if (val instanceof MulExpr) {
            return binary(val, Binary.Op.Mul);
        } else if (val instanceof OrExpr) {
            return binary(val, Binary.Op.LogicalOr);
        } else if (val instanceof RemExpr) {
            return binary(val, Binary.Op.Rem);
        } else if (val instanceof ShlExpr) {
            return binary(val, Binary.Op.Shl);
        } else if (val instanceof ShrExpr) {
            return binary(val, Binary.Op.Shr);
        } else if (val instanceof SubExpr) {
            return binary(val, Binary.Op.Sub);
        } else if (val instanceof UshrExpr) {
            return binary(val, Binary.Op.UShr);
        } else if (val instanceof XorExpr) {
            return binary(val, Binary.Op.Xor);
        } else if (val instanceof DynamicInvokeExpr) {
            return dynamic((DynamicInvokeExpr) val);
        } else if (val instanceof InvokeExpr) {
            InvokeExpr invoke = (InvokeExpr) val;
            Call call = new Call();
            SootMethodRef ref = invoke.getMethodRef();
            call.className = ref.declaringClass().getName().replace('.', '/');
            call.methodName = ref.name();
            call.signature = SootDecompiler.buildJavaSignature(ref.parameterTypes(), ref.returnType());
            call.args = new ArrayList();
            if (invoke instanceof InstanceInvokeExpr) {
                call.args.add(value(((InstanceInvokeExpr) invoke).getBase()));
            }
            for (Value argVal : invoke.getArgs()) {
                call.args.add(value(argVal));
            }
            if (invoke instanceof SpecialInvokeExpr) {
                call.callType = Call.CallType.Special;
            } else if (invoke instanceof VirtualInvokeExpr) {
                call.callType = Call.CallType.Virtual;
            } else if (invoke instanceof StaticInvokeExpr) {
                call.callType = Call.CallType.Static;
            } else if (invoke instanceof InterfaceInvokeExpr) {
                call.callType = Call.CallType.Interface;
            } else {
                throw new RuntimeException("Unknown call type: " + val.getClass());
            }

            return call;
        } else if (val instanceof NewExpr) {
            return new Alloc(SootDecompiler.toJavaType(((NewExpr) val).getBaseType()));
        } else if (val instanceof NewArrayExpr) {
            NewArrayExpr na = (NewArrayExpr) val;
            return new NewArray(SootDecompiler.toJavaType(na.getBaseType()), Collections.singletonList(value(na.getSize())));
        } else if (val instanceof NewMultiArrayExpr) {
            NewMultiArrayExpr nma = (NewMultiArrayExpr) val;
            List<Code> sizes = new ArrayList();
            for (int i = 0; i < nma.getSizeCount(); i++) {
                sizes.add(value(nma.getSize(i)));
            }
            return new NewArray(SootDecompiler.toJavaType(nma.getBaseType()), sizes);
        } else if (val instanceof LengthExpr) {
            LengthExpr le = (LengthExpr) val;
            return new ArrayLength(value(le.getOp()));
        } else if (val instanceof CastExpr) {
            CastExpr ce = (CastExpr) val;
            String source = SootDecompiler.toJavaType(ce.getType());
            String target = SootDecompiler.toJavaType(ce.getCastType());
            if (DecompilerUtils.isPrimitive(target)) {
                return new Cast(source, target, value(ce.getOp()));
            } else {
                return new CheckCast(target, value(ce.getOp()));
            }
        } else if (val instanceof InstanceOfExpr) {
            InstanceOfExpr ie = (InstanceOfExpr) val;
            InstanceOf io = new InstanceOf();
            io.className = SootDecompiler.toJavaType(ie.getCheckType());
            io.value = value(ie.getOp());
            return io;
        } else if (val instanceof NegExpr) {
            return new Neg(value(((NegExpr) val).getOp()));
        }

        throw new RuntimeException("Unknown expr : " + val + " @" + val.getClass());
    }

    Code dynamic(DynamicInvokeExpr expr) {
        SootMethodRef bsRef = expr.getBootstrapMethodRef();
        List<Code> args = new ArrayList();
        String declaringClass = bsRef.declaringClass().getName();
        String methodName = bsRef.name();
        if (declaringClass.equals("java.lang.invoke.StringConcatFactory")
                && methodName.equals("makeConcatWithConstants")) {
            for (Value val : expr.getBootstrapArgs()) {
                args.add(value(val));
            }

            if (args.size() == 1 && args.get(0).getClass() == Const.class) {
                Const c = (Const) args.get(0);
                if (c.value != null && c.value instanceof String) {
                    return c;
                }
            }
        }

        if (declaringClass.equals("java.lang.invoke.LambdaMetafactory") && methodName.equals("metafactory")) {
            List<Value> bsmArgs = expr.getBootstrapArgs();
            SootClass caller = sootMethod.getDeclaringClass();
            String invokedName = expr.getMethodRef().name();
            SootMethodRef invokedType = expr.getMethodRef();
            SootMethodType samMethodType = (SootMethodType) bsmArgs.get(0);
            SootMethodHandle implMethod = (SootMethodHandle) bsmArgs.get(1);
            SootMethodType instantiatedMethodType = (SootMethodType) bsmArgs.get(2);

            List<Type> markerInterfaces = new ArrayList<>();
            List<SootMethodType> bridgeMethods = new ArrayList<>();
            if (expr.getBootstrapMethodRef().name().equals("altMetafactory")) {
                int flags = ((IntConstant) bsmArgs.get(3)).value;
                int bsmArgsIdx = 4;
                if ((flags & FLAG_MARKERS) > 0) {
                    int count = ((IntConstant) bsmArgs.get(bsmArgsIdx++)).value;
                    for (int i = 0; i < count; i++) {
                        Object value = bsmArgs.get(bsmArgsIdx++);
                        if (value instanceof Type) {
                            markerInterfaces.add((Type) value);
                        } else if (value instanceof ClassConstant) {
                            String className = ((ClassConstant) value).getValue().replace('/', '.');
                            markerInterfaces.add(SootResolver.v()
                                    .resolveClass(className, SootClass.HIERARCHY).getType());
                        }
                    }
                }
                if ((flags & FLAG_BRIDGES) > 0) {
                    int count = ((IntConstant) bsmArgs.get(bsmArgsIdx++)).value;
                    for (int i = 0; i < count; i++) {
                        bridgeMethods.add((SootMethodType) bsmArgs.get(bsmArgsIdx++));
                    }
                }
            }

            // search for additional bridge methods in the
            // interface we implement. Javac
            // may not emit them in the invoke dynamic call
            // see issue #1087
            if (bridgeMethods.size() == 0) {
                SootClass targetType = SootResolver.v().resolveClass(
                        invokedType.returnType().toString().replace('/', '.'), SootClass.SIGNATURES);
                String samDescriptor = SootDecompiler.buildJavaSignature(samMethodType.getParameterTypes(),
                        samMethodType.getReturnType());
                for (SootMethod targetTypeMethod : targetType.getMethods()) {
                    boolean isBridgeMethod = targetTypeMethod.getName().equals(invokedName);
                    isBridgeMethod &= targetTypeMethod.getName().equals(invokedName);
                    isBridgeMethod &= targetTypeMethod.getParameterCount() == samMethodType.getParameterTypes().size();
                    isBridgeMethod &= ((targetTypeMethod.getModifiers() & BRIDGE) != 0);
                    isBridgeMethod &= ((targetTypeMethod.getModifiers() & SYNTHETIC) != 0);
                    if (isBridgeMethod) {
                        String targetTypeMethodDesc = SootDecompiler.buildJavaSignature(targetTypeMethod.getParameterTypes(), targetTypeMethod.getReturnType());
                        if (!targetTypeMethodDesc.equals(samDescriptor)) {
                            bridgeMethods.add(new BridgeMethodType(targetTypeMethod.getReturnType(),
                                    targetTypeMethod.getParameterTypes()));
                        }
                    }
                }
            }
            /*
            Clazz generated = LambdaMetafactoryGenerator.generate(caller, invokedName, invokedType, samMethodType, implMethod, instantiatedMethodType, markerInterfaces, bridgeMethods);
            klass.generatedClasses.put(generated.name, generated);
            */
            return new Alloc(klass.name);
        }

        System.out.println(bsRef.getSignature());
        Call call = new Call();
        call.className = bsRef.declaringClass().getName().replace('.', '/');
        call.callType = Call.CallType.Static;
        call.methodName = bsRef.name();
        call.signature = SootDecompiler.buildJavaSignature(bsRef.parameterTypes(), bsRef.returnType());
        call.args = args;
        return call;
    }

    Code assign(AssignStmt assign) {
        //ignore jdk12 $assertionDisabled field
        if (assign.getLeftOp() instanceof FieldRef && ((FieldRef) assign.getLeftOp()).getFieldRef().name().equals("$assertionsDisabled")) {
            return null;
        }
        if (assign.getRightOp() instanceof FieldRef && ((FieldRef) assign.getRightOp()).getFieldRef().name().equals("$assertionsDisabled")) {
            return new Assign(value(assign.getLeftOp()), new Const(0));
        }

        if (assign.getLeftOp() instanceof ArrayRef) {
            ArrayRef ar = (ArrayRef) assign.getLeftOp();
            ArrayAccess aa = new ArrayAccess(value(ar.getBase()), value(ar.getIndex()), value(assign.getRightOp()));
            aa.expectedType = aa.inferredType = SootDecompiler.toJavaType(ar.getType());
            return aa;
        }
        return new Assign(value(assign.getLeftOp()), value(assign.getRightOp()));
    }

    static class BridgeMethodType extends Constant implements SootMethodType {

        private static final long serialVersionUID = 1L;

        private final Type returnType;
        private final List<Type> parameterTypes;

        public BridgeMethodType(Type returnType, List<Type> parameterTypes) {
            this.returnType = returnType;
            this.parameterTypes = parameterTypes;
        }

        public Type getReturnType() {
            return returnType;
        }

        public List<Type> getParameterTypes() {
            return Collections.unmodifiableList(parameterTypes);
        }

        @Override
        public Type getType() {
            return RefType.v("java.lang.invoke.MethodType");
        }

        @Override
        public void apply(soot.util.Switch sw) {
            ((ConstantSwitch) sw).defaultCase(this);
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();

            sb.append('(');
            for (Iterator<Type> it = parameterTypes.iterator(); it.hasNext();) {
                sb.append(it.next());
                if (it.hasNext()) {
                    sb.append(',');
                }
            }
            return sb.append(')').append(returnType).toString();
        }
    }
}
