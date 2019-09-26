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
import soot.Trap;
import soot.Type;
import soot.UnitBox;
import soot.jimple.AddExpr;
import soot.jimple.ArrayRef;
import soot.jimple.BinopExpr;
import soot.jimple.CastExpr;
import soot.jimple.CaughtExceptionRef;
import soot.jimple.ConditionExpr;
import soot.jimple.DefinitionStmt;
import soot.jimple.DivExpr;
import soot.jimple.EqExpr;
import soot.jimple.GeExpr;
import soot.jimple.GtExpr;
import soot.jimple.IntConstant;
import soot.jimple.LeExpr;
import soot.jimple.LongConstant;
import soot.jimple.LtExpr;
import soot.jimple.MulExpr;
import soot.jimple.NeExpr;
import soot.jimple.NewArrayExpr;
import soot.jimple.ParameterRef;
import soot.jimple.RemExpr;
import soot.jimple.ReturnStmt;
import soot.jimple.StringConstant;
import soot.jimple.SubExpr;
import soot.jimple.ThrowStmt;
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
        for (Unit unit : body.getUnits()) {
            LineNumberTag tag = (LineNumberTag) unit.getTag("LineNumberTag");
            if (tag != null)
                unitToLine.put(unit, tag.getLineNumber());
        }        

        for(LocalVariable l : body.getLocalVariables()) {
            System.out.println(l.getName()+":"+unitToIndex.get(l.getStartUnit())+":"+
                    unitToIndex.get(l.getEndUnit())+":"+l.getIndex());
        }
        /*
        for(Local l : body.getLocals()) {
            method.locals.add(new Var(l));
            //method.locals.add(new NameAndType(l.getName(), SootClassLoader.toJavaType(l.getType()), false));
        }*/
        
        for(Var l : method.locals) {
            System.out.println(l.index+": "+l.name+" "+l.type);
        }
        Map<Unit, Code> unitToCode = new HashMap();

        PatchingChain<Unit> units = body.getUnits();
        Map<Unit, List<Unit>> branchTargets = getBranchTargets(body);
        Map<Unit, Integer> trapHandlers = getTrapHandlers(body);
        Map<Unit, Integer> selChanges = new HashMap<Unit, Integer>();
        
        if(!body.getTraps().isEmpty()) {
            System.out.println("Traps = "+body.getTraps().size());
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
                if(newTarget != -1) b.target = newTarget;
            }
        }
        //fix trap targets
        for(TrapInfo ti : method.traps) {
            System.out.println("TrapSet#"+method.traps.indexOf(ti));
            for(TrapInfo.Info inf : ti.handlers) {
                int newTarget = findRealTarget(inf.target, unitToCode, codeRealStartMap);
                if(newTarget != -1) inf.target = newTarget;
                System.out.println("   "+inf.type+" ? label"+inf.target);
            }
        }
        int line = 0;
        for(Code cd : method.body)
            System.out.println((line++)+": "+cd);
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
        String t = SootClassLoader.toJavaType(type);
        Var old = variableMap.get(name);
        if(old != null) {
            String ot = !DecompilerUtils.isPrimitive(old.type) ? "O" : old.type;
            String nt = !DecompilerUtils.isPrimitive(t) ? "O" : t;
            if(!ot.equals(nt)) throw new RuntimeException(name+" differes "+old.type+" to "+t);
        } else {
            old = new Var(name,0,t,false);
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
        } else if(unit instanceof ThrowStmt) {
            return new Throw(immediate((Immediate)((ThrowStmt)unit).getOp()));
        }
        
        
        if (unit instanceof TableSwitchStmt) {
            /*
            If f = null;
            TableSwitchStmt stmt = (TableSwitchStmt) unit;
            Switch sw = new Switch();
            sw.condition = value(stmt.getKey());
            sw.values = new ArrayList();
            sw.blocks = new ArrayList();
            for (int i = stmt.getLowIndex(); i <= stmt.getHighIndex(); i++) {
                sw.values.add(i);
                b.children.add(new Goto(unitToLabelMap.get(stmt.getTarget(i - stmt.getLowIndex()))));
                sw.blocks.add(b);
            }

            if (stmt.getDefaultTarget() != null) {
                sw.values.add(null);
                Block b = new Block();
                b.children.add(new Goto(unitToLabelMap.get(stmt.getDefaultTarget())));
                sw.blocks.add(b);
            }
            return sw;*/
            //todo: parse tableswitch
            //return new TableSwitch();
        } else if (unit instanceof LookupSwitchStmt) {
            //todo: implement lookup
            //return new Lookup();
        } else {
            //return statement((Stmt) unit);
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
            right = newVariable("p" + ((sootMethod.isStatic() ? 1 : 2) + p.getIndex()), p.getType());
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
        } else
        throw new RuntimeException("Unknown LeftOp: "+leftOp.getClass());
        
        return new Assign(left, right);
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
}
