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
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import soot.Immediate;
import soot.Trap;
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
import soot.jimple.SubExpr;
import soot.jimple.ThrowStmt;

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
    Set<Integer> labels = new HashSet();
    
    public void decompile(SootMethod sm, Method m, Clazz c) {
        klass = c;
        method = m;
        sootMethod = sm;

        Body body = sm.retrieveActiveBody();
        PackManager.v().getPack("jtp").apply(body);
        PackManager.v().getPack("jop").apply(body);
        PackManager.v().getPack("jap").apply(body);

        Set<Unit> tryEof = new HashSet();
        Set<Unit> tries = new HashSet();
        Set<Unit> throwset = new HashSet();
        Map<Stmt, List<Trap>> catches = new HashMap();
        
        for(Trap trap : body.getTraps()) {
            System.out.println(trap.getException());
            System.out.println(trap);
            /*
            Stmt begin = (Stmt) trap.getBeginUnit();
            Stmt end = (Stmt) trap.getEndUnit();
            Stmt handler = (Stmt)trap.getHandlerUnit();
            newLabel(begin);
            //newLabel(end);
            tryEof.add(end);
            newLabel(handler);
            tries.add(begin);

            List<Trap> traps = catches.get(end);
            if (traps == null) {
                traps = new ArrayList();
                catches.put(end, traps);
            }
            traps.add(trap);
            if(end.equals(handler)) throwset.add(handler);
            */
        }

        List<Unit> units = new ArrayList();
        /*
        for(Unit unit : body.getUnits()) {
            if(throwset.contains(unit) && catches.containsKey(unit)) {
                List<Trap> traps = catches.get(unit);
                int index = 0;
                Catch ci = new Catch();
                for (Trap trap : traps) {
                    ci.addTrap(SootClassLoader.toJavaType(trap.getException().getType()),
                                    getLabel((Stmt) trap.getHandlerUnit()), index++);
                }
            } 
            
        }
        */
        for (soot.Local l : body.getLocals()) {
            m.locals.add(new NameAndType(l.getName(), SootClassLoader.toJavaType(l.getType()), false));
            System.out.println("local: "+l.getName()+" / "+SootClassLoader.toJavaType(l.getType()));
        }
        
        Map<Unit,Code> unitToCode = new HashMap();
        
        int index = 0;
        for(Unit u : body.getUnits()) {
            unitToIndex.put(u, index++);
        }

        generateLabels(body);

        
        for (Unit u : body.getUnits()) {
            /*
            for(Trap t : body.getTraps()) {
                if(t.getBeginUnit().equals(u)) {
                    System.out.println("--try begin --");
                }
                if(t.getEndUnit() == u) {
                    System.out.println("-- try end --");
                }
            }*/
            index = unitToIndex.get(u);
            if(labels.contains(index))
                System.out.println("label"+index+":");
            /*
            Label label = unitToLabelMap.get(u);
            if (label != null) {
                m.codes.add(label);
            }*/

            Code code = decompile(u);
            System.out.println(code);
            if (code != null) {
                m.codes.add(code);
                unitToCode.put(u, code);
            }
        }
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
