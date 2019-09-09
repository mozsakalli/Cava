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

package com.cava.compiler;

import org.apache.bcel.generic.AALOAD;
import org.apache.bcel.generic.AASTORE;
import org.apache.bcel.generic.ACONST_NULL;
import org.apache.bcel.generic.ALOAD;
import org.apache.bcel.generic.ANEWARRAY;
import org.apache.bcel.generic.ARETURN;
import org.apache.bcel.generic.ARRAYLENGTH;
import org.apache.bcel.generic.ASTORE;
import org.apache.bcel.generic.ATHROW;
import org.apache.bcel.generic.AllocationInstruction;
import org.apache.bcel.generic.ArithmeticInstruction;
import org.apache.bcel.generic.ArrayInstruction;
import org.apache.bcel.generic.BALOAD;
import org.apache.bcel.generic.BASTORE;
import org.apache.bcel.generic.BIPUSH;
import org.apache.bcel.generic.BREAKPOINT;
import org.apache.bcel.generic.BranchInstruction;
import org.apache.bcel.generic.CALOAD;
import org.apache.bcel.generic.CASTORE;
import org.apache.bcel.generic.CHECKCAST;
import org.apache.bcel.generic.CPInstruction;
import org.apache.bcel.generic.ConstantPushInstruction;
import org.apache.bcel.generic.ConversionInstruction;
import org.apache.bcel.generic.D2F;
import org.apache.bcel.generic.D2I;
import org.apache.bcel.generic.D2L;
import org.apache.bcel.generic.DADD;
import org.apache.bcel.generic.DALOAD;
import org.apache.bcel.generic.DASTORE;
import org.apache.bcel.generic.DCMPG;
import org.apache.bcel.generic.DCMPL;
import org.apache.bcel.generic.DCONST;
import org.apache.bcel.generic.DDIV;
import org.apache.bcel.generic.DLOAD;
import org.apache.bcel.generic.DMUL;
import org.apache.bcel.generic.DNEG;
import org.apache.bcel.generic.DREM;
import org.apache.bcel.generic.DRETURN;
import org.apache.bcel.generic.DSTORE;
import org.apache.bcel.generic.DSUB;
import org.apache.bcel.generic.DUP;
import org.apache.bcel.generic.DUP2;
import org.apache.bcel.generic.DUP2_X1;
import org.apache.bcel.generic.DUP2_X2;
import org.apache.bcel.generic.DUP_X1;
import org.apache.bcel.generic.DUP_X2;
import org.apache.bcel.generic.ExceptionThrower;
import org.apache.bcel.generic.F2D;
import org.apache.bcel.generic.F2I;
import org.apache.bcel.generic.F2L;
import org.apache.bcel.generic.FADD;
import org.apache.bcel.generic.FALOAD;
import org.apache.bcel.generic.FASTORE;
import org.apache.bcel.generic.FCMPG;
import org.apache.bcel.generic.FCMPL;
import org.apache.bcel.generic.FCONST;
import org.apache.bcel.generic.FDIV;
import org.apache.bcel.generic.FLOAD;
import org.apache.bcel.generic.FMUL;
import org.apache.bcel.generic.FNEG;
import org.apache.bcel.generic.FREM;
import org.apache.bcel.generic.FRETURN;
import org.apache.bcel.generic.FSTORE;
import org.apache.bcel.generic.FSUB;
import org.apache.bcel.generic.FieldInstruction;
import org.apache.bcel.generic.FieldOrMethod;
import org.apache.bcel.generic.GETFIELD;
import org.apache.bcel.generic.GETSTATIC;
import org.apache.bcel.generic.GOTO;
import org.apache.bcel.generic.GOTO_W;
import org.apache.bcel.generic.GotoInstruction;
import org.apache.bcel.generic.I2B;
import org.apache.bcel.generic.I2C;
import org.apache.bcel.generic.I2D;
import org.apache.bcel.generic.I2F;
import org.apache.bcel.generic.I2L;
import org.apache.bcel.generic.I2S;
import org.apache.bcel.generic.IADD;
import org.apache.bcel.generic.IALOAD;
import org.apache.bcel.generic.IAND;
import org.apache.bcel.generic.IASTORE;
import org.apache.bcel.generic.ICONST;
import org.apache.bcel.generic.IDIV;
import org.apache.bcel.generic.IFEQ;
import org.apache.bcel.generic.IFGE;
import org.apache.bcel.generic.IFGT;
import org.apache.bcel.generic.IFLE;
import org.apache.bcel.generic.IFLT;
import org.apache.bcel.generic.IFNE;
import org.apache.bcel.generic.IFNONNULL;
import org.apache.bcel.generic.IFNULL;
import org.apache.bcel.generic.IF_ACMPEQ;
import org.apache.bcel.generic.IF_ACMPNE;
import org.apache.bcel.generic.IF_ICMPEQ;
import org.apache.bcel.generic.IF_ICMPGE;
import org.apache.bcel.generic.IF_ICMPGT;
import org.apache.bcel.generic.IF_ICMPLE;
import org.apache.bcel.generic.IF_ICMPLT;
import org.apache.bcel.generic.IF_ICMPNE;
import org.apache.bcel.generic.IINC;
import org.apache.bcel.generic.ILOAD;
import org.apache.bcel.generic.IMPDEP1;
import org.apache.bcel.generic.IMPDEP2;
import org.apache.bcel.generic.IMUL;
import org.apache.bcel.generic.INEG;
import org.apache.bcel.generic.INSTANCEOF;
import org.apache.bcel.generic.INVOKEDYNAMIC;
import org.apache.bcel.generic.INVOKEINTERFACE;
import org.apache.bcel.generic.INVOKESPECIAL;
import org.apache.bcel.generic.INVOKESTATIC;
import org.apache.bcel.generic.INVOKEVIRTUAL;
import org.apache.bcel.generic.IOR;
import org.apache.bcel.generic.IREM;
import org.apache.bcel.generic.IRETURN;
import org.apache.bcel.generic.ISHL;
import org.apache.bcel.generic.ISHR;
import org.apache.bcel.generic.ISTORE;
import org.apache.bcel.generic.ISUB;
import org.apache.bcel.generic.IUSHR;
import org.apache.bcel.generic.IXOR;
import org.apache.bcel.generic.IfInstruction;
import org.apache.bcel.generic.InvokeInstruction;
import org.apache.bcel.generic.JSR;
import org.apache.bcel.generic.JSR_W;
import org.apache.bcel.generic.JsrInstruction;
import org.apache.bcel.generic.L2D;
import org.apache.bcel.generic.L2F;
import org.apache.bcel.generic.L2I;
import org.apache.bcel.generic.LADD;
import org.apache.bcel.generic.LALOAD;
import org.apache.bcel.generic.LAND;
import org.apache.bcel.generic.LASTORE;
import org.apache.bcel.generic.LCMP;
import org.apache.bcel.generic.LCONST;
import org.apache.bcel.generic.LDC;
import org.apache.bcel.generic.LDC2_W;
import org.apache.bcel.generic.LDIV;
import org.apache.bcel.generic.LLOAD;
import org.apache.bcel.generic.LMUL;
import org.apache.bcel.generic.LNEG;
import org.apache.bcel.generic.LOOKUPSWITCH;
import org.apache.bcel.generic.LOR;
import org.apache.bcel.generic.LREM;
import org.apache.bcel.generic.LRETURN;
import org.apache.bcel.generic.LSHL;
import org.apache.bcel.generic.LSHR;
import org.apache.bcel.generic.LSTORE;
import org.apache.bcel.generic.LSUB;
import org.apache.bcel.generic.LUSHR;
import org.apache.bcel.generic.LXOR;
import org.apache.bcel.generic.LoadClass;
import org.apache.bcel.generic.LoadInstruction;
import org.apache.bcel.generic.LocalVariableInstruction;
import org.apache.bcel.generic.MONITORENTER;
import org.apache.bcel.generic.MONITOREXIT;
import org.apache.bcel.generic.MULTIANEWARRAY;
import org.apache.bcel.generic.NEW;
import org.apache.bcel.generic.NEWARRAY;
import org.apache.bcel.generic.NOP;
import org.apache.bcel.generic.POP;
import org.apache.bcel.generic.POP2;
import org.apache.bcel.generic.PUTFIELD;
import org.apache.bcel.generic.PUTSTATIC;
import org.apache.bcel.generic.PopInstruction;
import org.apache.bcel.generic.PushInstruction;
import org.apache.bcel.generic.RET;
import org.apache.bcel.generic.RETURN;
import org.apache.bcel.generic.ReturnInstruction;
import org.apache.bcel.generic.SALOAD;
import org.apache.bcel.generic.SASTORE;
import org.apache.bcel.generic.SIPUSH;
import org.apache.bcel.generic.SWAP;
import org.apache.bcel.generic.Select;
import org.apache.bcel.generic.StackConsumer;
import org.apache.bcel.generic.StackInstruction;
import org.apache.bcel.generic.StackProducer;
import org.apache.bcel.generic.StoreInstruction;
import org.apache.bcel.generic.TABLESWITCH;
import org.apache.bcel.generic.TypedInstruction;
import org.apache.bcel.generic.UnconditionalBranch;
import org.apache.bcel.generic.VariableLengthInstruction;
import org.apache.bcel.generic.Visitor;

/**
 *
 * @author mustafa
 */
public class BCELVisitor implements Visitor {

    @Override
    public void visitStackInstruction(StackInstruction si) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLocalVariableInstruction(LocalVariableInstruction lvi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitBranchInstruction(BranchInstruction bi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLoadClass(LoadClass lc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFieldInstruction(FieldInstruction fi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIfInstruction(IfInstruction ii) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitConversionInstruction(ConversionInstruction ci) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPopInstruction(PopInstruction pi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitStoreInstruction(StoreInstruction si) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitTypedInstruction(TypedInstruction ti) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitSelect(Select select) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitJsrInstruction(JsrInstruction ji) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitGotoInstruction(GotoInstruction gi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitUnconditionalBranch(UnconditionalBranch ub) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPushInstruction(PushInstruction pi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitArithmeticInstruction(ArithmeticInstruction ai) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitCPInstruction(CPInstruction cpi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitInvokeInstruction(InvokeInstruction ii) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitArrayInstruction(ArrayInstruction ai) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitAllocationInstruction(AllocationInstruction ai) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitReturnInstruction(ReturnInstruction ri) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFieldOrMethod(FieldOrMethod fom) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitConstantPushInstruction(ConstantPushInstruction cpi) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitExceptionThrower(ExceptionThrower et) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLoadInstruction(LoadInstruction li) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitVariableLengthInstruction(VariableLengthInstruction vli) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitStackProducer(StackProducer sp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitStackConsumer(StackConsumer sc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitACONST_NULL(ACONST_NULL a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitGETSTATIC(GETSTATIC gtstc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPLT(IF_ICMPLT i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitMONITOREXIT(MONITOREXIT mntrxt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFLT(IFLT iflt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLSTORE(LSTORE lstore) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPOP2(POP2 pop2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitBASTORE(BASTORE bstr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitISTORE(ISTORE istore) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitCHECKCAST(CHECKCAST c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFCMPG(FCMPG fcmpg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2F(I2F i2f) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitATHROW(ATHROW athrow) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDCMPL(DCMPL dcmpl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitARRAYLENGTH(ARRAYLENGTH a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP(DUP dup) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINVOKESTATIC(INVOKESTATIC i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLCONST(LCONST lconst) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDREM(DREM drem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFGE(IFGE ifge) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitCALOAD(CALOAD caload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLASTORE(LASTORE lstr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2D(I2D i2d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDADD(DADD dadd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINVOKESPECIAL(INVOKESPECIAL i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIAND(IAND iand) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPUTFIELD(PUTFIELD ptfld) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitILOAD(ILOAD iload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDLOAD(DLOAD dload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDCONST(DCONST dconst) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitNEW(NEW n) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFNULL(IFNULL ifnull) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLSUB(LSUB lsub) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitL2I(L2I l2i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitISHR(ISHR ishr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitTABLESWITCH(TABLESWITCH t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIINC(IINC iinc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDRETURN(DRETURN drtrn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFSTORE(FSTORE fstore) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDASTORE(DASTORE dstr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIALOAD(IALOAD iaload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDDIV(DDIV ddiv) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPGE(IF_ICMPGE ifcmpg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLAND(LAND land) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIDIV(IDIV idiv) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLOR(LOR lor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitCASTORE(CASTORE cstr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFREM(FREM frem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLDC(LDC ldc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitBIPUSH(BIPUSH bipush) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDSTORE(DSTORE dstore) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitF2L(F2L f2l) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFMUL(FMUL fmul) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLLOAD(LLOAD lload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitJSR(JSR jsr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFSUB(FSUB fsub) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitSASTORE(SASTORE str) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitALOAD(ALOAD aload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP2_X2(DUP2_X2 dupx) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitRETURN(RETURN r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDALOAD(DALOAD daload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitSIPUSH(SIPUSH sipush) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDSUB(DSUB dsub) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitL2F(L2F l2f) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPGT(IF_ICMPGT i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitF2D(F2D f2d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2L(I2L i2l) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ACMPNE(IF_ACMPNE ifcmpn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPOP(POP pop) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2S(I2S i2s) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFEQ(IFEQ ifeq) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitSWAP(SWAP swap) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIOR(IOR ior) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIREM(IREM irem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIASTORE(IASTORE istr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitNEWARRAY(NEWARRAY nwr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINVOKEINTERFACE(INVOKEINTERFACE i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINEG(INEG ineg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLCMP(LCMP lcmp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitJSR_W(JSR_W jsr_w) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitMULTIANEWARRAY(MULTIANEWARRAY mltnwr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP_X2(DUP_X2 dup_x2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitSALOAD(SALOAD saload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFNONNULL(IFNONNULL ifnl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDMUL(DMUL dmul) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFNE(IFNE ifne) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPLE(IF_ICMPLE ifcmpl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLDC2_W(LDC2_W ldc2_w) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitGETFIELD(GETFIELD gtfld) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLADD(LADD ladd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitNOP(NOP nop) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFALOAD(FALOAD faload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINSTANCEOF(INSTANCEOF i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFLE(IFLE ifle) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLXOR(LXOR lxor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLRETURN(LRETURN lrtrn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFCONST(FCONST fconst) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIUSHR(IUSHR iushr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitBALOAD(BALOAD baload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP2(DUP2 dup2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ACMPEQ(IF_ACMPEQ ifcmpq) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIMPDEP1(IMPDEP1 impdep) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitMONITORENTER(MONITORENTER m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLSHL(LSHL lshl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDCMPG(DCMPG dcmpg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitD2L(D2L d2l) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIMPDEP2(IMPDEP2 impdep) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitL2D(L2D l2d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitRET(RET ret) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIFGT(IFGT ifgt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIXOR(IXOR ixor) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINVOKEVIRTUAL(INVOKEVIRTUAL i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitINVOKEDYNAMIC(INVOKEDYNAMIC i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFASTORE(FASTORE fstr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIRETURN(IRETURN irtrn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPNE(IF_ICMPNE ifcmpn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFLOAD(FLOAD fload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLDIV(LDIV ldiv) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitPUTSTATIC(PUTSTATIC ptstc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitAALOAD(AALOAD aaload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitD2I(D2I d2i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIF_ICMPEQ(IF_ICMPEQ ifcmpq) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitAASTORE(AASTORE astr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitARETURN(ARETURN artrn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP2_X1(DUP2_X1 dupx) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFNEG(FNEG fneg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitGOTO_W(GOTO_W goto_w) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitD2F(D2F d2f) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitGOTO(GOTO g) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitISUB(ISUB isub) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitF2I(F2I f2i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDNEG(DNEG dneg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitICONST(ICONST iconst) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFDIV(FDIV fdiv) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2B(I2B i2b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLNEG(LNEG lneg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLREM(LREM lrem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIMUL(IMUL imul) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitIADD(IADD iadd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLSHR(LSHR lshr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLOOKUPSWITCH(LOOKUPSWITCH l) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitDUP_X1(DUP_X1 dup_x1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFCMPL(FCMPL fcmpl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitI2C(I2C i2c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLMUL(LMUL lmul) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLUSHR(LUSHR lushr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitISHL(ISHL ishl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitLALOAD(LALOAD laload) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitASTORE(ASTORE astore) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitANEWARRAY(ANEWARRAY anwr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFRETURN(FRETURN frtrn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitFADD(FADD fadd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void visitBREAKPOINT(BREAKPOINT brkpnt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
