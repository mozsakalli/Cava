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
import soot.jimple.Stmt;
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
import soot.PatchingChain;
import soot.Trap;
import soot.UnitBox;
import soot.jimple.AddExpr;
import soot.jimple.ArrayRef;
import soot.jimple.BinopExpr;
import soot.jimple.CastExpr;
import soot.jimple.CaughtExceptionRef;
import soot.jimple.ConditionExpr;
import soot.jimple.DefinitionStmt;
import soot.jimple.EqExpr;
import soot.jimple.GeExpr;
import soot.jimple.GtExpr;
import soot.jimple.IntConstant;
import soot.jimple.LeExpr;
import soot.jimple.LtExpr;
import soot.jimple.MulExpr;
import soot.jimple.NeExpr;
import soot.jimple.NewArrayExpr;
import soot.jimple.RemExpr;
import soot.jimple.ReturnStmt;
import soot.jimple.StringConstant;
import soot.jimple.SubExpr;
import soot.jimple.ThrowStmt;
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
    
    
    Set<Integer> labels = new HashSet();
    
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

        Map<Unit, Code> unitToCode = new HashMap();
        Map<Unit, List<Trap>> catches = new HashMap();
        Set<Unit> tries = new HashSet();
        Set<Unit> throwset = new HashSet();
        
        for(Trap t : body.getTraps()) {
            Unit end = t.getEndUnit();
            List<Trap> traps = catches.get(end);
            if(traps == null) {
                traps = new ArrayList();
                catches.put(end, traps);
            }
            traps.add(t);
            
            Unit begin = t.getBeginUnit();
            tries.add(begin);
            
            if(end.equals(t.getHandlerUnit())) throwset.add(t.getHandlerUnit());
        }
        
        Map<Unit,Integer> trapDepthMap = new HashMap();
        int trapDepth = 0;
        for(Unit u : body.getUnits()) {
            trapDepthMap.put(u, trapDepth);
            if(tries.contains(u)) {
                trapDepth++;
            }
            if(catches.containsKey(u)) {
                trapDepth--;
            }
            
        }
        
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
                for (Trap trap : traps) {
                    String exception = trap.getException().getName().replace('.', '/');
                    int sel = trapHandlers.get(trap.getHandlerUnit());
                    method.body.add(new If(new TrapSelector(-1), new Const(sel,"I"), If.Condition.Eq, unitToIndex.get(trap.getHandlerUnit())));
                }
            }
            
            method.body.add(new TrapEnter());
        }
        
        trapDepth = 0;
        for (Unit u : body.getUnits()) {
            /*if(tries.contains(u)) {
                method.body.add(new TrapEnter());
                trapDepth++;
            }*/
            if(selChanges.containsKey(u)) {
                method.body.add(new TrapSelector(selChanges.get(u)));
            }

            Code code = decompile(u);
            unitToCode.put(u, code);
            
            /*
            if(trapDepth > 0) {
                Unit target = null;
                if(u instanceof JGotoStmt) {
                    target = ((JGotoStmt)u).getTarget();
                } else if(u instanceof JReturnStmt || u instanceof JReturnVoidStmt) {
                    method.body.add(new TrapLeave(trapDepth));
                }
                
                if(target != null) {
                    int targetDepth = trapDepthMap.get(target);
                    if(targetDepth < trapDepth) {
                        method.body.add(new TrapLeave(trapDepth - targetDepth));
                        trappedJumps.add(code);
                    }
                }
            }
            */
            if(!body.getTraps().isEmpty() && code instanceof Return)
                method.body.add(new TrapLeave());
            method.body.add(code);
            /*
            if(catches.containsKey(u)) {
                trapDepth--;
                for(Trap t : catches.get(u)) {
                    Var v = new Var("_exc",0,"I");
                    method.body.add(new Assign(v, new InstanceOf(new CaughtException(), t.getException().getName().replace('.', '/'))));
                    method.body.add(new If(v, new Const(1,"I"), If.Condition.Eq, unitToIndex.get(t.getHandlerUnit())));
                }
            }*/
        }
        
        
        for(Code code : method.body) {
            if(code instanceof Branch) {
                Branch b = (Branch)code;
                Map.Entry<Unit,Integer> entry = unitToIndex.entrySet().stream().filter(e -> e.getValue() == b.target).findFirst().orElse(null);
                if(entry != null) {
                    Code target = unitToCode.get(entry.getKey());
                    if(target != null) {
                        int targetIndex = method.body.indexOf(target);
                        //if(trappedJumps.contains(target)) targetIndex--;
                        b.target = targetIndex;
                    }
                }
            }
        }
        int line = 0;
        for(Code cd : method.body)
            System.out.println((line++)+": "+cd);
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

    int labelIdCounter;

    private void newLabel(Stmt stmt) {
        labels.add(unitToIndex.get(stmt));
        Label label = unitToLabelMap.get(stmt);
        if (label == null) {
            label = new Label();//"label" + labelIdCounter++);
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
        }
        else
        throw new RuntimeException("Unknown RightOp: "+rightOp.getClass());
        
        soot.Value leftOp = stmt.getLeftOp();
        Code left;
        if(leftOp instanceof soot.Local) {
            left = new Var((soot.Local)leftOp);
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
        else throw new RuntimeException("Unknown: "+expr.getClass());

        return new Binop(left, right, op, SootClassLoader.toJavaType(expr.getType()));
    }
    
    Code immediate(Immediate v) {
        if(v instanceof soot.Local) {
            soot.Local local = (soot.Local)v;
            String type = SootClassLoader.toJavaType(local.getType());
            return new Var(local.getName(), local.getIndex(), type);
        } else if(v instanceof IntConstant) {
            return new Const(((IntConstant)v).value, "I");
        } else if(v instanceof StringConstant) {
            return new Const(((StringConstant)v).value, "java/lang/String");
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
