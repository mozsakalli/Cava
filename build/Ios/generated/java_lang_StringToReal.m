#include "java_lang_Math.h"
#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_UnsupportedOperationException.h"
#include "java_lang_Float.h"
#include "java_lang_StringToReal.h"
#include "java_lang_Double.h"
extern jobject $literal14;
extern jobject $literal15;
extern jobject $literal12;
extern jobject $literal13;
extern jobject $literal11;
extern jobject $literal16;
extern jobject $literal17;


jobject mjava_lang_StringToReal__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringToReal_Class,0);
	JVMLINE(24)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_StringToReal_parseDblImpl__Ljava_lang_String_I_D(jobject ps, jint pe) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFARG(pe,jint,1);

	JVMMETHOD(java_lang_StringToReal_Class,1);
	JVMLINE(51)
	JvmThrow(mjava_lang_UnsupportedOperationException__init____V(JvmAllocObject(&java_lang_UnsupportedOperationException_Class)));
	thread->framePtr = entryFramePtr;
	return 0;
}

jfloat mjava_lang_StringToReal_parseFltImpl__Ljava_lang_String_I_F(jobject ps, jint pe) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFARG(pe,jint,1);

	JVMMETHOD(java_lang_StringToReal_Class,2);
	JVMLINE(62)
	{ jfloat $$ret = ((jfloat)(mjava_lang_StringToReal_parseDblImpl__Ljava_lang_String_I_D(LOCAL(ps,jobject),LOCAL(pe,jint)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(jobject ps, jbool pisDouble) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFARG(pisDouble,jbool,1);

	JVMMETHOD(java_lang_StringToReal_Class,3);
	JVMLINE(66)
	JvmThrow(mjava_lang_NumberFormatException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NumberFormatException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal11),LOCAL(pisDouble,jbool) ? $literal12 : $literal13),$literal14),LOCAL(ps,jobject)),$literal15))));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_StringToReal_initialParse__Ljava_lang_String_IZ_Ljava_lang_StringToReal$StringExponentPair_(jobject ps, jint plength, jbool pisDouble) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFARG(plength,jint,1);
	DEFARG(pisDouble,jbool,2);
	DEFLOCAL(lresult,jobject,3);
	DEFLOCAL(lc,jchar,4);
	DEFLOCAL(lend,jint,5);
	DEFLOCAL(lexponentOffset,jint,6);
	DEFLOCAL(lnegativeExponent,jbool,7);
	DEFLOCAL(lfirstExponentChar,jchar,8);
	DEFLOCAL(lexponentString,jobject,9);
	DEFLOCAL(li,jint,10);
	DEFLOCAL(lch,jchar,11);
	DEFLOCAL(lstart,jint,12);
	DEFLOCAL(ldecimal,jint,13);
	DEFLOCAL(lexpr_17A,jobject,14);
	DEFLOCAL(lexpr_20D,jobject,15);
	DEFLOCAL(lAPPROX_MIN_MAGNITUDE,jint,16);
	DEFLOCAL(lMAX_DIGITS,jint,17);
	DEFLOCAL(ld,jint,18);
	DEFLOCAL(lexpr_25E,jobject,19);
	DEFLOCAL(lex,jobject,20);

	JVMMETHOD(java_lang_StringToReal_Class,4);
	JVMLINE(77)
	LOCAL(lresult,jobject)=mjava_lang_StringToReal_StringExponentPair__init___Ljava_lang_StringToReal$1__V(JvmAllocObject(&java_lang_StringToReal_StringExponentPair_Class),jnull);
	JVMLINE(79)
	if(LOCAL(plength,jint) == 0){
		JVMLINE(79)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
	}
	JVMLINE(81)
	((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),0) == 45;
	JVMLINE(85)
	LOCAL(lc,jchar)=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(plength,jint) - 1);
	JVMLINE(89)
	if(((((LOCAL(lc,jchar) == 68) || (LOCAL(lc,jchar) == 100)) || (LOCAL(lc,jchar) == 70)) || (LOCAL(lc,jchar) == 102)) && ((--LOCAL(plength,jint)) == 0)){
		JVMLINE(89)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
	}
	JVMLINE(93)
	LOCAL(lend,jint)=mjava_lang_Math_max__II_I(mjava_lang_String_indexOf__I_I(LOCAL(ps,jobject),69),mjava_lang_String_indexOf__I_I(LOCAL(ps,jobject),101));
	JVMLINE(137)
	if(LOCAL(lend,jint) != -1){
		JVMLINE(97)
		if((LOCAL(lend,jint) + 1) == LOCAL(plength,jint)){
			JVMLINE(97)
			JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
		}
		JVMLINE(101)
		LOCAL(lexponentOffset,jint)=LOCAL(lend,jint) + 1;
		JVMLINE(102)
		LOCAL(lnegativeExponent,jbool)=jfalse;
		JVMLINE(103)
		LOCAL(lfirstExponentChar,jchar)=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(lexponentOffset,jint));
		JVMLINE(106)
		if((LOCAL(lfirstExponentChar,jchar) == 43) || (LOCAL(lfirstExponentChar,jchar) == 45)){
			JVMLINE(105)
			LOCAL(lnegativeExponent,jbool)=LOCAL(lfirstExponentChar,jchar) == 45;
			JVMLINE(106)
			LOCAL(lexponentOffset,jint)++;
		}
		JVMLINE(110)
		LOCAL(lexponentString,jobject)=mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),LOCAL(lexponentOffset,jint),LOCAL(plength,jint));
		JVMLINE(112)
		if(mjava_lang_String_length___I(LOCAL(lexponentString,jobject)) == 0){
			JVMLINE(112)
			JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
		}
		JVMLINE(114)
		LOCAL(li,jint)=0;
		while(LOCAL(li,jint) < mjava_lang_String_length___I(LOCAL(lexponentString,jobject))){
			JVMLINE(115)
			LOCAL(lch,jchar)=mjava_lang_String_charAt__I_C(LOCAL(lexponentString,jobject),LOCAL(li,jint));
			JVMLINE(117)
			if((LOCAL(lch,jchar) < 48) || (LOCAL(lch,jchar) > 57)){
				JVMLINE(117)
				JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
			}
			JVMLINE(114)
			LOCAL(li,jint)++;
		}
		JVMLINE(134)
		/* try */
		jint exception0 = thread->exceptionCount++;
		thread->exceptions[exception0].framePtr = thread->framePtr;
		if(setjmp(thread->exceptions[exception0].jmp) == 0) {
			{
				JVMLINE(123)
				((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e=((jlong)(mjava_lang_Integer_parseInt__Ljava_lang_String__I(LOCAL(lexponentString,jobject))));
				JVMLINE(125)
				if(LOCAL(lnegativeExponent,jbool)){
					JVMLINE(125)
					((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e=-((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e;
				}
			}
			thread->exceptionCount = exception0;
		} else {
			thread->exceptionCount = exception0;
			/* catch */
			if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
				LOCAL(lex,jobject)=thread->exception;
				JVMLINE(132)
				if(LOCAL(lnegativeExponent,jbool)){
					JVMLINE(130)
					((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_zero=jtrue;
				}
				else{
					JVMLINE(132)
					((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_infinity=jtrue;
				}
				JVMLINE(134)
				{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
			}
			else{
				JvmThrow(thread->exception);
			}
		}
	}
	else{
		JVMLINE(137)
		LOCAL(lend,jint)=LOCAL(plength,jint);
	}
	JVMLINE(140)
	if(LOCAL(plength,jint) == 0){
		JVMLINE(140)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
	}
	JVMLINE(143)
	LOCAL(lstart,jint)=0;
	JVMLINE(144)
	LOCAL(lc,jchar)=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(lstart,jint));
	JVMLINE(151)
	if(LOCAL(lc,jchar) == 45){
		JVMLINE(146)
		LOCAL(lstart,jint)++;
		JVMLINE(147)
		LOCAL(plength,jint)--;
		JVMLINE(148)
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative=jtrue;
	}
	else{
		JVMLINE(151)
		if(LOCAL(lc,jchar) == 43){
			JVMLINE(150)
			LOCAL(lstart,jint)++;
			JVMLINE(151)
			LOCAL(plength,jint)--;
		}
	}
	JVMLINE(154)
	if(LOCAL(plength,jint) == 0){
		JVMLINE(154)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
	}
	JVMLINE(157)
	LOCAL(ldecimal,jint)=mjava_lang_String_indexOf__I_I(LOCAL(ps,jobject),46);
	JVMLINE(162)
	if(LOCAL(ldecimal,jint) > -1){
		JVMLINE(159)
		LOCAL(lexpr_17A,jobject)=LOCAL(lresult,jobject);
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_17A,jobject)))->fjava_lang_StringToReal_StringExponentPair_e=((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_17A,jobject)))->fjava_lang_StringToReal_StringExponentPair_e - (((jlong)((LOCAL(lend,jint) - LOCAL(ldecimal,jint)) - 1)));
		JVMLINE(160)
		LOCAL(ps,jobject)=virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),LOCAL(lstart,jint),LOCAL(ldecimal,jint))),mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),LOCAL(ldecimal,jint) + 1,LOCAL(lend,jint))));
	}
	else{
		JVMLINE(162)
		LOCAL(ps,jobject)=mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),LOCAL(lstart,jint),LOCAL(lend,jint));
	}
	JVMLINE(166)
	if((LOCAL(plength,jint)=mjava_lang_String_length___I(LOCAL(ps,jobject))) == 0){
		JVMLINE(166)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),LOCAL(pisDouble,jbool)));
	}
	JVMLINE(169)
	LOCAL(lend,jint)=LOCAL(plength,jint);
	JVMLINE(171)
	while((LOCAL(lend,jint) > 1) && (mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(lend,jint) - 1) == 48)){
		JVMLINE(171)
		LOCAL(lend,jint)--;
	}
	JVMLINE(174)
	LOCAL(lstart,jint)=0;
	JVMLINE(176)
	while((LOCAL(lstart,jint) < (LOCAL(lend,jint) - 1)) && (mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(lstart,jint)) == 48)){
		JVMLINE(176)
		LOCAL(lstart,jint)++;
	}
	JVMLINE(181)
	if((LOCAL(lend,jint) != LOCAL(plength,jint)) || (LOCAL(lstart,jint) != 0)){
		JVMLINE(180)
		LOCAL(lexpr_20D,jobject)=LOCAL(lresult,jobject);
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_20D,jobject)))->fjava_lang_StringToReal_StringExponentPair_e=((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_20D,jobject)))->fjava_lang_StringToReal_StringExponentPair_e + (((jlong)(LOCAL(plength,jint) - LOCAL(lend,jint))));
		JVMLINE(181)
		LOCAL(ps,jobject)=mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),LOCAL(lstart,jint),LOCAL(lend,jint));
	}
	JVMLINE(187)
	LOCAL(lAPPROX_MIN_MAGNITUDE,jint)=-359;
	JVMLINE(188)
	LOCAL(lMAX_DIGITS,jint)=52;
	JVMLINE(189)
	LOCAL(plength,jint)=mjava_lang_String_length___I(LOCAL(ps,jobject));
	JVMLINE(193)
	if((LOCAL(plength,jint) > 52) && (((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e < -359)){
		JVMLINE(191)
		LOCAL(ld,jint)=mjava_lang_Math_min__II_I(-359 - (((jint)(((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e))),LOCAL(plength,jint) - 1);
		JVMLINE(192)
		LOCAL(ps,jobject)=mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(ps,jobject),0,LOCAL(plength,jint) - LOCAL(ld,jint));
		JVMLINE(193)
		LOCAL(lexpr_25E,jobject)=LOCAL(lresult,jobject);
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_25E,jobject)))->fjava_lang_StringToReal_StringExponentPair_e=((java_lang_StringToReal_StringExponentPair*)(LOCAL(lexpr_25E,jobject)))->fjava_lang_StringToReal_StringExponentPair_e + (((jlong)(LOCAL(ld,jint))));
	}
	JVMLINE(201)
	if(((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e < -1024){
		JVMLINE(200)
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_zero=jtrue;
		JVMLINE(201)
		{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(204)
	if(((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_e > 1024){
		JVMLINE(203)
		((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_infinity=jtrue;
		JVMLINE(204)
		{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(207)
	((java_lang_StringToReal_StringExponentPair*)(LOCAL(lresult,jobject)))->fjava_lang_StringToReal_StringExponentPair_s=LOCAL(ps,jobject);
	JVMLINE(208)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_StringToReal_parseName__Ljava_lang_String_Z_F(jobject pname, jbool pisDouble) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pname,jobject,0);
	DEFARG(pisDouble,jbool,1);
	DEFLOCAL(lnegative,jbool,2);
	DEFLOCAL(li,jint,3);
	DEFLOCAL(llength,jint,4);
	DEFLOCAL(lfirstChar,jchar,5);

	JVMMETHOD(java_lang_StringToReal_Class,5);
	JVMLINE(214)
	LOCAL(lnegative,jbool)=jfalse;
	JVMLINE(215)
	LOCAL(li,jint)=0;
	JVMLINE(216)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pname,jobject));
	JVMLINE(217)
	LOCAL(lfirstChar,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pname,jobject),LOCAL(li,jint));
	JVMLINE(224)
	if(LOCAL(lfirstChar,jchar) == 45){
		JVMLINE(219)
		LOCAL(lnegative,jbool)=jtrue;
		JVMLINE(220)
		LOCAL(li,jint)++;
		JVMLINE(221)
		LOCAL(llength,jint)--;
	}
	else{
		JVMLINE(224)
		if(LOCAL(lfirstChar,jchar) == 43){
			JVMLINE(223)
			LOCAL(li,jint)++;
			JVMLINE(224)
			LOCAL(llength,jint)--;
		}
	}
	JVMLINE(228)
	if((LOCAL(llength,jint) == 8) && mjava_lang_String_regionMatches__ZILjava_lang_String_II_Z(LOCAL(pname,jobject),jfalse,LOCAL(li,jint),$literal16,0,8)){
		JVMLINE(228)
		{ jfloat $$ret = LOCAL(lnegative,jbool) ? -Infinity : Infinity; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(231)
	if((LOCAL(llength,jint) == 3) && mjava_lang_String_regionMatches__ZILjava_lang_String_II_Z(LOCAL(pname,jobject),jfalse,LOCAL(li,jint),$literal17,0,3)){
		JVMLINE(231)
		{ jfloat $$ret = NaN; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(233)
	JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(pname,jobject),LOCAL(pisDouble,jbool)));
	thread->framePtr = entryFramePtr;
	return 0;
}

jdouble mjava_lang_StringToReal_parseDouble__Ljava_lang_String__D(jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFLOCAL(llength,jint,1);
	DEFLOCAL(llast,jchar,2);
	DEFLOCAL(linfo,jobject,3);
	DEFLOCAL(lresult,jdouble,4);

	JVMMETHOD(java_lang_StringToReal_Class,6);
	JVMLINE(247)
	LOCAL(ps,jobject)=mjava_lang_String_trim___Ljava_lang_String_(LOCAL(ps,jobject));
	JVMLINE(248)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(ps,jobject));
	JVMLINE(251)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(251)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),jtrue));
	}
	JVMLINE(255)
	LOCAL(llast,jchar)=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(llength,jint) - 1);
	JVMLINE(257)
	if((LOCAL(llast,jchar) == 121) || (LOCAL(llast,jchar) == 78)){
		JVMLINE(257)
		{ jdouble $$ret = ((jdouble)(mjava_lang_StringToReal_parseName__Ljava_lang_String_Z_F(LOCAL(ps,jobject),jtrue))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(266)
	LOCAL(linfo,jobject)=mjava_lang_StringToReal_initialParse__Ljava_lang_String_IZ_Ljava_lang_StringToReal$StringExponentPair_(LOCAL(ps,jobject),LOCAL(llength,jint),jtrue);
	JVMLINE(268)
	if(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_infinity || ((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_zero){
		JVMLINE(268)
		{ jdouble $$ret = ((jdouble)(mjava_lang_StringToReal_StringExponentPair_specialValue___F(LOCAL(linfo,jobject)))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(270)
	LOCAL(lresult,jdouble)=mjava_lang_StringToReal_parseDblImpl__Ljava_lang_String_I_D(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_s,((jint)(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_e)));
	JVMLINE(272)
	if(mjava_lang_Double_doubleToLongBits__D_J(LOCAL(lresult,jdouble)) == -1){
		JVMLINE(272)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),jtrue));
	}
	JVMLINE(274)
	{ jdouble $$ret = ((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative ? -LOCAL(lresult,jdouble) : LOCAL(lresult,jdouble); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_StringToReal_parseFloat__Ljava_lang_String__F(jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);
	DEFLOCAL(llength,jint,1);
	DEFLOCAL(llast,jchar,2);
	DEFLOCAL(linfo,jobject,3);
	DEFLOCAL(lresult,jfloat,4);

	JVMMETHOD(java_lang_StringToReal_Class,7);
	JVMLINE(288)
	LOCAL(ps,jobject)=mjava_lang_String_trim___Ljava_lang_String_(LOCAL(ps,jobject));
	JVMLINE(289)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(ps,jobject));
	JVMLINE(292)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(292)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),jfalse));
	}
	JVMLINE(296)
	LOCAL(llast,jchar)=mjava_lang_String_charAt__I_C(LOCAL(ps,jobject),LOCAL(llength,jint) - 1);
	JVMLINE(298)
	if((LOCAL(llast,jchar) == 121) || (LOCAL(llast,jchar) == 78)){
		JVMLINE(298)
		{ jfloat $$ret = mjava_lang_StringToReal_parseName__Ljava_lang_String_Z_F(LOCAL(ps,jobject),jfalse); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(307)
	LOCAL(linfo,jobject)=mjava_lang_StringToReal_initialParse__Ljava_lang_String_IZ_Ljava_lang_StringToReal$StringExponentPair_(LOCAL(ps,jobject),LOCAL(llength,jint),jfalse);
	JVMLINE(309)
	if(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_infinity || ((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_zero){
		JVMLINE(309)
		{ jfloat $$ret = mjava_lang_StringToReal_StringExponentPair_specialValue___F(LOCAL(linfo,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(311)
	LOCAL(lresult,jfloat)=mjava_lang_StringToReal_parseFltImpl__Ljava_lang_String_I_F(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_s,((jint)(((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_e)));
	JVMLINE(313)
	if(mjava_lang_Float_floatToIntBits__F_I(LOCAL(lresult,jfloat)) == -1){
		JVMLINE(313)
		JvmThrow(mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(LOCAL(ps,jobject),jfalse));
	}
	JVMLINE(315)
	{ jfloat $$ret = ((java_lang_StringToReal_StringExponentPair*)(LOCAL(linfo,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative ? -LOCAL(lresult,jfloat) : LOCAL(lresult,jfloat); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_StringToReal_Class;
JvmClass ArrOf_java_lang_StringToReal_Class;
JvmClass ArrOf_ArrOf_java_lang_StringToReal_Class;

jbool java_lang_StringToReal_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StringToReal_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OZO(jobject,jobject,jobject);
extern jobject invoke_OIZO(jobject,jobject,jobject);
extern jobject invoke_OID(jobject,jobject,jobject);
extern jobject invoke_OIF(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OD(jobject,jobject,jobject);
extern jobject invoke_OF(jobject,jobject,jobject);
extern jobject invoke_OZF(jobject,jobject,jobject);
void JvmSetup_java_lang_StringToReal() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_StringToReal_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StringToReal);
	cls->name = JvmMakeString(L"java.lang.StringToReal",22);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StringToReal_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StringToReal.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 8, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"<init>", 6), &java_lang_StringToReal_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringToReal__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 24, 24, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=24, .endLine=24, .type=&java_lang_StringToReal_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"parseDblImpl", 12), &D_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_StringToReal_parseDblImpl__Ljava_lang_String_I_D, &invoke_OID 
#ifdef JVM_DEBUG
 , 51, 51, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=0, .endLine=51, .type=&java_lang_String_Class},{.name=JvmMakeString(L"e",1), .startLine=0, .endLine=51, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"parseFltImpl", 12), &F_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_StringToReal_parseFltImpl__Ljava_lang_String_I_F, &invoke_OIF 
#ifdef JVM_DEBUG
 , 62, 62, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=62, .endLine=62, .type=&java_lang_String_Class},{.name=JvmMakeString(L"e",1), .startLine=62, .endLine=62, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"invalidReal", 11), &java_lang_NumberFormatException_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&Z_Class}), &mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_, &invoke_OZO 
#ifdef JVM_DEBUG
 , 66, 66, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=66, .endLine=66, .type=&java_lang_String_Class},{.name=JvmMakeString(L"isDouble",8), .startLine=66, .endLine=66, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"initialParse", 12), &java_lang_StringToReal_StringExponentPair_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&Z_Class}), &mjava_lang_StringToReal_initialParse__Ljava_lang_String_IZ_Ljava_lang_StringToReal$StringExponentPair_, &invoke_OIZO 
#ifdef JVM_DEBUG
 , 77, 208, 3, 18, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=79, .endLine=208, .type=&java_lang_String_Class},{.name=JvmMakeString(L"length",6), .startLine=79, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"isDouble",8), .startLine=79, .endLine=208, .type=&Z_Class},{.name=JvmMakeString(L"result",6), .startLine=77, .endLine=208, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"c",1), .startLine=85, .endLine=208, .type=&C_Class},{.name=JvmMakeString(L"end",3), .startLine=93, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"exponentOffset",14), .startLine=101, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"negativeExponent",16), .startLine=102, .endLine=208, .type=&Z_Class},{.name=JvmMakeString(L"firstExponentChar",17), .startLine=103, .endLine=208, .type=&C_Class},{.name=JvmMakeString(L"exponentString",14), .startLine=110, .endLine=208, .type=&java_lang_String_Class},{.name=JvmMakeString(L"i",1), .startLine=114, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"ch",2), .startLine=115, .endLine=208, .type=&C_Class},{.name=JvmMakeString(L"start",5), .startLine=143, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"decimal",7), .startLine=157, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"expr_17A",8), .startLine=159, .endLine=208, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"expr_20D",8), .startLine=180, .endLine=208, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"APPROX_MIN_MAGNITUDE",20), .startLine=187, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"MAX_DIGITS",10), .startLine=188, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"d",1), .startLine=191, .endLine=208, .type=&I_Class},{.name=JvmMakeString(L"expr_25E",8), .startLine=193, .endLine=208, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"ex",2), .startLine=125, .endLine=208, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"parseName", 9), &F_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&Z_Class}), &mjava_lang_StringToReal_parseName__Ljava_lang_String_Z_F, &invoke_OZF 
#ifdef JVM_DEBUG
 , 214, 233, 2, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=216, .endLine=233, .type=&java_lang_String_Class},{.name=JvmMakeString(L"isDouble",8), .startLine=233, .endLine=233, .type=&Z_Class},{.name=JvmMakeString(L"negative",8), .startLine=214, .endLine=233, .type=&Z_Class},{.name=JvmMakeString(L"i",1), .startLine=215, .endLine=233, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=216, .endLine=233, .type=&I_Class},{.name=JvmMakeString(L"firstChar",9), .startLine=217, .endLine=233, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"parseDouble", 11), &D_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_StringToReal_parseDouble__Ljava_lang_String__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 247, 274, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=247, .endLine=274, .type=&java_lang_String_Class},{.name=JvmMakeString(L"length",6), .startLine=248, .endLine=274, .type=&I_Class},{.name=JvmMakeString(L"last",4), .startLine=255, .endLine=274, .type=&C_Class},{.name=JvmMakeString(L"info",4), .startLine=266, .endLine=274, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"result",6), .startLine=270, .endLine=274, .type=&D_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_Class, JvmMakeString(L"parseFloat", 10), &F_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_StringToReal_parseFloat__Ljava_lang_String__F, &invoke_OF 
#ifdef JVM_DEBUG
 , 288, 315, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=288, .endLine=315, .type=&java_lang_String_Class},{.name=JvmMakeString(L"length",6), .startLine=289, .endLine=315, .type=&I_Class},{.name=JvmMakeString(L"last",4), .startLine=296, .endLine=315, .type=&C_Class},{.name=JvmMakeString(L"info",4), .startLine=307, .endLine=315, .type=&java_lang_StringToReal_StringExponentPair_Class},{.name=JvmMakeString(L"result",6), .startLine=311, .endLine=315, .type=&F_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_StringToReal_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StringToReal",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StringToReal_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StringToReal_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StringToReal",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StringToReal_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
