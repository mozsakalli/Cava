#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_IllegalArgumentException.h"
#include "java_lang_Long.h"
#include "java_lang_Character.h"
#include "java_lang_System.h"
extern jobject $literal69;
extern jobject $literal15;
extern jobject $literal68;
extern jobject $literal72;
extern jobject $literal70;
extern jobject $literal71;


jlong fjava_lang_Long_serialVersionUID;
jlong fjava_lang_Long_MAX_VALUE;
jlong fjava_lang_Long_MIN_VALUE;
jobject fjava_lang_Long_TYPE;
jint fjava_lang_Long_SIZE;
jobject mjava_lang_Long__init___J_V(jobject pthis, jlong pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jlong,1);

	JVMMETHOD(java_lang_Long_Class,0);
	JVMLINE(63)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(64)
	((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value=LOCAL(pvalue,jlong);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long__init___Ljava_lang_String__V(jobject pthis, jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstring,jobject,1);

	JVMMETHOD(java_lang_Long_Class,1);
	JVMLINE(76)
	mjava_lang_Long__init___J_V(LOCAL(pthis,jobject),mjava_lang_Long_parseLong__Ljava_lang_String__J(LOCAL(pstring,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_Long_byteValue___B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,2);
	JVMLINE(81)
	{ jbyte $$ret = ((jbyte)(((jint)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_compareTo__Ljava_lang_Long__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Long_Class,3);
	JVMLINE(97)
	{ jint $$ret = mjava_lang_Long_compare__JJ_I(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value,((java_lang_Long*)(LOCAL(pobject,jobject)))->fjava_lang_Long_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_compare__JJ_I(jlong plhs, jlong prhs) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(plhs,jlong,0);
	DEFARG(prhs,jlong,1);

	JVMMETHOD(java_lang_Long_Class,4);
	JVMLINE(108)
	{ jint $$ret = LOCAL(plhs,jlong) < LOCAL(prhs,jlong) ? -1 : LOCAL(plhs,jlong) == LOCAL(prhs,jlong) ? 0 : 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);

	JVMMETHOD(java_lang_Long_Class,5);
	JVMLINE(112)
	JvmThrow(mjava_lang_NumberFormatException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NumberFormatException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal68),LOCAL(ps,jobject)),$literal15))));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFLOCAL(llength,jint,1);
	DEFLOCAL(li,jint,2);
	DEFLOCAL(lfirstDigit,jchar,3);
	DEFLOCAL(lnegative,jbool,4);
	DEFLOCAL(lbase,jint,5);
	DEFLOCAL(lresult,jlong,6);

	JVMMETHOD(java_lang_Long_Class,6);
	JVMLINE(128)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstring,jobject));
	LOCAL(li,jint)=0;
	JVMLINE(130)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(130)
		JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(132)
	LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint));
	JVMLINE(133)
	LOCAL(lnegative,jbool)=LOCAL(lfirstDigit,jchar) == 45;
	JVMLINE(138)
	if(LOCAL(lnegative,jbool)){
		JVMLINE(136)
		if(LOCAL(llength,jint) == 1){
			JVMLINE(136)
			JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(138)
		LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),++LOCAL(li,jint));
	}
	JVMLINE(141)
	LOCAL(lbase,jint)=10;
	JVMLINE(160)
	if(LOCAL(lfirstDigit,jchar) == 48){
		JVMLINE(144)
		if((++LOCAL(li,jint)) == LOCAL(llength,jint)){
			JVMLINE(144)
			{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(0); thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(153)
		if(((LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint))) == 120) || (LOCAL(lfirstDigit,jchar) == 88)){
			JVMLINE(148)
			if(LOCAL(li,jint) == LOCAL(llength,jint)){
				JVMLINE(148)
				JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
			}
			JVMLINE(150)
			LOCAL(li,jint)++;
			JVMLINE(151)
			LOCAL(lbase,jint)=16;
		}
		else{
			JVMLINE(153)
			LOCAL(lbase,jint)=8;
		}
	}
	else{
		JVMLINE(160)
		if(LOCAL(lfirstDigit,jchar) == 35){
			JVMLINE(157)
			if(LOCAL(li,jint) == LOCAL(llength,jint)){
				JVMLINE(157)
				JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
			}
			JVMLINE(159)
			LOCAL(li,jint)++;
			JVMLINE(160)
			LOCAL(lbase,jint)=16;
		}
	}
	JVMLINE(163)
	LOCAL(lresult,jlong)=mjava_lang_Long_parse__Ljava_lang_String_IIZ_J(LOCAL(pstring,jobject),LOCAL(li,jint),LOCAL(lbase,jint),LOCAL(lnegative,jbool));
	JVMLINE(164)
	{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(LOCAL(lresult,jlong)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Long_doubleValue___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,7);
	JVMLINE(169)
	{ jdouble $$ret = ((jdouble)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Long_equals__Ljava_lang_Object__Z(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);

	JVMMETHOD(java_lang_Long_Class,8);
	JVMLINE(183)
	{ jbool $$ret = (JvmInstanceOf(LOCAL(po,jobject),&java_lang_Long_Class)) && (((java_lang_Long*)(JvmCheckCast(LOCAL(po,jobject),&java_lang_Long_Class)))->fjava_lang_Long_value == ((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Long_floatValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,9);
	JVMLINE(188)
	{ jfloat $$ret = ((jfloat)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_getLong__Ljava_lang_String__Ljava_lang_Long_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFLOCAL(lprop,jobject,1);
	DEFLOCAL(lex,jobject,2);

	JVMMETHOD(java_lang_Long_Class,10);
	JVMLINE(202)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(202)
		{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(204)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(206)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(206)
		{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(211)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(209)
			{ jobject $$ret = mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(211)
			{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Long_getLong__Ljava_lang_String_J_Ljava_lang_Long_(jobject pstring, jlong pdefaultValue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pdefaultValue,jlong,1);
	DEFLOCAL(lprop,jobject,2);
	DEFLOCAL(lex,jobject,3);

	JVMMETHOD(java_lang_Long_Class,11);
	JVMLINE(229)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(229)
		{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(LOCAL(pdefaultValue,jlong)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(231)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(233)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(233)
		{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(LOCAL(pdefaultValue,jlong)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(238)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(236)
			{ jobject $$ret = mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(238)
			{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(LOCAL(pdefaultValue,jlong)); thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Long_getLong__Ljava_lang_String_Ljava_lang_Long__Ljava_lang_Long_(jobject pstring, jobject pdefaultValue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pdefaultValue,jobject,1);
	DEFLOCAL(lprop,jobject,2);
	DEFLOCAL(lex,jobject,3);

	JVMMETHOD(java_lang_Long_Class,12);
	JVMLINE(256)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(256)
		{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(258)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(260)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(260)
		{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(265)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(263)
			{ jobject $$ret = mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(265)
			{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jint mjava_lang_Long_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,13);
	JVMLINE(271)
	{ jint $$ret = ((jint)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value ^ ((((u_jlong)((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value) >> (32))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_intValue___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,14);
	JVMLINE(276)
	{ jint $$ret = ((jint)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_longValue___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,15);
	JVMLINE(286)
	{ jlong $$ret = ((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_parseLong__Ljava_lang_String__J(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Long_Class,16);
	JVMLINE(299)
	{ jlong $$ret = mjava_lang_Long_parseLong__Ljava_lang_String_I_J(LOCAL(pstring,jobject),10); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_parseLong__Ljava_lang_String_I_J(jobject pstring, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pradix,jint,1);
	DEFLOCAL(llength,jint,2);
	DEFLOCAL(li,jint,3);
	DEFLOCAL(lnegative,jbool,4);

	JVMMETHOD(java_lang_Long_Class,17);
	JVMLINE(316)
	if((LOCAL(pradix,jint) < 2) || (LOCAL(pradix,jint) > 36)){
		JVMLINE(316)
		JvmThrow(mjava_lang_NumberFormatException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NumberFormatException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal69),LOCAL(pradix,jint)))));
	}
	JVMLINE(319)
	if(LOCAL(pstring,jobject) == jnull){
		JVMLINE(319)
		JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(321)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstring,jobject));
	LOCAL(li,jint)=0;
	JVMLINE(323)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(323)
		JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(325)
	LOCAL(lnegative,jbool)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint)) == 45;
	JVMLINE(327)
	if(LOCAL(lnegative,jbool) && ((++LOCAL(li,jint)) == LOCAL(llength,jint))){
		JVMLINE(327)
		JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(330)
	{ jlong $$ret = mjava_lang_Long_parse__Ljava_lang_String_IIZ_J(LOCAL(pstring,jobject),LOCAL(li,jint),LOCAL(pradix,jint),LOCAL(lnegative,jbool)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_parse__Ljava_lang_String_IIZ_J(jobject pstring, jint poffset, jint pradix, jbool pnegative) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(poffset,jint,1);
	DEFARG(pradix,jint,2);
	DEFARG(pnegative,jbool,3);
	DEFLOCAL(lmax,jlong,4);
	DEFLOCAL(lresult,jlong,5);
	DEFLOCAL(llength,jlong,6);
	DEFLOCAL(ldigit,jint,7);
	DEFLOCAL(lnext,jlong,8);

	JVMMETHOD(java_lang_Long_Class,18);
	JVMLINE(334)
	LOCAL(lmax,jlong)=-9223372036854775808 / (((jlong)(LOCAL(pradix,jint))));
	JVMLINE(335)
	LOCAL(lresult,jlong)=0;
	LOCAL(llength,jlong)=((jlong)(mjava_lang_String_length___I(LOCAL(pstring,jobject))));
	JVMLINE(348)
	while((((jlong)(LOCAL(poffset,jint)))) < LOCAL(llength,jlong)){
		JVMLINE(337)
		LOCAL(ldigit,jint)=mjava_lang_Character_digit__CI_I(mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(poffset,jint)++),LOCAL(pradix,jint));
		JVMLINE(339)
		if(LOCAL(ldigit,jint) == -1){
			JVMLINE(339)
			JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(342)
		if(LOCAL(lmax,jlong) > LOCAL(lresult,jlong)){
			JVMLINE(342)
			JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(344)
		LOCAL(lnext,jlong)=(LOCAL(lresult,jlong) * (((jlong)(LOCAL(pradix,jint))))) - (((jlong)(LOCAL(ldigit,jint))));
		JVMLINE(346)
		if(LOCAL(lnext,jlong) > LOCAL(lresult,jlong)){
			JVMLINE(346)
			JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(348)
		LOCAL(lresult,jlong)=LOCAL(lnext,jlong);
	}
	JVMLINE(353)
	if(!(LOCAL(pnegative,jbool))){
		JVMLINE(351)
		LOCAL(lresult,jlong)=-LOCAL(lresult,jlong);
		JVMLINE(353)
		if(LOCAL(lresult,jlong) < 0){
			JVMLINE(353)
			JvmThrow(mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
	}
	JVMLINE(356)
	{ jlong $$ret = LOCAL(lresult,jlong); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_Long_shortValue___S(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,19);
	JVMLINE(361)
	{ jshort $$ret = ((jshort)(((jint)(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toBinaryString__J_Ljava_lang_String_(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,20);
	JVMLINE(372)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(LOCAL(pv,jlong),2); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toHexString__J_Ljava_lang_String_(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,21);
	JVMLINE(384)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(LOCAL(pv,jlong),16); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toOctalString__J_Ljava_lang_String_(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,22);
	JVMLINE(395)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(LOCAL(pv,jlong),8); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Long_Class,23);
	JVMLINE(400)
	{ jobject $$ret = mjava_lang_Long_toString__J_Ljava_lang_String_(((java_lang_Long*)(LOCAL(pthis,jobject)))->fjava_lang_Long_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toString__J_Ljava_lang_String_(jlong pn) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pn,jlong,0);

	JVMMETHOD(java_lang_Long_Class,24);
	JVMLINE(412)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(LOCAL(pn,jlong),10); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_toString__JI_Ljava_lang_String_(jlong pv, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFARG(pradix,jint,1);
	DEFLOCAL(lnegative,jbool,2);
	DEFLOCAL(lsize,jint,3);
	DEFLOCAL(ln,jlong,4);
	DEFLOCAL(larray,jobject,5);
	DEFLOCAL(li,jint,6);
	DEFLOCAL(ldigit,jlong,7);

	JVMMETHOD(java_lang_Long_Class,25);
	JVMLINE(436)
	if((LOCAL(pradix,jint) < 1) || (LOCAL(pradix,jint) > 36)){
		JVMLINE(436)
		JvmThrow(mjava_lang_IllegalArgumentException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IllegalArgumentException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal70),LOCAL(pradix,jint)),$literal71))));
	}
	JVMLINE(440)
	if(LOCAL(pv,jlong) == 0){
		JVMLINE(440)
		{ jobject $$ret = $literal72; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(443)
	LOCAL(lnegative,jbool)=LOCAL(lsize,jint)=LOCAL(pv,jlong) < 0;
	JVMLINE(446)
	LOCAL(ln,jlong)=LOCAL(pv,jlong);
	while(LOCAL(ln,jlong) != 0){
		JVMLINE(447)
		LOCAL(lsize,jint)++;
		JVMLINE(446)
		LOCAL(ln,jlong)=LOCAL(ln,jlong) / (((jlong)(LOCAL(pradix,jint))));
	}
	JVMLINE(450)
	LOCAL(larray,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(lsize,jint));
	JVMLINE(452)
	LOCAL(li,jint)=LOCAL(lsize,jint) - 1;
	JVMLINE(453)
	LOCAL(ln,jlong)=LOCAL(pv,jlong);
	while(LOCAL(ln,jlong) != 0){
		JVMLINE(454)
		LOCAL(ldigit,jlong)=fmod(LOCAL(ln,jlong),((jlong)(LOCAL(pradix,jint))));
		JVMLINE(456)
		if(LOCAL(lnegative,jbool)){
			JVMLINE(456)
			LOCAL(ldigit,jlong)=-LOCAL(ldigit,jlong);
		}
		JVMLINE(462)
		if((LOCAL(ldigit,jlong) >= 0) && (LOCAL(ldigit,jlong) <= 9)){
			JVMLINE(460)
			JvmArraySet_C(LOCAL(larray,jobject),LOCAL(li,jint),((jchar)(((jint)(48 + LOCAL(ldigit,jlong))))));
		}
		else{
			JVMLINE(462)
			JvmArraySet_C(LOCAL(larray,jobject),LOCAL(li,jint),((jchar)(((jint)(97 + (LOCAL(ldigit,jlong) - 10))))));
		}
		JVMLINE(464)
		LOCAL(li,jint)--;
		JVMLINE(453)
		LOCAL(ln,jlong)=LOCAL(ln,jlong) / (((jlong)(LOCAL(pradix,jint))));
	}
	JVMLINE(468)
	if(LOCAL(lnegative,jbool)){
		JVMLINE(468)
		JvmArraySet_C(LOCAL(larray,jobject),LOCAL(li,jint),45);
	}
	JVMLINE(471)
	{ jobject $$ret = mjava_lang_String__init____CII_V(JvmAllocObject(&java_lang_String_Class),LOCAL(larray,jobject),0,LOCAL(lsize,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_valueOf__Ljava_lang_String__Ljava_lang_Long_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Long_Class,26);
	JVMLINE(485)
	{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(mjava_lang_Long_parseLong__Ljava_lang_String__J(LOCAL(pstring,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_valueOf__Ljava_lang_String_I_Ljava_lang_Long_(jobject pstring, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pradix,jint,1);

	JVMMETHOD(java_lang_Long_Class,27);
	JVMLINE(502)
	{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(mjava_lang_Long_parseLong__Ljava_lang_String_I_J(LOCAL(pstring,jobject),LOCAL(pradix,jint))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_highestOneBit__J_J(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,28);
	JVMLINE(517)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 1);
	JVMLINE(518)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 2);
	JVMLINE(519)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 4);
	JVMLINE(520)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 8);
	JVMLINE(521)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 16);
	JVMLINE(522)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) | (LOCAL(pv,jlong) >> 32);
	JVMLINE(523)
	{ jlong $$ret = LOCAL(pv,jlong) - ((((u_jlong)LOCAL(pv,jlong)) >> (1))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_lowestOneBit__J_J(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,29);
	JVMLINE(537)
	{ jlong $$ret = LOCAL(pv,jlong) & (-LOCAL(pv,jlong)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_numberOfLeadingZeros__J_I(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFLOCAL(ln,jint,1);
	DEFLOCAL(li,jint,2);

	JVMMETHOD(java_lang_Long_Class,30);
	JVMLINE(551)
	if(LOCAL(pv,jlong) < 0){
		JVMLINE(551)
		{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(554)
	if(LOCAL(pv,jlong) == 0){
		JVMLINE(554)
		{ jint $$ret = 64; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(559)
	LOCAL(ln,jint)=1;
	JVMLINE(560)
	LOCAL(li,jint)=((jint)((((u_jlong)LOCAL(pv,jlong)) >> (32))));
	JVMLINE(563)
	if(LOCAL(li,jint) == 0){
		JVMLINE(562)
		LOCAL(ln,jint)+=32;
		JVMLINE(563)
		LOCAL(li,jint)=((jint)(LOCAL(pv,jlong)));
	}
	JVMLINE(567)
	if(((((u_jint)LOCAL(li,jint)) >> (16))) == 0){
		JVMLINE(566)
		LOCAL(ln,jint)+=16;
		JVMLINE(567)
		LOCAL(li,jint)=LOCAL(li,jint) << 16;
	}
	JVMLINE(571)
	if(((((u_jint)LOCAL(li,jint)) >> (24))) == 0){
		JVMLINE(570)
		LOCAL(ln,jint)+=8;
		JVMLINE(571)
		LOCAL(li,jint)=LOCAL(li,jint) << 8;
	}
	JVMLINE(575)
	if(((((u_jint)LOCAL(li,jint)) >> (28))) == 0){
		JVMLINE(574)
		LOCAL(ln,jint)+=4;
		JVMLINE(575)
		LOCAL(li,jint)=LOCAL(li,jint) << 4;
	}
	JVMLINE(579)
	if(((((u_jint)LOCAL(li,jint)) >> (30))) == 0){
		JVMLINE(578)
		LOCAL(ln,jint)+=2;
		JVMLINE(579)
		LOCAL(li,jint)=LOCAL(li,jint) << 2;
	}
	JVMLINE(581)
	{ jint $$ret = LOCAL(ln,jint) - ((((u_jint)LOCAL(li,jint)) >> (31))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_numberOfTrailingZeros__J_I(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFLOCAL(llow,jint,1);

	JVMMETHOD(java_lang_Long_Class,31);
	JVMLINE(593)
	LOCAL(llow,jint)=((jint)(LOCAL(pv,jlong)));
	JVMLINE(594)
	{ jint $$ret = LOCAL(llow,jint) != 0 ? mjava_lang_Integer_numberOfTrailingZeros__I_I(LOCAL(llow,jint)) : 32 + mjava_lang_Integer_numberOfTrailingZeros__I_I(((jint)((((u_jlong)LOCAL(pv,jlong)) >> (32))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_bitCount__J_I(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFLOCAL(li,jint,1);

	JVMMETHOD(java_lang_Long_Class,32);
	JVMLINE(608)
	LOCAL(pv,jlong)=LOCAL(pv,jlong) - (((((u_jlong)LOCAL(pv,jlong)) >> (1))) & 6148914691236517205);
	JVMLINE(609)
	LOCAL(pv,jlong)=(LOCAL(pv,jlong) & 3689348814741910323) + (((((u_jlong)LOCAL(pv,jlong)) >> (2))) & 3689348814741910323);
	JVMLINE(610)
	LOCAL(li,jint)=(((jint)((((u_jlong)LOCAL(pv,jlong)) >> (32))))) + (((jint)(LOCAL(pv,jlong))));
	JVMLINE(611)
	LOCAL(li,jint)=(LOCAL(li,jint) & 252645135) + (((((u_jint)LOCAL(li,jint)) >> (4))) & 252645135);
	JVMLINE(612)
	LOCAL(li,jint)=LOCAL(li,jint) + ((((u_jint)LOCAL(li,jint)) >> (8)));
	JVMLINE(613)
	LOCAL(li,jint)=LOCAL(li,jint) + ((((u_jint)LOCAL(li,jint)) >> (16)));
	JVMLINE(614)
	{ jint $$ret = LOCAL(li,jint) & 127; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_rotateLeft__JI_J(jlong pv, jint pdistance) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFARG(pdistance,jint,1);

	JVMMETHOD(java_lang_Long_Class,33);
	JVMLINE(644)
	{ jlong $$ret = (LOCAL(pv,jlong) << LOCAL(pdistance,jint)) | ((((u_jlong)LOCAL(pv,jlong)) >> (-LOCAL(pdistance,jint)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_rotateRight__JI_J(jlong pv, jint pdistance) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);
	DEFARG(pdistance,jint,1);

	JVMMETHOD(java_lang_Long_Class,34);
	JVMLINE(658)
	{ jlong $$ret = ((((u_jlong)LOCAL(pv,jlong)) >> (LOCAL(pdistance,jint)))) | (LOCAL(pv,jlong) << (-LOCAL(pdistance,jint))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_reverseBytes__J_J(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,35);
	JVMLINE(671)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (8))) & 71777214294589695) | ((LOCAL(pv,jlong) & 71777214294589695) << 8);
	JVMLINE(672)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (16))) & 281470681808895) | ((LOCAL(pv,jlong) & 281470681808895) << 16);
	JVMLINE(673)
	{ jlong $$ret = ((((u_jlong)LOCAL(pv,jlong)) >> (32))) | (LOCAL(pv,jlong) << 32); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Long_reverse__J_J(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,36);
	JVMLINE(686)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (1))) & 6148914691236517205) | ((LOCAL(pv,jlong) & 6148914691236517205) << 1);
	JVMLINE(687)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (2))) & 3689348814741910323) | ((LOCAL(pv,jlong) & 3689348814741910323) << 2);
	JVMLINE(688)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (4))) & 1085102592571150095) | ((LOCAL(pv,jlong) & 1085102592571150095) << 4);
	JVMLINE(689)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (8))) & 71777214294589695) | ((LOCAL(pv,jlong) & 71777214294589695) << 8);
	JVMLINE(690)
	LOCAL(pv,jlong)=(((((u_jlong)LOCAL(pv,jlong)) >> (16))) & 281470681808895) | ((LOCAL(pv,jlong) & 281470681808895) << 16);
	JVMLINE(691)
	{ jlong $$ret = ((((u_jlong)LOCAL(pv,jlong)) >> (32))) | (LOCAL(pv,jlong) << 32); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_signum__J_I(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,37);
	JVMLINE(704)
	{ jint $$ret = LOCAL(pv,jlong) < 0 ? -1 : LOCAL(pv,jlong) == 0 ? 0 : 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Long_valueOf__J_Ljava_lang_Long_(jlong pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jlong,0);

	JVMMETHOD(java_lang_Long_Class,38);
	JVMLINE(719)
	{ jobject $$ret = (LOCAL(pv,jlong) >= 128) || (LOCAL(pv,jlong) < -128) ? mjava_lang_Long__init___J_V(JvmAllocObject(&java_lang_Long_Class),LOCAL(pv,jlong)) : JvmArrayGet_O(JVMGLOBALS[11],(((jint)(LOCAL(pv,jlong)))) + 128); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Long_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_Long_Class,39);
	JVMLINE(21)
	{ jint $$ret = mjava_lang_Long_compareTo__Ljava_lang_Long__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_Long_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Long__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFLOCAL(li,jint,0);

	JVMMETHOD(java_lang_Long_Class,40);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(46)
	fjava_lang_Long_TYPE=mjava_lang_Class_getComponentType___Ljava_lang_Class_(&ArrOf_J_Class);
	JVMLINE(725)
	JVMGLOBALS[11]=JvmAllocObjectArray1(&ArrOf_java_lang_Long_Class,256);
	JVMLINE(728)
	LOCAL(li,jint)=-128;
	while(LOCAL(li,jint) < 128){
		JVMLINE(729)
		JvmArraySet_O(JVMGLOBALS[11],LOCAL(li,jint) + 128,mjava_lang_Long__init___J_V(JvmAllocObject(&java_lang_Long_Class),((jlong)(LOCAL(li,jint)))));
		JVMLINE(728)
		LOCAL(li,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Long_Class;
JvmClass ArrOf_java_lang_Long_Class;
JvmClass ArrOf_ArrOf_java_lang_Long_Class;

jbool java_lang_Long_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Long_Class || klass == &java_lang_Comparable_Class || klass == &java_lang_Object_Class || klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_JJ(jobject,jobject,jobject);
extern jobject invoke_B(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_OIIZJ(jobject,jobject,jobject);
extern jobject invoke_JO(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_JJI(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_JIJ(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OIJ(jobject,jobject,jobject);
extern jobject invoke_JIO(jobject,jobject,jobject);
extern jobject invoke_S(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
extern jobject invoke_OJO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_OJ(jobject,jobject,jobject);
extern jobject invoke_JI(jobject,jobject,jobject);
void JvmSetup_java_lang_Long() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Number();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[6] = &mjava_lang_Long_byteValue___B;
	_vTable[8] = &mjava_lang_Long_doubleValue___D;
	_vTable[1] = &mjava_lang_Long_equals__Ljava_lang_Object__Z;
	_vTable[5] = &mjava_lang_Long_floatValue___F;
	_vTable[2] = &mjava_lang_Long_hashCode___I;
	_vTable[7] = &mjava_lang_Long_intValue___I;
	_vTable[4] = &mjava_lang_Long_longValue___J;
	_vTable[3] = &mjava_lang_Long_shortValue___S;
	_vTable[0] = &mjava_lang_Long_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(2 * sizeof(void*));
	_iTable[1] = (void*)&mjava_lang_Long_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Long_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Long);
	cls->name = JvmMakeString(L"java.lang.Long",14);
	cls->superClass = &java_lang_Number_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Long_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Long.java",9);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 41, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"<init>", 6), &java_lang_Long_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long__init___J_V, &invoke_JO 
#ifdef JVM_DEBUG
 , 63, 64, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=64, .endLine=64, .type=&J_Class},{.name=JvmMakeString(L"this",4), .startLine=63, .endLine=64, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"<init>", 6), &java_lang_Long_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 76, 76, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=76, .endLine=76, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=76, .endLine=76, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"byteValue", 9), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_byteValue___B, &invoke_B 
#ifdef JVM_DEBUG
 , 81, 81, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=81, .endLine=81, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Long_Class}), &mjava_lang_Long_compareTo__Ljava_lang_Long__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 97, 97, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=97, .endLine=97, .type=&java_lang_Long_Class},{.name=JvmMakeString(L"this",4), .startLine=97, .endLine=97, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"compare", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&J_Class,&J_Class}), &mjava_lang_Long_compare__JJ_I, &invoke_JJI 
#ifdef JVM_DEBUG
 , 108, 108, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"lhs",3), .startLine=108, .endLine=108, .type=&J_Class},{.name=JvmMakeString(L"rhs",3), .startLine=108, .endLine=108, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"invalidLong", 11), &java_lang_NumberFormatException_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_, &invoke_OO 
#ifdef JVM_DEBUG
 , 112, 112, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=112, .endLine=112, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"decode", 6), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_, &invoke_OO 
#ifdef JVM_DEBUG
 , 128, 164, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=128, .endLine=164, .type=&java_lang_String_Class},{.name=JvmMakeString(L"length",6), .startLine=128, .endLine=164, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=128, .endLine=164, .type=&I_Class},{.name=JvmMakeString(L"firstDigit",10), .startLine=132, .endLine=164, .type=&C_Class},{.name=JvmMakeString(L"negative",8), .startLine=133, .endLine=164, .type=&Z_Class},{.name=JvmMakeString(L"base",4), .startLine=141, .endLine=164, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=163, .endLine=164, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"doubleValue", 11), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_doubleValue___D, &invoke_D 
#ifdef JVM_DEBUG
 , 169, 169, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=169, .endLine=169, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Long_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 183, 183, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=183, .endLine=183, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=183, .endLine=183, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"floatValue", 10), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_floatValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 188, 188, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=188, .endLine=188, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"getLong", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long_getLong__Ljava_lang_String__Ljava_lang_Long_, &invoke_OO 
#ifdef JVM_DEBUG
 , 202, 211, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=202, .endLine=211, .type=&java_lang_String_Class},{.name=JvmMakeString(L"prop",4), .startLine=204, .endLine=211, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=209, .endLine=211, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"getLong", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&J_Class}), &mjava_lang_Long_getLong__Ljava_lang_String_J_Ljava_lang_Long_, &invoke_OJO 
#ifdef JVM_DEBUG
 , 229, 238, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=229, .endLine=238, .type=&java_lang_String_Class},{.name=JvmMakeString(L"defaultValue",12), .startLine=229, .endLine=238, .type=&J_Class},{.name=JvmMakeString(L"prop",4), .startLine=231, .endLine=238, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=236, .endLine=238, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"getLong", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&java_lang_Long_Class}), &mjava_lang_Long_getLong__Ljava_lang_String_Ljava_lang_Long__Ljava_lang_Long_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 256, 265, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=256, .endLine=265, .type=&java_lang_String_Class},{.name=JvmMakeString(L"defaultValue",12), .startLine=256, .endLine=265, .type=&java_lang_Long_Class},{.name=JvmMakeString(L"prop",4), .startLine=258, .endLine=265, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=263, .endLine=265, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 271, 271, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=271, .endLine=271, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"intValue", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_intValue___I, &invoke_I 
#ifdef JVM_DEBUG
 , 276, 276, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=276, .endLine=276, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"longValue", 9), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_longValue___J, &invoke_J 
#ifdef JVM_DEBUG
 , 286, 286, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=286, .endLine=286, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"parseLong", 9), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long_parseLong__Ljava_lang_String__J, &invoke_OJ 
#ifdef JVM_DEBUG
 , 299, 299, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=299, .endLine=299, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"parseLong", 9), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_Long_parseLong__Ljava_lang_String_I_J, &invoke_OIJ 
#ifdef JVM_DEBUG
 , 316, 330, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=319, .endLine=330, .type=&java_lang_String_Class},{.name=JvmMakeString(L"radix",5), .startLine=316, .endLine=330, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=321, .endLine=330, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=321, .endLine=330, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=325, .endLine=330, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"parse", 5), &J_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&I_Class,&Z_Class}), &mjava_lang_Long_parse__Ljava_lang_String_IIZ_J, &invoke_OIIZJ 
#ifdef JVM_DEBUG
 , 334, 356, 4, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=335, .endLine=356, .type=&java_lang_String_Class},{.name=JvmMakeString(L"offset",6), .startLine=337, .endLine=356, .type=&I_Class},{.name=JvmMakeString(L"radix",5), .startLine=334, .endLine=356, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=353, .endLine=356, .type=&Z_Class},{.name=JvmMakeString(L"max",3), .startLine=334, .endLine=356, .type=&J_Class},{.name=JvmMakeString(L"result",6), .startLine=335, .endLine=356, .type=&J_Class},{.name=JvmMakeString(L"length",6), .startLine=335, .endLine=356, .type=&J_Class},{.name=JvmMakeString(L"digit",5), .startLine=337, .endLine=356, .type=&I_Class},{.name=JvmMakeString(L"next",4), .startLine=344, .endLine=356, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"shortValue", 10), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_shortValue___S, &invoke_S 
#ifdef JVM_DEBUG
 , 361, 361, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=361, .endLine=361, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toBinaryString", 14), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_toBinaryString__J_Ljava_lang_String_, &invoke_JO 
#ifdef JVM_DEBUG
 , 372, 372, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=372, .endLine=372, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toHexString", 11), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_toHexString__J_Ljava_lang_String_, &invoke_JO 
#ifdef JVM_DEBUG
 , 384, 384, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=384, .endLine=384, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toOctalString", 13), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_toOctalString__J_Ljava_lang_String_, &invoke_JO 
#ifdef JVM_DEBUG
 , 395, 395, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=395, .endLine=395, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 400, 400, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=400, .endLine=400, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_toString__J_Ljava_lang_String_, &invoke_JO 
#ifdef JVM_DEBUG
 , 412, 412, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"n",1), .startLine=412, .endLine=412, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&J_Class,&I_Class}), &mjava_lang_Long_toString__JI_Ljava_lang_String_, &invoke_JIO 
#ifdef JVM_DEBUG
 , 436, 471, 2, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=440, .endLine=471, .type=&J_Class},{.name=JvmMakeString(L"radix",5), .startLine=436, .endLine=471, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=443, .endLine=471, .type=&Z_Class},{.name=JvmMakeString(L"size",4), .startLine=443, .endLine=471, .type=&I_Class},{.name=JvmMakeString(L"n",1), .startLine=446, .endLine=471, .type=&J_Class},{.name=JvmMakeString(L"array",5), .startLine=450, .endLine=471, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"i",1), .startLine=452, .endLine=471, .type=&I_Class},{.name=JvmMakeString(L"digit",5), .startLine=454, .endLine=471, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"valueOf", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Long_valueOf__Ljava_lang_String__Ljava_lang_Long_, &invoke_OO 
#ifdef JVM_DEBUG
 , 485, 485, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=485, .endLine=485, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"valueOf", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_Long_valueOf__Ljava_lang_String_I_Ljava_lang_Long_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 502, 502, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=502, .endLine=502, .type=&java_lang_String_Class},{.name=JvmMakeString(L"radix",5), .startLine=502, .endLine=502, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"highestOneBit", 13), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_highestOneBit__J_J, &invoke_JJ 
#ifdef JVM_DEBUG
 , 517, 523, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=517, .endLine=523, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"lowestOneBit", 12), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_lowestOneBit__J_J, &invoke_JJ 
#ifdef JVM_DEBUG
 , 537, 537, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=537, .endLine=537, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"numberOfLeadingZeros", 20), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_numberOfLeadingZeros__J_I, &invoke_JI 
#ifdef JVM_DEBUG
 , 551, 581, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=551, .endLine=581, .type=&J_Class},{.name=JvmMakeString(L"n",1), .startLine=559, .endLine=581, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=560, .endLine=581, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"numberOfTrailingZeros", 21), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_numberOfTrailingZeros__J_I, &invoke_JI 
#ifdef JVM_DEBUG
 , 593, 594, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=593, .endLine=594, .type=&J_Class},{.name=JvmMakeString(L"low",3), .startLine=593, .endLine=594, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"bitCount", 8), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_bitCount__J_I, &invoke_JI 
#ifdef JVM_DEBUG
 , 608, 614, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=608, .endLine=614, .type=&J_Class},{.name=JvmMakeString(L"i",1), .startLine=610, .endLine=614, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"rotateLeft", 10), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&J_Class,&I_Class}), &mjava_lang_Long_rotateLeft__JI_J, &invoke_JIJ 
#ifdef JVM_DEBUG
 , 644, 644, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=644, .endLine=644, .type=&J_Class},{.name=JvmMakeString(L"distance",8), .startLine=644, .endLine=644, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"rotateRight", 11), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&J_Class,&I_Class}), &mjava_lang_Long_rotateRight__JI_J, &invoke_JIJ 
#ifdef JVM_DEBUG
 , 658, 658, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=658, .endLine=658, .type=&J_Class},{.name=JvmMakeString(L"distance",8), .startLine=658, .endLine=658, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"reverseBytes", 12), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_reverseBytes__J_J, &invoke_JJ 
#ifdef JVM_DEBUG
 , 671, 673, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=671, .endLine=673, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"reverse", 7), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_reverse__J_J, &invoke_JJ 
#ifdef JVM_DEBUG
 , 686, 691, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=686, .endLine=691, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"signum", 6), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_signum__J_I, &invoke_JI 
#ifdef JVM_DEBUG
 , 704, 704, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=704, .endLine=704, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"valueOf", 7), &java_lang_Long_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Long_valueOf__J_Ljava_lang_Long_, &invoke_JO 
#ifdef JVM_DEBUG
 , 719, 719, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=719, .endLine=719, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Long_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 21, 21, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=21, .endLine=21, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=21, .endLine=21, .type=&java_lang_Long_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Long_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Long__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 46, 729, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=728, .endLine=729, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 7, &(JvmField*[]){
	JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"value", 5), &J_Class, 18, (void*)offsetof(java_lang_Long,fjava_lang_Long_value))
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"serialVersionUID", 16), &J_Class, 26, &fjava_lang_Long_serialVersionUID)
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"MAX_VALUE", 9), &J_Class, 25, &fjava_lang_Long_MAX_VALUE)
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"MIN_VALUE", 9), &J_Class, 25, &fjava_lang_Long_MIN_VALUE)
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Long_TYPE)
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"SIZE", 4), &I_Class, 25, &fjava_lang_Long_SIZE)
	,JvmMakeField(&java_lang_Long_Class, JvmMakeString(L"SMALL_VALUES", 12), &ArrOf_java_lang_Long_Class, 26, &JVMGLOBALS[11])
	});

	cls = &ArrOf_java_lang_Long_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Long",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Long_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Long_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Long",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Long_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
