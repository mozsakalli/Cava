package com.cava.compiler;

import java.util.HashMap;
import java.util.Map;
import soot.Body;
import soot.PackManager;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.GotoStmt;
import soot.jimple.IfStmt;
import soot.jimple.LookupSwitchStmt;
import soot.jimple.TableSwitchStmt;

import com.cava.compiler.model.*;
import com.cava.compiler.code.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import soot.Immediate;
import soot.LocalVariable;
import soot.PatchingChain;
import soot.SootMethodRef;
import soot.Trap;
import soot.Type;
import soot.UnitBox;
import soot.jimple.AddExpr;
import soot.jimple.AndExpr;
import soot.jimple.ArrayRef;
import soot.jimple.BinopExpr;
import soot.jimple.CastExpr;
import soot.jimple.CaughtExceptionRef;
import soot.jimple.ClassConstant;
import soot.jimple.CmpExpr;
import soot.jimple.CmpgExpr;
import soot.jimple.CmplExpr;
import soot.jimple.ConditionExpr;
import soot.jimple.DefinitionStmt;
import soot.jimple.DivExpr;
import soot.jimple.DoubleConstant;
import soot.jimple.EnterMonitorStmt;
import soot.jimple.EqExpr;
import soot.jimple.ExitMonitorStmt;
import soot.jimple.FieldRef;
import soot.jimple.FloatConstant;
import soot.jimple.GeExpr;
import soot.jimple.GtExpr;
import soot.jimple.InstanceFieldRef;
import soot.jimple.InstanceInvokeExpr;
import soot.jimple.InstanceOfExpr;
import soot.jimple.IntConstant;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.LeExpr;
import soot.jimple.LengthExpr;
import soot.jimple.LongConstant;
import soot.jimple.LtExpr;
import soot.jimple.MulExpr;
import soot.jimple.NeExpr;
import soot.jimple.NegExpr;
import soot.jimple.NewArrayExpr;
import soot.jimple.NewExpr;
import soot.jimple.NullConstant;
import soot.jimple.OrExpr;
import soot.jimple.ParameterRef;
import soot.jimple.RemExpr;
import soot.jimple.ReturnStmt;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.ShlExpr;
import soot.jimple.ShrExpr;
import soot.jimple.StringConstant;
import soot.jimple.SubExpr;
import soot.jimple.ThisRef;
import soot.jimple.ThrowStmt;
import soot.jimple.UshrExpr;
import soot.jimple.XorExpr;
import soot.jimple.internal.JInterfaceInvokeExpr;
import soot.jimple.internal.JSpecialInvokeExpr;
import soot.jimple.internal.JStaticInvokeExpr;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.tagkit.LineNumberTag;
import soot.util.Chain;

/**
 *
 * @author mustafa
 */
public class SootMethodDecompiler {
    Clazz klass;
    Method method;
    SootMethod sootMethod;
    Map<Unit, Label> unitToLabelMap = new HashMap();
    Map<Unit, Integer> unitToIndex = new HashMap();
    Map<Unit, List<Trap>> trapsAt = new HashMap();
    Map<String, Var> variableMap = new HashMap();
    
    public void decompile(SootMethod sm, Method m, Clazz c) {
        klass = c;
        method = m;
        sootMethod = sm;

        Body body = sm.retrieveActiveBody();
        PackManager.v().getPack("jtp").apply(body);
        PackManager.v().getPack("jop").apply(body);
        PackManager.v().getPack("jap").apply(body);

        int index = 0;
        for(Unit u : body.getUnits()) {
            unitToIndex.put(u, index++);
        }

        // build unit to line map
        Map<Unit, Integer> unitToLine = new HashMap<>();
        Integer lastLineNumber = null;
        for (Unit unit : body.getUnits()) {
            LineNumberTag tag = (LineNumberTag) unit.getTag("LineNumberTag");
            if (tag != null) {
                unitToLine.put(unit, lastLineNumber = tag.getLineNumber());
            } else if(lastLineNumber != null)
                unitToLine.put(unit, lastLineNumber);
        }        

        
        /*
        if(!sootMethod.isStatic()) {
            newVariable("arg0", sootMethod.getDeclaringClass().getName().replace('.', '/'));
        }
        
        for(int i=0; i<sootMethod.getParameterCount(); i++) {
            method.args.add(newVariable("arg"+(i+(sootMethod.isStatic() ? 0 : 1)), sootMethod.getParameterType(i)));
        }*/
        
        for(soot.Local l : body.getLocals()) {
            newVariable(l.getName(), l.getType());
        }
        
        Map<Unit, Code> unitToCode = new HashMap();

        PatchingChain<Unit> units = body.getUnits();
        Map<Unit, List<Unit>> branchTargets = getBranchTargets(body);
        Map<Unit, Integer> trapHandlers = getTrapHandlers(body);
        Map<Unit, Integer> selChanges = new HashMap<Unit, Integer>();
        
        if(!body.getTraps().isEmpty()) {
            List<List<Trap>> recordedTraps = new ArrayList<List<Trap>>();
            for (Unit unit : units) {
                // Calculate the predecessor units of unit 
                Set<Unit> incoming = new HashSet<Unit>();
                if (units.getFirst() != unit && units.getPredOf(unit).fallsThrough()) {
                    incoming.add(units.getPredOf(unit));
                }
                if (branchTargets.keySet().contains(unit)) {
                    incoming.addAll(branchTargets.get(unit));
                }
                
                if (unit == units.getFirst() || trapHandlers.containsKey(unit) 
                        || trapsDiffer(unit, incoming)) {
                    
                    List<Trap> traps = getTrapsAt(unit);
                    if (traps.isEmpty()) {
                        selChanges.put(unit, 0);
                    } else {
                        index = recordedTraps.indexOf(traps);
                        if (index == -1) {
                            index = recordedTraps.size();
                            recordedTraps.add(traps);
                        }
                        selChanges.put(unit, index + 1);
                    }
                }
                
            }  
            for (List<Trap> traps : recordedTraps) {
                TrapInfo ti = new TrapInfo();
                for (Trap trap : traps) {
                    String exception = trap.getException().getName().replace('.', '/');
                    ti.addTrap(exception, unitToIndex.get(trap.getHandlerUnit()));
                }
                method.traps.add(ti);
            }
            
            method.body.add(new TrapEnter());
        }
        
        int currentLine = -1;
        Map<Code, Code> codeRealStartMap = new HashMap();
        
        for (Unit u : body.getUnits()) {

            Code code = decompile(u);
            if(code instanceof If || code instanceof Goto) method.hasGoto = true;
            
            unitToCode.put(u, code);
            
            Integer lineNumber = unitToLine.get(u);
            if(lineNumber != null && lineNumber != currentLine) {
                Code line = new LineNumber(currentLine = lineNumber);
                method.body.add(line);
                if(!codeRealStartMap.containsKey(code))
                    codeRealStartMap.put(code, line);
            }

            if(selChanges.containsKey(u)) {
                Code sel = new TrapSelector(selChanges.get(u));
                method.body.add(sel);
                if(!codeRealStartMap.containsKey(code))
                    codeRealStartMap.put(code, sel);
            }
            
            if(!body.getTraps().isEmpty() && code instanceof Return) {
                Code leave = new TrapLeave();
                method.body.add(leave);
                if(!codeRealStartMap.containsKey(code))
                    codeRealStartMap.put(code, leave);
            }
            
            method.body.add(code);
        }
        
        //fix branch targets
        for(Code code : method.body) {
            if(code instanceof Branch) {
                Branch b = (Branch)code;
                int newTarget = findRealTarget(b.target, unitToCode, codeRealStartMap);
                if(newTarget != -1) {
                    b.target = newTarget;
                    method.labels.add(newTarget);
                }
            } else if(code instanceof Switch) {
                Switch sw = (Switch)code;
                for(int i=0; i<sw.labels.size(); i++) {
                    int newTarget = findRealTarget(sw.labels.get(i), unitToCode, codeRealStartMap);
                    if(newTarget != -1) {
                        sw.labels.set(i, newTarget);
                        method.labels.add(newTarget);
                    }
                }
            }
        }
        //fix trap targets
        for(TrapInfo ti : method.traps) {
            //System.out.println("TrapSet#"+method.traps.indexOf(ti));
            for(TrapInfo.Info inf : ti.handlers) {
                int newTarget = findRealTarget(inf.target, unitToCode, codeRealStartMap);
                if(newTarget != -1) {
                    inf.target = newTarget;
                    method.labels.add(newTarget);
                }
                //System.out.println("   "+inf.type+" ? label"+inf.target);
            }
        }

        /*
        List<Var> vars = new ArrayList(variableMap.values());
        vars.sort((v1,v2) -> v1.index - v2.index);
        for(Var v : vars) {
            System.out.println(v.name+":"+v.index+":"+v.type);
        }
        */
        //Generate local debug info     
        VariableSlicer slicer = new VariableSlicer(sootMethod);
        //Map<String, List<DebugVariableInfo>> variableDebugInfo = new HashMap();
        Set<String> activeVariables = new HashSet();
        for(Unit u : body.getUnits()) {
            VariableSlicer.UnitVariableSlice s = slicer.getVariableSliceForUnitIfExists(u);
            if(s == null) continue;
            int line = unitToLine.get(u); //findRealTarget(unitToIndex.get(u), unitToCode, codeRealStartMap);
            
            //System.out.print(line+": ");
            Set<String> active = new HashSet();
            for(int i=0; i<s.variables.size(); i++) {
                LocalVariable lv = s.variables.get(i);
                soot.Local l = s.locals.get(i);
                int slot = variableMap.get(l.getName()).index;
                
                DebugVariableInfo di = 
                method.debugVariables.stream().filter(d -> d.name.equals(lv.getName())).findFirst().orElse(null);
                if(di == null) {
                    di = new DebugVariableInfo();
                    di.name = lv.getName();
                    method.debugVariables.add(di);
                }
                //List<DebugVariableInfo> list = variableDebugInfo.computeIfAbsent(lv.getName(), (k) -> new ArrayList());
                int[] last =  di.list.isEmpty() ? null : di.list.get(di.list.size() - 1);
                if(last == null || !activeVariables.contains(lv.getName())) {
                    di.list.add(new int[]{slot, line, line});
                } else {
                    last[2] = Math.max(last[2], line);
                    last[1] = Math.min(last[1], line);
                }
                active.add(lv.getName());
                //System.out.print(lv.getName()+"("+variableMap.get(l.getName()).index+"),");
            }
            
            activeVariables = active;
            //System.out.println();
        }
        
        for(Var v : variableMap.values()) {
            method.locals.add(v);
        }
        method.locals.sort((v1,v2) -> v1.index - v2.index);
        
        /*
        for(DebugVariableInfo di : method.debugVariables) {
            String n = di.name;
            System.out.print(n+": ");
            for(int[] inf : di.list)
                System.out.print(inf[0]+","+inf[1]+","+inf[2]+"   ");
            System.out.println();
        }
        
        int line = 0;
        for(Code cd : method.body)
            System.out.println((line++)+": "+cd);
        */
    }

    int findRealTarget(int oldTarget, Map<Unit, Code> unitToCode, Map<Code, Code> codeRealStartMap) {
        Map.Entry<Unit,Integer> entry = unitToIndex.entrySet().stream().filter(e -> e.getValue() == oldTarget).findFirst().orElse(null);
        if(entry != null) {
            Code target = unitToCode.get(entry.getKey());
            if(target != null) {
                if(codeRealStartMap.containsKey(target))
                    target = codeRealStartMap.get(target);
                return method.body.indexOf(target);
            }
        }
        return -1;
    }
    private boolean trapsDiffer(Unit unit, Collection<Unit> incomingUnits) {
        List<Trap> traps = getTrapsAt(unit);
        for (Unit incomingUnit : incomingUnits) {
            if (!traps.equals(getTrapsAt(incomingUnit))) {
                return true;
            }
        }
        return false;
    }
    
    private Map<Unit, List<Unit>> getBranchTargets(Body body) {
        Map<Unit, List<Unit>> result = new HashMap<Unit, List<Unit>>();
        for (Unit unit : body.getUnits()) {
            if (unit.branches()) {
                List<Unit> targetUnits = new ArrayList<Unit>();
                for (UnitBox ub : unit.getUnitBoxes()) {
                    targetUnits.add(ub.getUnit());
                }
                if (unit.fallsThrough()) {
                    targetUnits.add(body.getUnits().getSuccOf(unit));
                }
                for (Unit targetUnit : targetUnits) {
                    List<Unit> sourceUnits = result.get(targetUnit);
                    if (sourceUnits == null) {
                        sourceUnits = new ArrayList<Unit>();
                        result.put(targetUnit, sourceUnits);
                    }
                    sourceUnits.add(unit);
                }
            }
        }
        return result;
    }
    
    private Map<Unit, Integer> getTrapHandlers(Body body) {
        Map<Unit, Integer> trapHandlers = new HashMap<Unit, Integer>();
        for (Trap trap : body.getTraps()) {
            Unit beginUnit = trap.getBeginUnit();
            Unit endUnit = trap.getEndUnit();
            if (beginUnit != endUnit && !trapHandlers.containsKey(trap.getHandlerUnit())) {
                trapHandlers.put(trap.getHandlerUnit(), trapHandlers.size());
            }
        }
        return trapHandlers;
    }
    
    private List<Trap> getTrapsAt(Unit u) {
        List<Trap> result = this.trapsAt.get(u);
        if (result == null) {
            Body body = sootMethod.getActiveBody();
            Chain<Trap> traps = body.getTraps();
            if (traps.isEmpty()) {
                result = Collections.emptyList();
            } else {
                result = new ArrayList<Trap>();
                PatchingChain<Unit> units = body.getUnits();
                for (Trap trap : traps) {
                    Unit beginUnit = trap.getBeginUnit();
                    Unit endUnit = trap.getEndUnit();
                    if (beginUnit != endUnit && u != endUnit) {
                        if (u == beginUnit || (units.follows(u, beginUnit) && units.follows(endUnit, u))) {
                            result.add(trap);
                        }
                    }
                }
            }
            this.trapsAt.put(u, result);
        }
        return result;
    }
    
    Var newVariable(String name, Type type) {
        return newVariable(name, SootClassLoader.toJavaType(type));
    }
    
    Var newVariable(String name, String t) {
        Var old = variableMap.get(name);
        if(old != null) {
            String ot = !DecompilerUtils.isPrimitive(old.type) ? "O" : old.type;
            String nt = !DecompilerUtils.isPrimitive(t) ? "O" : t;
            if(!ot.equals(nt)) throw new RuntimeException(name+" differes "+old.type+" to "+t);
        } else {
            //int parameterCount = (sootMethod.isStatic() ? 0 : 1) + sootMethod.getParameterCount();
            old = new Var(name,variableMap.size(),t,false);
            variableMap.put(name, old);
        }        
        return old;
    }
    
    Code decompile(Unit unit) {
        if(unit instanceof DefinitionStmt) {
            return assign((DefinitionStmt)unit);
        } else if(unit instanceof IfStmt) {
            return if_((IfStmt)unit);
        } else if(unit instanceof GotoStmt) {
            GotoStmt g = (GotoStmt)unit;
            return new Goto(unitToIndex.get(g.getTarget()));
        } else if(unit instanceof ReturnStmt) {
            return new Return(immediate((Immediate)((ReturnStmt)unit).getOp()));
        } else if(unit instanceof ReturnVoidStmt) {
            return new Return(null);
        } else if(unit instanceof ThrowStmt) {
            return new Throw(immediate((Immediate)((ThrowStmt)unit).getOp()));
        } else if(unit instanceof InvokeStmt) {
            return invoke(((InvokeStmt)unit).getInvokeExpr());
        } else if(unit instanceof LookupSwitchStmt) {
            return lookupSwitch((LookupSwitchStmt)unit);
        } else if(unit instanceof TableSwitchStmt) {
            return tableSwitch((TableSwitchStmt)unit);
        } else if(unit instanceof EnterMonitorStmt) {
            return new Monitor(immediate((Immediate)((EnterMonitorStmt)unit).getOp()), false);
        } else if(unit instanceof ExitMonitorStmt) {
            return new Monitor(immediate((Immediate)((ExitMonitorStmt)unit).getOp()), true);
        }
        
        throw new RuntimeException("Unknown "+unit.getClass());
    }

    Code assign(DefinitionStmt stmt) {
        soot.Value rightOp = stmt.getRightOp();
        Code right;
        if(rightOp instanceof Immediate) {
            right = immediate((Immediate)rightOp);
        } else
        if(rightOp instanceof BinopExpr) {
            right = bin((BinopExpr)rightOp);
        } else    
        if(rightOp instanceof NewArrayExpr) {
            NewArrayExpr expr = (NewArrayExpr) rightOp;
            Code size = immediate((Immediate) expr.getSize());  
            right = new AllocArray(size, SootClassLoader.toJavaType(expr.getBaseType()));
        } else if(rightOp instanceof ArrayRef) {
            ArrayRef ref = (ArrayRef) rightOp;
            Code base = immediate((Immediate) ref.getBase());
            Code index = immediate((Immediate) ref.getIndex());
            right = new Array(base, index, SootClassLoader.toJavaType(ref.getType()));
        } else if(rightOp instanceof CastExpr) {
            right = new Cast(immediate((Immediate) ((CastExpr) rightOp).getOp()), 
            SootClassLoader.toJavaType(((CastExpr) rightOp).getOp().getType()), 
            SootClassLoader.toJavaType(((CastExpr) rightOp).getCastType()));
        } else if(rightOp instanceof CaughtExceptionRef) {
            right = new CaughtException();
        } else if(rightOp instanceof ParameterRef) {
            ParameterRef p = (ParameterRef)rightOp;
            right = new Arg(((sootMethod.isStatic() ? 0 : 1) + p.getIndex()));
                    //newVariable("arg" + ((sootMethod.isStatic() ? 0 : 1) + p.getIndex()), p.getType());
        } else if(rightOp instanceof ThisRef) {
            right = new Arg(0);
        } else if(rightOp instanceof InvokeExpr) {
            right = invoke((InvokeExpr)rightOp);
        } else if(rightOp instanceof NewExpr) {
            right = new Alloc(((NewExpr)rightOp).getBaseType().getClassName().replace('.', '/'));
        } else if(rightOp instanceof FieldRef) {
            right = field((FieldRef)rightOp);
        } else if(rightOp instanceof LengthExpr) {
            right = new ArrayLength(immediate((Immediate)((LengthExpr)rightOp).getOp()));
        } else if(rightOp instanceof InstanceOfExpr) {
            InstanceOfExpr ie = (InstanceOfExpr)rightOp;
            right = new InstanceOf(immediate((Immediate)ie.getOp()), SootClassLoader.toJavaType(ie.getCheckType()));
        } else if(rightOp instanceof NegExpr) {
            right = new Neg(immediate((Immediate)((NegExpr)rightOp).getOp()));
        }
        
        else
        throw new RuntimeException("Unknown RightOp: "+rightOp.getClass());
        
        soot.Value leftOp = stmt.getLeftOp();
        Code left;
        if(leftOp instanceof soot.Local) {
            soot.Local l = (soot.Local)leftOp;
            left = newVariable(l.getName(), l.getType());
        } else if(leftOp instanceof ArrayRef) {
            ArrayRef ref = (ArrayRef) leftOp;
            Code base = immediate((Immediate) ref.getBase());
            Code index = immediate((Immediate) ref.getIndex());
            left = new Array(base, index, SootClassLoader.toJavaType(ref.getType()));
        } else if(leftOp instanceof FieldRef) {
            left = field((FieldRef)leftOp);
        } else
        throw new RuntimeException("Unknown LeftOp: "+leftOp.getClass());
        
        return new Assign(left, right);
    }
    
    Code field(FieldRef ref) {
        Code base = null;
        if(ref instanceof InstanceFieldRef)
            base = immediate((Immediate)((InstanceFieldRef)ref).getBase());
        
        return new Field(base,
        ref.getFieldRef().declaringClass().getName().replace('.', '/'),
        ref.getFieldRef().name(),
        SootClassLoader.toJavaType(ref.getFieldRef().type()));
    }
    
    Code bin(BinopExpr expr) {
        Code left = immediate((Immediate)expr.getOp1());
        Code right = immediate((Immediate)expr.getOp2());
        Binop.Op op = null;
        if(expr instanceof RemExpr) op = Binop.Op.Rem;
        else if(expr instanceof MulExpr) op = Binop.Op.Mul;
        else if(expr instanceof AddExpr) op = Binop.Op.Add;
        else if(expr instanceof SubExpr) op = Binop.Op.Sub;
        else if(expr instanceof DivExpr) op = Binop.Op.Div;
        else if(expr instanceof AndExpr) op = Binop.Op.And;
        else if(expr instanceof OrExpr) op = Binop.Op.Or;
        else if(expr instanceof ShlExpr) op = Binop.Op.Shl;
        else if(expr instanceof ShrExpr) op = Binop.Op.Shr;
        else if(expr instanceof UshrExpr) op = Binop.Op.UShr;
        else if(expr instanceof XorExpr) op = Binop.Op.Xor;
        else if(expr instanceof CmplExpr) op = Binop.Op.Cmpl;
        else if(expr instanceof CmpgExpr) op = Binop.Op.Cmpg;
        else if(expr instanceof CmpExpr) op = Binop.Op.Cmp;
        else throw new RuntimeException("Unknown: "+expr.getClass());

        return new Binop(left, right, op, SootClassLoader.toJavaType(expr.getType()));
    }
    
    Code immediate(Immediate v) {
        if(v instanceof soot.Local) {
            soot.Local local = (soot.Local)v;
            return newVariable(local.getName(), local.getType()); 
        } else if(v instanceof IntConstant) {
            return new Const(((IntConstant)v).value, "I");
        } else if(v instanceof StringConstant) {
            return new Const(((StringConstant)v).value, "java/lang/String");
        } else if(v instanceof LongConstant) {
            return new Const(((LongConstant)v).value, "J");
        } else if(v instanceof ClassConstant) {
            return new ClassConst(((ClassConstant)v).value.replace('.', '/'));
        } else if(v instanceof NullConstant) {
            return new Const(null, "java/lang/Object");
        } else if(v instanceof FloatConstant) {
            return new Const(((FloatConstant)v).value, "F");
        } else if(v instanceof DoubleConstant) {
            return new Const(((DoubleConstant)v).value, "D");
        }
        throw new RuntimeException("Unknown "+v.getClass());
    }
    
    Code if_(IfStmt stmt) {
        ConditionExpr condition = (ConditionExpr) stmt.getCondition();
        Code op1 = immediate((Immediate) condition.getOp1());
        Code op2 = immediate((Immediate) condition.getOp2());
        If.Condition c = null;
        if (condition instanceof EqExpr) {
            c = If.Condition.Eq;
        } else if (condition instanceof NeExpr) {
            c = If.Condition.Neq;
        } else if (condition instanceof GtExpr) {
            c = If.Condition.Gt;
        } else if (condition instanceof LtExpr) {
            c = If.Condition.Lt;
        } else if (condition instanceof GeExpr) {
            c = If.Condition.Ge;
        } else if (condition instanceof LeExpr) {
            c = If.Condition.Le;
        }
        
        return new If(op1, op2, c, unitToIndex.get(stmt.getTarget()));
    }
    
    Code invoke(InvokeExpr expr) {
        SootMethodRef ref = expr.getMethodRef();

        Call call = new Call();
        call.className = ref.declaringClass().getName().replace('.', '/');
        call.methodName = ref.name();
        
        if(expr instanceof JVirtualInvokeExpr)
            call.callType = Call.CallType.Virtual;
        else if(expr instanceof JSpecialInvokeExpr)
            call.callType = Call.CallType.Special;
        else if(expr instanceof JStaticInvokeExpr)
            call.callType = Call.CallType.Static;
        else if(expr instanceof JInterfaceInvokeExpr)
            call.callType = Call.CallType.Interface;
        else throw new RuntimeException("Unknown invoke type: "+expr.getClass());

        call.args = new ArrayList();
        if(call.callType != Call.CallType.Static) {
            Code base = immediate((Immediate) ((InstanceInvokeExpr) expr).getBase());
            call.args.add(base);
        }
        for (soot.Value sootArg : (List<soot.Value>) expr.getArgs())  {
            Code arg = immediate((Immediate) sootArg);
            call.args.add(arg);
        }
        
        call.signature = SootClassLoader.buildJavaSignature(ref.parameterTypes(), ref.returnType());
        
        return call;
    }
    
    Code lookupSwitch(LookupSwitchStmt stmt) {
        Switch sw = new Switch();
        for(int i=0; i<stmt.getTargetCount(); i++) {
            int value = stmt.getLookupValue(i);
            Unit target = stmt.getTarget(i);            
            sw.values.add(value);
            sw.labels.add(unitToIndex.get(target));
        }
        sw.key = immediate((Immediate)stmt.getKey());
        return sw;
    }
    
    Code tableSwitch(TableSwitchStmt stmt) {
        Switch sw = new Switch();
        for (int i = stmt.getLowIndex(); i <= stmt.getHighIndex(); i++) {
            Unit target = stmt.getTarget(i - stmt.getLowIndex());
            sw.values.add(i);
            sw.labels.add(unitToIndex.get(target));
        }        
        sw.key = immediate((Immediate)stmt.getKey());
        return sw;
    }
}
