/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compiler.model.ast;

/**
 *
 * @author mustafa
 */
public class Cmp extends Code {
    
    public Code left;
    public Code right;
    public Op op;
    
    public enum Op
    {
        Cmp,
        Cmpl,
        Cmpg
    }
    
    public Cmp(){}
    public Cmp(Code left, Code right, Op op) {
        this.left = left;
        this.right = right;
        this.op = op;
    }

    @Override
    public void visit(Visitor v) {
        left.visit(v);
        right.visit(v);
    }
    
    
}