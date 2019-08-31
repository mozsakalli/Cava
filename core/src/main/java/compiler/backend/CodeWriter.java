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

package compiler.backend;

import compiler.CompilerContext;
import compiler.model.Method;
import compiler.model.ast.Alloc;
import compiler.model.ast.ArrayAccess;
import compiler.model.ast.ArrayLength;
import compiler.model.ast.Assign;
import compiler.model.ast.Binary;
import static compiler.model.ast.Binary.Op.Add;
import static compiler.model.ast.Binary.Op.And;
import static compiler.model.ast.Binary.Op.Div;
import static compiler.model.ast.Binary.Op.Eq;
import static compiler.model.ast.Binary.Op.FRem;
import static compiler.model.ast.Binary.Op.Ge;
import static compiler.model.ast.Binary.Op.Gt;
import static compiler.model.ast.Binary.Op.Le;
import static compiler.model.ast.Binary.Op.LogicalAnd;
import static compiler.model.ast.Binary.Op.LogicalOr;
import static compiler.model.ast.Binary.Op.Lt;
import static compiler.model.ast.Binary.Op.Mul;
import static compiler.model.ast.Binary.Op.Ne;
import static compiler.model.ast.Binary.Op.Or;
import static compiler.model.ast.Binary.Op.Rem;
import static compiler.model.ast.Binary.Op.Shl;
import static compiler.model.ast.Binary.Op.Shr;
import static compiler.model.ast.Binary.Op.StrictEq;
import static compiler.model.ast.Binary.Op.StrictNe;
import static compiler.model.ast.Binary.Op.Sub;
import static compiler.model.ast.Binary.Op.UShr;
import static compiler.model.ast.Binary.Op.Xor;
import compiler.model.ast.Block;
import compiler.model.ast.Break;
import compiler.model.ast.Call;
import compiler.model.ast.Cast;
import compiler.model.ast.CaughtException;
import compiler.model.ast.CheckCast;
import compiler.model.ast.ClassInit;
import compiler.model.ast.ClassRef;
import compiler.model.ast.Cmp;
import compiler.model.ast.Code;
import compiler.model.ast.Const;
import compiler.model.ast.Continue;
import compiler.model.ast.Dummy;
import compiler.model.ast.DynamicCall;
import compiler.model.ast.Field;
import compiler.model.ast.Goto;
import compiler.model.ast.GotoSwitch;
import compiler.model.ast.If;
import compiler.model.ast.Inc;
import compiler.model.ast.InitArray;
import compiler.model.ast.InstanceOf;
import compiler.model.ast.Label;
import compiler.model.ast.Local;
import compiler.model.ast.Monitor;
import compiler.model.ast.Neg;
import compiler.model.ast.NewArray;
import compiler.model.ast.Parentesis;
import compiler.model.ast.Return;
import compiler.model.ast.Switch;
import compiler.model.ast.Ternary;
import compiler.model.ast.Throw;
import compiler.model.ast.Try;
import compiler.model.ast.TryCatch;
import compiler.model.ast.While;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class CodeWriter {
    
    public SourceWriter out;
    public INameManager naming;
    public Method method;
    public Set<String> usedListerals = new HashSet();
    public Map<String,int[]> variableLocations = new HashMap();
    

    Map<String, List<Object>> customData;
    public int currentLine = Integer.MAX_VALUE;
    
    public CodeWriter(Method method, SourceWriter out, INameManager naming) {
        this.method = method;
        this.out = out;
        this.naming = naming;
        method.minLine = Integer.MAX_VALUE;
    }
    
    public void addCustomData(String key, Object data) {
        customData.computeIfAbsent(key, (k) -> new ArrayList()).add(data);
    }
    
    public void write() {
        write(method.body);
    }
    
    public void write(Code code) {
        if(code instanceof If) write((If)code);
        else if(code instanceof While) write((While)code);
        else if(code instanceof Call) write((Call)code);
        else if(code instanceof Local) write((Local)code);
        else if(code instanceof Field) write((Field)code);
        else if(code instanceof Const) write((Const)code);
        else if(code instanceof Assign) write((Assign)code);
        else if(code instanceof Return) write((Return)code);
        else if(code instanceof Ternary) write((Ternary)code);
        else if(code instanceof Binary) write((Binary)code);
        else if(code instanceof ArrayAccess) write((ArrayAccess)code);
        else if(code instanceof Alloc) write((Alloc)code);
        else if(code instanceof Throw) write((Throw)code);
        else if(code instanceof InitArray) write((InitArray)code);
        else if(code instanceof NewArray) write((NewArray)code);
        else if(code instanceof Inc) write((Inc)code);
        else if(code instanceof ArrayLength) write((ArrayLength)code);
        else if(code instanceof Parentesis) write((Parentesis)code);
        else if(code instanceof ClassRef) write((ClassRef)code);
        else if(code instanceof Cast) write((Cast)code);
        else if(code instanceof CheckCast) write((CheckCast)code);
        else if(code instanceof Neg) write((Neg)code);
        else if(code instanceof GotoSwitch) write((GotoSwitch)code);
        else if(code instanceof Switch) write((Switch)code);
        else if(code instanceof Break) write((Break)code);
        else if(code instanceof InstanceOf) write((InstanceOf)code);
        else if(code instanceof ClassInit) write((ClassInit)code);
        else if(code instanceof Continue) write((Continue)code);
        else if(code instanceof Goto) write((Goto)code);
        else if(code instanceof Label) write((Label)code);
        else if(code instanceof TryCatch) write((TryCatch)code);
        else if(code instanceof Try) write((Try)code);
        else if(code instanceof Block) write((Block)code);
        else if(code instanceof Monitor) write((Monitor)code);
        else if(code instanceof CaughtException) write((CaughtException)code);
        else if(code instanceof DynamicCall) write((DynamicCall)code);
        else if(code instanceof Cmp) write((Cmp)code);
        else out.print(code);
    }
    
    void writeSourceLine(Code code) {
        
    }
    public void writeChildren(List<Code> children) {
        children.forEach(c -> {
            if(c.lineNumber != -1) {
                writeLineNumber(c.lineNumber);
                if(c.lineNumber < method.minLine) method.minLine = c.lineNumber;
                if(c.lineNumber > method.maxLine) method.maxLine = c.lineNumber;
                currentLine = c.lineNumber;
            }
            write(c);
            if(c instanceof Label) out.print(" ");
            else if((c instanceof While && ((While)c).isPost) || (!(c instanceof Block) && !(c instanceof Switch)))
                out.println(";");
        });
    }
    
    public void writeLineNumber(int line) {
        out.println("//line #%d", line);
    }
    
    public void write(Block block) {
        out.println("{").indent();
        writeChildren(block.children);
        out.undent().println("}");
    }
    
    public void write(Call call) {
        out.print(call);
    }
    
    public void write(Local local) {
        out.print(naming.local(local.ref));
        if(currentLine != Integer.MAX_VALUE) {
            int[] loc = variableLocations.computeIfAbsent(local.ref.name, (k) -> new int[]{Integer.MAX_VALUE, Integer.MIN_VALUE});
            loc[0] = Math.min(loc[0], currentLine);
            loc[1] = Math.max(loc[1], currentLine);
        }
        
    }
    
    public void write(Field field) {
        out.print(field);
    }
    
    public void write(Const c) {
        if(c.value instanceof String) {
            String literal = CompilerContext.stringCollector.get(String.valueOf(c.value), naming);
            usedListerals.add(literal);
            out.print(literal);
        } else
            out.print(c.value);
    }
    
    public void write(Assign a) {
        write(a.left);
        out.print("=");
        //out.print("/* "+a.right+" */");
        write(a.right);
    }
    
    public void write(Return r) {
        out.print("return");
        if(r.value != null) {
            out.print(" ");
            write(r.value);
        }
    }
    
    public void write(If i) {
        out.print("if(");
        write(i.condition);
        out.print(")");
        write((Block)i);
        if(i.elseBlock != null && !i.elseBlock.children.isEmpty()) {
            out.print("else");
            write(i.elseBlock);
        }
    }
    
    public void write(While w) {
        if(w.isPost) 
            out.print("do"); 
        else {
            out.print("while(");
            write(w.condition);
            out.print(")");
        }
        write((Block)w);
        if(w.isPost) {
            out.print("while(");
            write(w.condition);
            out.print(")");
        }
    }
    
    public void write(Ternary t) {
        write(t.condition);
        out.print(" ? ");
        if(t.trueCode instanceof Assign) out.print("(");
        write(t.trueCode);
        if(t.trueCode instanceof Assign) out.print(")");
        out.print(" : ");
        if(t.falseCode instanceof Assign) out.print("(");
        write(t.falseCode);
        if(t.falseCode instanceof Assign) out.print(")");
    }
    
    public String binOp(Binary.Op op) {
        switch(op) {
            case Add: return "+";
            case Sub: return "-";
            case Mul: return "*";
            case Div: return "/";
            case Ne: return "!=";
            case Eq: return "==";
            case StrictEq: return "==";
            case StrictNe: return "!=";
            case Gt: return ">";
            case Ge: return ">=";
            case Lt: return "<";
            case Le: return "<=";
            case And: return "&";
            case Or: return "|";
            case Xor: return "^";
            case Shr: return ">>";
            case Shl: return "<<";
            case FRem:
            case Rem: return "%";
            case UShr: return ">>>";
            case LogicalAnd: return "&&";
            case LogicalOr: return "||";
        }
        return op.toString();
    }
    
    public void write(Binary b) {
        out.print(b);
    }
    
    public void write(ArrayAccess a) {
        out.print(a);
    }
    
    public void write(Alloc a) {
        out.print(a);
    }
    
    public void write(Throw t) {
        out.print(t);
    }

    public void write(InitArray a) {
        out.print(a);
    }
    
    public void write(NewArray a) {
        out.print(a);
    }
    
    public void write(ArrayLength a) {
        out.print(a);
    }
    
    public void write(Inc i) {
        int amount = (Integer)(((Const)i.amount).value);
        write(i.value);
        out.print("+=%d",amount);
    }
    
    public void write(Parentesis p) {
        out.print("(");
        write(p.code);
        out.print(")");
    }
    
    public void write(ClassRef c) {
        out.print(c);
    }
    
    public void write(Cast c) {
        out.print(c);
    }
    
    public void write(CheckCast c) {
        out.print(c);
    }
    
    public void write(Neg n) {
        out.print("-");
        if(!n.value.isSimple()) out.print("(");
        write(n.value);
        if(!n.value.isSimple()) out.print(")");
    }
    
    public void write(Switch s) {
        out.print("switch(");
        write(s.condition);
        out.println("){").indent();
        for(int i=0; i<s.values.size(); i++) {
            List<Integer> vals = s.values.get(i);
            if(vals == null)
                out.println("default:");
            else vals.forEach(v -> out.println("case %d:",v));
            out.indent();
            writeChildren(s.blocks.get(i).children);
            out.undent();
        }
        out.undent().println("}");
    }
    
    public void write(GotoSwitch gs) {
        out.print(gs);
    }
    
    public void write(Break b) {
        out.print("break");
        if(b.label != null) out.print(" %s",b.label.name);
    }
    
    public void write(InstanceOf i) {
        out.print(i);
    }
    
    public void write(ClassInit c) {
        out.print(c);
    }
    
    public void write(Continue c) {
        out.print("continue");
    }
    
    public void write(Goto g) {
        out.print("goto %s", g.label.name);
    }
    
    public void write(Label l) {
        out.print("%s:", l.name);
    }
    
    public void write(Dummy d) {
        out.print("(dummy: %s)", d.str);
    }
    
    public void write(Try t) {
        out.print(t);
    }
    
    public void write(TryCatch t) {
        out.print(t);
    }
    
    public void write(Monitor m) {
        out.print(m);
    }
    
    public void write(CaughtException c) {
        out.print("caught_exception");
    }
    
    public void write(DynamicCall d) {
        write(d.code);
    }
    
    public void write(Cmp c) {
        write(c);
    }
}
