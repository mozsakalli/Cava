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
import soot.Immediate;
import soot.Value;
import soot.jimple.ConditionExpr;
import soot.jimple.DefinitionStmt;
import soot.jimple.EqExpr;
import soot.jimple.GeExpr;
import soot.jimple.GtExpr;
import soot.jimple.LeExpr;
import soot.jimple.LtExpr;
import soot.jimple.NeExpr;

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
            m.locals.add(new NameAndType(l.getName(), ClassLoader.toJavaType(l.getType()), false));
        }
        
        Map<Unit,Code> unitToCode = new HashMap();
        
        for (Unit u : body.getUnits()) {
            Label label = unitToLabelMap.get(u);
            if (label != null) {
                m.codes.add(label);
            }

            Code code = decompile(u);
            if (code != null) {
                m.codes.add(code);
                unitToCode.put(u, code);
            }
        }
    }

    int labelIdCounter;

    private void newLabel(Stmt stmt) {
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
        
        throw new RuntimeException("Unknown "+unit);
    }

    Code assign(DefinitionStmt stmt) {
        soot.Value rightOp = stmt.getRightOp();
        
        return null;
    }
    
    Code immediate(Unit unit, Immediate v) {
        if(v instanceof soot.Local) {
            
        }
        throw new RuntimeException("Unknown "+v.getClass());
    }
    
    Code if_(IfStmt stmt) {
        ConditionExpr condition = (ConditionExpr) stmt.getCondition();
        Code op1 = immediate(stmt, (Immediate) condition.getOp1());
        Code op2 = immediate(stmt, (Immediate) condition.getOp2());
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
        
        return new If(op1, op2, c);
        /*
        Variable result = function.newVariable(Type.I1);
        function.add(new Icmp(result, c, op1, op2)).attach(stmt);
        Unit nextUnit = sootMethod.getActiveBody().getUnits().getSuccOf(stmt);
        function.add(new Br(new VariableRef(result), 
                function.newBasicBlockRef(new Label(stmt.getTarget())), 
                function.newBasicBlockRef(new Label(nextUnit)))).attach(stmt);
        */
    }
}
