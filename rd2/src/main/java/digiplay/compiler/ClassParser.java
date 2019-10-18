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

package digiplay.compiler;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.dex.code.*;
import com.android.dx.dex.code.CstInsn;
import com.android.dx.rop.code.*;
import com.android.dx.rop.cst.*;
import com.android.dx.ssa.Optimizer;
import digiplay.compiler.model.Clazz;
import digiplay.compiler.model.Method;
import digiplay.compiler.model.NameAndType;
import digiplay.compiler.model.op.ClassConstant;
import digiplay.compiler.model.op.Field;
import digiplay.compiler.model.op.Invoke;
import digiplay.compiler.model.op.Op;

import javax.management.RuntimeErrorException;
import java.lang.reflect.Modifier;
import java.util.*;


/**
 *
 * @author mustafa
 */
public class ClassParser {

    private static class Target {
        int     address;
        boolean requiresSplit;


        public Target(int address, boolean requiresSplit) {
            this.address = address;
            this.requiresSplit = requiresSplit;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof Target) {
                Target otherTarget = (Target) obj;
                return this.address == otherTarget.address;
            } else {
                return false;
            }
        }

        @Override
        public int hashCode() {
            return address;
        }
    }


    public Clazz parse(String name) throws Exception {
        ClassSource src = ClassFileFinder.findClass(name);
        if(src == null) throw new RuntimeException("Class "+name+" not found");
        
        DirectClassFile dxClass = new DirectClassFile(src.read(),name, false);
        dxClass.setAttributeFactory(StdAttributeFactory.THE_ONE);
        dxClass.getMagic();
        
        Clazz cls = new Clazz();
        cls.name = name;
        if(dxClass.getSuperclass() != null)
            cls.superName = dxClass.getSuperclass().getClassType().getClassName();
        
        for(int i=0; i<dxClass.getMethods().size(); i++) {
            com.android.dx.cf.iface.Method dm = dxClass.getMethods().get(i);
            Method m = parseMethod(dm, dxClass);
            m.declaringClass = cls.name;
            cls.methods.add(m);
        }
        return cls;
    }

    int maxRegisterNumber;

    Method parseMethod(com.android.dx.cf.iface.Method dm, DirectClassFile cf) {
        Method m = new Method();
        final boolean localInfo = true;
        final int positionInfo = PositionList.LINES;


        CstMethodRef meth = new CstMethodRef(dm.getDefiningClass(), dm.getNat());

        // Extract flags for this method.
        int accessFlags = dm.getAccessFlags();
        int modifier = 0;
        if(AccessFlags.isNative(accessFlags)) modifier |= Modifier.NATIVE;
        if(AccessFlags.isStatic(accessFlags)) modifier |= Modifier.STATIC;
        if(AccessFlags.isAbstract(accessFlags)) modifier |= Modifier.ABSTRACT;
        m.modifiers = modifier;
        m.signature = dm.getNat().getDescriptor().toHuman();
        m.name = dm.getName().getString();
        List<String> signature = DecompilerUtils.parseSignature(m.signature);
        m.type = signature.get(signature.size() - 1);
        for(int i=0; i<signature.size() - 1; i++) {
            m.args.add(new NameAndType("arg"+i, signature.get(i), true));
        }

        //if(!m.name.equals("main")) return m;
        if(m.isAbstract() || m.isNative()) return m;
        
        ConcreteMethod concrete = new ConcreteMethod(dm, cf,
                (positionInfo != PositionList.NONE), localInfo);

        TranslationAdvice advice = DexTranslationAdvice.THE_ONE;

        RopMethod rmeth = Ropper.convert(concrete, advice);
        int paramSize = meth.getParameterWordCount(m.isStatic());

        // Optimize
        rmeth = Optimizer.optimize(rmeth, paramSize, m.isStatic(), localInfo, advice);

        LocalVariableInfo locals = null;

        if (localInfo) {
            locals = LocalVariableExtractor.extract(rmeth);
        }
        
        DalvCode code = RopTranslator.translate(rmeth, positionInfo, locals, paramSize);
        DalvCode.AssignIndicesCallback callback = new DalvCode.AssignIndicesCallback() {
            public int getIndex(Constant cst) {
                // Everything is at index 0!
                return 0;
            }
        };
        code.assignIndices(callback);
        CatchTable catches = code.getCatches();

        DalvInsnList instructions = code.getInsns();
        maxRegisterNumber = -1;
        Set<Integer> seenTraps = new HashSet<>();

        System.out.println(m.name+" / "+m.signature+" / "+catches.size());
        Map<Integer, Op> opAdresses = new HashMap();
        int trapDepth = 0;
        for(int i=0; i<instructions.size(); i++) {
            DalvInsn ins = instructions.get(i);
            for(int k=0; k<catches.size(); k++) {
                CatchTable.Entry e = catches.get(k);
                int addr = e.getStart();
                if(addr == ins.getAddress() && !seenTraps.contains(addr)) {
                    seenTraps.add(addr);
                    System.out.println("----- try-begin ----");
                    trapDepth++;
                }
            }
            parseInstruction(ins, m, opAdresses, trapDepth);
            for(int k=0; k<catches.size(); k++) {
                CatchTable.Entry e = catches.get(k);
                int addr = e.getEnd();
                if(addr == ins.getAddress() && !seenTraps.contains(addr)) {
                    seenTraps.add(addr);
                    trapDepth--;
                    System.out.println("----- try-end ----");
                    for(int l=0; l<e.getHandlers().size(); l++) {
                        CatchHandlerList.Entry he = e.getHandlers().get(l);
                        String type = he.getExceptionType().getClassType().getClassName();
                        System.out.println("if("+type+") goto "+he.getHandler());
                    }
                }
                /*
                for(int l=0; l<e.getHandlers().size(); l++) {
                    if(e.getHandlers().get(l).getHandler() == ins.getAddress()) {
                        System.out.println("---- handler ----> "+e.getHandlers().get(l).getExceptionType());
                        break;
                    }
                }
                /*if(catches.get(k).getStart() == ins.getAddress()) {
                    System.out.println("-------------------->catch start: "+k);
                }*/
            }
        }

        m.registerCount = maxRegisterNumber + 1;
        return m;
    }

    void parseInstruction(DalvInsn ins, Method method, Map<Integer, Op> opAdresses, int trapDepth) {
        Op op = null;
        if (ins instanceof CodeAddress) {
            return;
        } else if (ins instanceof LocalSnapshot) {
            // Ignore.
            return;
        } else if (ins instanceof OddSpacer) {
            // Ignore NOPs.
            return;
        } else if (ins instanceof SwitchData) {
            // Ignore here because we already processes these and they were
            // given to this method as an argument.
            return;
        } else if (ins instanceof LocalStart) {
            // As we extract the locals information up-front we don't need to
            // handle local-start.
            return;
        } else if (ins instanceof ArrayData) {
            // Ignore here because we already processed these and they were
            // given to this method as an argument.
            return;
        } else if (ins instanceof SimpleInsn) {
            SimpleInsn simpleInsn = (SimpleInsn)ins;
            op = new Op();
            op.name = ins.getOpcode().getName();
            addRegisters(op, ins.getRegisters());
        } else if (ins instanceof CstInsn) {
            CstInsn cstInsn = (CstInsn) ins;
            if (isInvokeInstruction(cstInsn)) {
                Invoke inv = new Invoke();
                inv.name = ins.getOpcode().getName();

                CstMethodRef methodRef = (CstMethodRef) cstInsn.getConstant();
                inv.className = methodRef.getDefiningClass().toHuman();
                inv.methodName = methodRef.getNat().getName().toHuman();
                inv.signature = methodRef.getNat().getDescriptor().toHuman();

                RegisterSpecList registerList = cstInsn.getRegisters();
                for(int k=0; k<registerList.size(); k++) {
                    RegisterSpec reg = registerList.get(k);
                    inv.args.add(registerNumber(reg.regString()));
                }
                op = inv;
            } else {
                Constant con = cstInsn.getConstant();
                if(con instanceof CstMemberRef) {
                    CstMemberRef memberRef = (CstMemberRef)con;
                    Field f = new Field();
                    f.name = ins.getOpcode().getName();
                    f.className = memberRef.getDefiningClass().getClassType().toHuman();
                    f.name = memberRef.getNat().getName().toHuman();
                    op = f;
                }
                else if(con.getClass() == CstInteger.class) {
                    op = new Op(ins.getOpcode().getName(), ((CstInteger) con).getValue());
                } else if(con.getClass() == CstType.class) {
                    op = new Op(ins.getOpcode().getName(), new ClassConstant(((CstType)con).getClassType().getClassName()));
                } else if(con.getClass() == CstString.class) {
                    op = new Op(ins.getOpcode().getName(), ((CstString) con).getString().toHuman());
                } else if(con.getClass() == CstKnownNull.class) {
                    op = new Op(ins.getOpcode().getName(), null);
                } else if(con.getClass() == CstLong.class) {
                    op = new Op(ins.getOpcode().getName(), ((CstLong)con).getValue());
                } else if(con.getClass() == CstFloat.class) {
                    op = new Op(ins.getOpcode().getName(), ((CstFloat)con).getValue());
                } else if(con.getClass() == CstDouble.class) {
                    op = new Op(ins.getOpcode().getName(), ((CstDouble)con).getValue());
                }
                else throw new RuntimeException("Unknown constant type: "+con.getClass());

                addRegisters(op, cstInsn.getRegisters());
            }
        } else if (ins instanceof TargetInsn) {
            TargetInsn targetInsn = (TargetInsn) ins;
            op = new Op();
            op.name = ins.getOpcode().getName();
            op.target = targetInsn.getTargetAddress();
            addRegisters(op, ins.getRegisters());
        } else if (ins instanceof HighRegisterPrefix) {
                HighRegisterPrefix highRegisterPrefix = (HighRegisterPrefix)ins;
                SimpleInsn[] moveInstructions = highRegisterPrefix.getMoveInstructions();
                for (SimpleInsn moveInstruction : moveInstructions) {
                    parseInstruction(moveInstruction, method, opAdresses, trapDepth);
                }
                return;
        } else {
            System.err.print(">>> Unknown instruction: ");
            System.err.print("(" + ins.getClass().getName() + ") ");
            System.err.print(ins.listingString("", 0, true));
            throw new RuntimeException("Unknown instruction");
        }
        if(op == null) throw new RuntimeException("Unknown instruction "+ins+" / "+ins.getClass());
        if(trapDepth > 0 && op.name.startsWith("return")) {
            Op r = new Op("trap-restore", null);
            method.instructions.add(r);
            opAdresses.put(ins.getAddress(), r);
            System.out.println(ins.getAddress()+":"+ r);
        }
        method.instructions.add(op);
        if(!opAdresses.containsKey(ins.getAddress()))
            opAdresses.put(ins.getAddress(), op);
        System.out.println(ins.getAddress()+":"+ op);
    }
    private static boolean isInvokeInstruction(CstInsn cstInsn) {
        final Dop[] invokeInstructions = { Dops.INVOKE_VIRTUAL, Dops.INVOKE_VIRTUAL_RANGE,
                Dops.INVOKE_STATIC, Dops.INVOKE_STATIC_RANGE, Dops.INVOKE_DIRECT,
                Dops.INVOKE_DIRECT_RANGE, Dops.INVOKE_INTERFACE, Dops.INVOKE_INTERFACE_RANGE,
                Dops.INVOKE_SUPER, Dops.INVOKE_SUPER_RANGE };
        for (Dop dop : invokeInstructions) {
            if (dop.equals(cstInsn.getOpcode())) {
                return true;
            }
        }
        return false;
    }

    private int registerNumber(String vFormat) throws RuntimeException {
        if (!vFormat.startsWith("v")) {
            throw new RuntimeErrorException(new Error(
                    "Register name doesn't start with 'v' prefix: " + vFormat));
        }
        try {
            int registerNumber = Integer.parseInt(vFormat.substring(1));
            maxRegisterNumber = Math.max(registerNumber, maxRegisterNumber);
            return registerNumber;
        } catch (NumberFormatException ex) {
            throw new RuntimeErrorException(new Error(
                    "Couldn't extract register number from register name: " + vFormat, ex));
        }
    }

    private void addRegisters(Op op, RegisterSpecList registers) {
        if(registers.size() > 3) throw new RuntimeException("Too much registers");
        for(int i=0; i<registers.size(); i++) {
            int number = registerNumber(registers.get(i).regString());
            switch (i) {
                case 0: op.vx = number;break;
                case 1: op.vy = number;break;
                case 2: op.vz = number;break;
            }
        }
    }

    private static Map<Integer, Target> extractTargets(DalvInsnList instructions, CatchTable catches) {
        Map<Integer, Target> targets = new HashMap<Integer, Target>();

        // First, add non-catch targets.
        for (int i = 0; i < instructions.size(); ++i) {
            // If the target is generic, we have to assume it might jump into a
            // catch block, so we require splitting.
            if (instructions.get(i) instanceof TargetInsn) {
                TargetInsn targetInsn = (TargetInsn) instructions.get(i);
                targets.put(targetInsn.getTargetAddress(), new Target(
                        targetInsn.getTargetAddress(), true));
            } else if (instructions.get(i) instanceof SwitchData) {
                // If a switch-statement is enclosed by a try-block, we
                // will also require splitting.
                SwitchData switchData = (SwitchData) instructions.get(i);
                CodeAddress[] caseTargets = switchData.getTargets();
                for (CodeAddress caseTarget : caseTargets) {
                    targets.put(caseTarget.getAddress(), new Target(caseTarget.getAddress(), true));
                }
            }
        }

        // Then, add all catch-handler targets. We need this info, so using
        // Map.put will potentially override an existing target, so the
        // information about a potential catch-handler target is not lost.
        for (int i = 0; i < catches.size(); ++i) {
            CatchHandlerList handlers = catches.get(i).getHandlers();
            for (int j = 0; j < handlers.size(); ++j) {
                int handlerAddress = handlers.get(j).getHandler();
                targets.put(handlerAddress, new Target(handlerAddress, true));
            }
        }

        return targets;
    }
    
}
