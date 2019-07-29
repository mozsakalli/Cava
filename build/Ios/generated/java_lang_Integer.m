#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_Long.h"
#include "java_lang_Character.h"
#include "java_lang_System.h"
extern jobject $literal69;
extern jobject $literal15;
extern jobject $literal81;


jlong fjava_lang_Integer_serialVersionUID;
jint fjava_lang_Integer_MAX_VALUE;
jint fjava_lang_Integer_MIN_VALUE;
jint fjava_lang_Integer_SIZE;
jobject fjava_lang_Integer_TYPE;
jobject mjava_lang_Integer__init___I_V(jobject pthis, jint pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jint,1);

	JVMMETHOD(java_lang_Integer_Class,0);
	JVMLINE(77)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(78)
	((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value=LOCAL(pvalue,jint);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer__init___Ljava_lang_String__V(jobject pthis, jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstring,jobject,1);

	JVMMETHOD(java_lang_Integer_Class,1);
	JVMLINE(91)
	mjava_lang_Integer__init___I_V(LOCAL(pthis,jobject),mjava_lang_Integer_parseInt__Ljava_lang_String__I(LOCAL(pstring,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_Integer_byteValue___B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,2);
	JVMLINE(96)
	{ jbyte $$ret = ((jbyte)(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_compareTo__Ljava_lang_Integer__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Integer_Class,3);
	JVMLINE(113)
	{ jint $$ret = mjava_lang_Integer_compare__II_I(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value,((java_lang_Integer*)(LOCAL(pobject,jobject)))->fjava_lang_Integer_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_compare__II_I(jint plhs, jint prhs) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(plhs,jint,0);
	DEFARG(prhs,jint,1);

	JVMMETHOD(java_lang_Integer_Class,4);
	JVMLINE(122)
	{ jint $$ret = LOCAL(plhs,jint) < LOCAL(prhs,jint) ? -1 : LOCAL(plhs,jint) == LOCAL(prhs,jint) ? 0 : 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,5);
	JVMLINE(126)
	JvmThrow(mjava_lang_NumberFormatException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NumberFormatException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal81),LOCAL(ps,jobject)),$literal15))));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring) {
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
	DEFLOCAL(lresult,jint,6);

	JVMMETHOD(java_lang_Integer_Class,6);
	JVMLINE(143)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstring,jobject));
	LOCAL(li,jint)=0;
	JVMLINE(145)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(145)
		JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(147)
	LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint));
	JVMLINE(148)
	LOCAL(lnegative,jbool)=LOCAL(lfirstDigit,jchar) == 45;
	JVMLINE(153)
	if(LOCAL(lnegative,jbool)){
		JVMLINE(151)
		if(LOCAL(llength,jint) == 1){
			JVMLINE(151)
			JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(153)
		LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),++LOCAL(li,jint));
	}
	JVMLINE(156)
	LOCAL(lbase,jint)=10;
	JVMLINE(173)
	if(LOCAL(lfirstDigit,jchar) == 48){
		JVMLINE(159)
		if((++LOCAL(li,jint)) == LOCAL(llength,jint)){
			JVMLINE(159)
			{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(0); thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(167)
		if(((LOCAL(lfirstDigit,jchar)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint))) == 120) || (LOCAL(lfirstDigit,jchar) == 88)){
			JVMLINE(163)
			if((++LOCAL(li,jint)) == LOCAL(llength,jint)){
				JVMLINE(163)
				JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
			}
			JVMLINE(165)
			LOCAL(lbase,jint)=16;
		}
		else{
			JVMLINE(167)
			LOCAL(lbase,jint)=8;
		}
	}
	else{
		JVMLINE(173)
		if(LOCAL(lfirstDigit,jchar) == 35){
			JVMLINE(171)
			if((++LOCAL(li,jint)) == LOCAL(llength,jint)){
				JVMLINE(171)
				JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
			}
			JVMLINE(173)
			LOCAL(lbase,jint)=16;
		}
	}
	JVMLINE(176)
	LOCAL(lresult,jint)=mjava_lang_Integer_parse__Ljava_lang_String_IIZ_I(LOCAL(pstring,jobject),LOCAL(li,jint),LOCAL(lbase,jint),LOCAL(lnegative,jbool));
	JVMLINE(177)
	{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(LOCAL(lresult,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Integer_doubleValue___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,7);
	JVMLINE(182)
	{ jdouble $$ret = ((jdouble)(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Integer_equals__Ljava_lang_Object__Z(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);

	JVMMETHOD(java_lang_Integer_Class,8);
	JVMLINE(197)
	{ jbool $$ret = (JvmInstanceOf(LOCAL(po,jobject),&java_lang_Integer_Class)) && (((java_lang_Integer*)(JvmCheckCast(LOCAL(po,jobject),&java_lang_Integer_Class)))->fjava_lang_Integer_value == ((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Integer_floatValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,9);
	JVMLINE(202)
	{ jfloat $$ret = ((jfloat)(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_getInteger__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFLOCAL(lprop,jobject,1);
	DEFLOCAL(lex,jobject,2);

	JVMMETHOD(java_lang_Integer_Class,10);
	JVMLINE(218)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(218)
		{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(220)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(222)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(222)
		{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(227)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(225)
			{ jobject $$ret = mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(227)
			{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Integer_getInteger__Ljava_lang_String_I_Ljava_lang_Integer_(jobject pstring, jint pdefaultValue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pdefaultValue,jint,1);
	DEFLOCAL(lprop,jobject,2);
	DEFLOCAL(lex,jobject,3);

	JVMMETHOD(java_lang_Integer_Class,11);
	JVMLINE(247)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(247)
		{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(LOCAL(pdefaultValue,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(249)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(251)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(251)
		{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(LOCAL(pdefaultValue,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(256)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(254)
			{ jobject $$ret = mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(256)
			{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(LOCAL(pdefaultValue,jint)); thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Integer_getInteger__Ljava_lang_String_Ljava_lang_Integer__Ljava_lang_Integer_(jobject pstring, jobject pdefaultValue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pdefaultValue,jobject,1);
	DEFLOCAL(lprop,jobject,2);
	DEFLOCAL(lex,jobject,3);

	JVMMETHOD(java_lang_Integer_Class,12);
	JVMLINE(276)
	if((LOCAL(pstring,jobject) == jnull) || (mjava_lang_String_length___I(LOCAL(pstring,jobject)) == 0)){
		JVMLINE(276)
		{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(278)
	LOCAL(lprop,jobject)=mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(LOCAL(pstring,jobject));
	JVMLINE(280)
	if(LOCAL(lprop,jobject) == jnull){
		JVMLINE(280)
		{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(285)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(283)
			{ jobject $$ret = mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_(LOCAL(lprop,jobject)); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_NumberFormatException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(285)
			{ jobject $$ret = LOCAL(pdefaultValue,jobject); thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jint mjava_lang_Integer_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,13);
	JVMLINE(291)
	{ jint $$ret = ((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_intValue___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,14);
	JVMLINE(301)
	{ jint $$ret = ((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Integer_longValue___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,15);
	JVMLINE(306)
	{ jlong $$ret = ((jlong)(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_parseInt__Ljava_lang_String__I(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,16);
	JVMLINE(320)
	{ jint $$ret = mjava_lang_Integer_parseInt__Ljava_lang_String_I_I(LOCAL(pstring,jobject),10); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_parseInt__Ljava_lang_String_I_I(jobject pstring, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pradix,jint,1);
	DEFLOCAL(llength,jint,2);
	DEFLOCAL(li,jint,3);
	DEFLOCAL(lnegative,jbool,4);

	JVMMETHOD(java_lang_Integer_Class,17);
	JVMLINE(340)
	if((LOCAL(pradix,jint) < 2) || (LOCAL(pradix,jint) > 36)){
		JVMLINE(340)
		JvmThrow(mjava_lang_NumberFormatException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NumberFormatException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal69),LOCAL(pradix,jint)))));
	}
	JVMLINE(343)
	if(LOCAL(pstring,jobject) == jnull){
		JVMLINE(343)
		JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(345)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstring,jobject));
	LOCAL(li,jint)=0;
	JVMLINE(347)
	if(LOCAL(llength,jint) == 0){
		JVMLINE(347)
		JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(349)
	LOCAL(lnegative,jbool)=mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(li,jint)) == 45;
	JVMLINE(351)
	if(LOCAL(lnegative,jbool) && ((++LOCAL(li,jint)) == LOCAL(llength,jint))){
		JVMLINE(351)
		JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
	}
	JVMLINE(354)
	{ jint $$ret = mjava_lang_Integer_parse__Ljava_lang_String_IIZ_I(LOCAL(pstring,jobject),LOCAL(li,jint),LOCAL(pradix,jint),LOCAL(lnegative,jbool)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_parse__Ljava_lang_String_IIZ_I(jobject pstring, jint poffset, jint pradix, jbool pnegative) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(poffset,jint,1);
	DEFARG(pradix,jint,2);
	DEFARG(pnegative,jbool,3);
	DEFLOCAL(lmax,jint,4);
	DEFLOCAL(lresult,jint,5);
	DEFLOCAL(llength,jint,6);
	DEFLOCAL(ldigit,jint,7);
	DEFLOCAL(lnext,jint,8);

	JVMMETHOD(java_lang_Integer_Class,18);
	JVMLINE(358)
	LOCAL(lmax,jint)=-2147483648 / LOCAL(pradix,jint);
	JVMLINE(359)
	LOCAL(lresult,jint)=0;
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstring,jobject));
	JVMLINE(372)
	while(LOCAL(poffset,jint) < LOCAL(llength,jint)){
		JVMLINE(361)
		LOCAL(ldigit,jint)=mjava_lang_Character_digit__CI_I(mjava_lang_String_charAt__I_C(LOCAL(pstring,jobject),LOCAL(poffset,jint)++),LOCAL(pradix,jint));
		JVMLINE(363)
		if(LOCAL(ldigit,jint) == -1){
			JVMLINE(363)
			JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(366)
		if(LOCAL(lmax,jint) > LOCAL(lresult,jint)){
			JVMLINE(366)
			JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(368)
		LOCAL(lnext,jint)=(LOCAL(lresult,jint) * LOCAL(pradix,jint)) - LOCAL(ldigit,jint);
		JVMLINE(370)
		if(LOCAL(lnext,jint) > LOCAL(lresult,jint)){
			JVMLINE(370)
			JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
		JVMLINE(372)
		LOCAL(lresult,jint)=LOCAL(lnext,jint);
	}
	JVMLINE(377)
	if(!(LOCAL(pnegative,jbool))){
		JVMLINE(375)
		LOCAL(lresult,jint)=-LOCAL(lresult,jint);
		JVMLINE(377)
		if(LOCAL(lresult,jint) < 0){
			JVMLINE(377)
			JvmThrow(mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(LOCAL(pstring,jobject)));
		}
	}
	JVMLINE(380)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_Integer_shortValue___S(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,19);
	JVMLINE(385)
	{ jshort $$ret = ((jshort)(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toBinaryString__I_Ljava_lang_String_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,20);
	JVMLINE(397)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_((((jlong)(LOCAL(pi,jint)))) & 4294967295,2); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toHexString__I_Ljava_lang_String_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,21);
	JVMLINE(410)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_((((jlong)(LOCAL(pi,jint)))) & 4294967295,16); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toOctalString__I_Ljava_lang_String_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,22);
	JVMLINE(422)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_((((jlong)(LOCAL(pi,jint)))) & 4294967295,8); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,23);
	JVMLINE(427)
	{ jobject $$ret = mjava_lang_Integer_toString__I_Ljava_lang_String_(((java_lang_Integer*)(LOCAL(pthis,jobject)))->fjava_lang_Integer_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toString__I_Ljava_lang_String_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,24);
	JVMLINE(440)
	{ jobject $$ret = mjava_lang_Integer_toString__II_Ljava_lang_String_(LOCAL(pi,jint),10); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_toString__II_Ljava_lang_String_(jint pi, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);
	DEFARG(pradix,jint,1);

	JVMMETHOD(java_lang_Integer_Class,25);
	JVMLINE(463)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(((jlong)(LOCAL(pi,jint))),LOCAL(pradix,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_valueOf__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Integer_Class,26);
	JVMLINE(478)
	{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(mjava_lang_Integer_parseInt__Ljava_lang_String__I(LOCAL(pstring,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_valueOf__Ljava_lang_String_I_Ljava_lang_Integer_(jobject pstring, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);
	DEFARG(pradix,jint,1);

	JVMMETHOD(java_lang_Integer_Class,27);
	JVMLINE(498)
	{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(mjava_lang_Integer_parseInt__Ljava_lang_String_I_I(LOCAL(pstring,jobject),LOCAL(pradix,jint))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_highestOneBit__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,28);
	JVMLINE(514)
	LOCAL(pi,jint)=LOCAL(pi,jint) | (LOCAL(pi,jint) >> 1);
	JVMLINE(515)
	LOCAL(pi,jint)=LOCAL(pi,jint) | (LOCAL(pi,jint) >> 2);
	JVMLINE(516)
	LOCAL(pi,jint)=LOCAL(pi,jint) | (LOCAL(pi,jint) >> 4);
	JVMLINE(517)
	LOCAL(pi,jint)=LOCAL(pi,jint) | (LOCAL(pi,jint) >> 8);
	JVMLINE(518)
	LOCAL(pi,jint)=LOCAL(pi,jint) | (LOCAL(pi,jint) >> 16);
	JVMLINE(519)
	{ jint $$ret = LOCAL(pi,jint) - ((((u_jint)LOCAL(pi,jint)) >> (1))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_lowestOneBit__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,29);
	JVMLINE(534)
	{ jint $$ret = LOCAL(pi,jint) & (-LOCAL(pi,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_numberOfLeadingZeros__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);
	DEFLOCAL(ln,jint,1);

	JVMMETHOD(java_lang_Integer_Class,30);
	JVMLINE(549)
	if(LOCAL(pi,jint) <= 0){
		JVMLINE(549)
		{ jint $$ret = ((LOCAL(pi,jint) ^ -1) >> 26) & 32; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(551)
	LOCAL(ln,jint)=1;
	JVMLINE(554)
	if((LOCAL(pi,jint) >> 16) == 0){
		JVMLINE(553)
		LOCAL(ln,jint)+=16;
		JVMLINE(554)
		LOCAL(pi,jint)=LOCAL(pi,jint) << 16;
	}
	JVMLINE(558)
	if((LOCAL(pi,jint) >> 24) == 0){
		JVMLINE(557)
		LOCAL(ln,jint)+=8;
		JVMLINE(558)
		LOCAL(pi,jint)=LOCAL(pi,jint) << 8;
	}
	JVMLINE(562)
	if((LOCAL(pi,jint) >> 28) == 0){
		JVMLINE(561)
		LOCAL(ln,jint)+=4;
		JVMLINE(562)
		LOCAL(pi,jint)=LOCAL(pi,jint) << 4;
	}
	JVMLINE(566)
	if((LOCAL(pi,jint) >> 30) == 0){
		JVMLINE(565)
		LOCAL(ln,jint)+=2;
		JVMLINE(566)
		LOCAL(pi,jint)=LOCAL(pi,jint) << 2;
	}
	JVMLINE(568)
	{ jint $$ret = LOCAL(ln,jint) - ((((u_jint)LOCAL(pi,jint)) >> (31))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_numberOfTrailingZeros__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,31);
	JVMLINE(581)
	{ jint $$ret = JvmArrayGet_B(JVMGLOBALS[12],(((u_jint)(LOCAL(pi,jint) & (-LOCAL(pi,jint))) * 72416175) >> (26))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_bitCount__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,32);
	JVMLINE(595)
	LOCAL(pi,jint)=LOCAL(pi,jint) - ((LOCAL(pi,jint) >> 1) & 1431655765);
	JVMLINE(596)
	LOCAL(pi,jint)=(LOCAL(pi,jint) & 858993459) + ((LOCAL(pi,jint) >> 2) & 858993459);
	JVMLINE(597)
	LOCAL(pi,jint)=((LOCAL(pi,jint) >> 4) + LOCAL(pi,jint)) & 252645135;
	JVMLINE(598)
	LOCAL(pi,jint)=LOCAL(pi,jint) + (LOCAL(pi,jint) >> 8);
	JVMLINE(599)
	LOCAL(pi,jint)=LOCAL(pi,jint) + (LOCAL(pi,jint) >> 16);
	JVMLINE(600)
	{ jint $$ret = LOCAL(pi,jint) & 63; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_rotateLeft__II_I(jint pi, jint pdistance) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);
	DEFARG(pdistance,jint,1);

	JVMMETHOD(java_lang_Integer_Class,33);
	JVMLINE(616)
	{ jint $$ret = (LOCAL(pi,jint) << LOCAL(pdistance,jint)) | ((((u_jint)LOCAL(pi,jint)) >> (-LOCAL(pdistance,jint)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_rotateRight__II_I(jint pi, jint pdistance) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);
	DEFARG(pdistance,jint,1);

	JVMMETHOD(java_lang_Integer_Class,34);
	JVMLINE(632)
	{ jint $$ret = ((((u_jint)LOCAL(pi,jint)) >> (LOCAL(pdistance,jint)))) | (LOCAL(pi,jint) << (-LOCAL(pdistance,jint))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_reverseBytes__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,35);
	JVMLINE(646)
	LOCAL(pi,jint)=(((((u_jint)LOCAL(pi,jint)) >> (8))) & 16711935) | ((LOCAL(pi,jint) & 16711935) << 8);
	JVMLINE(647)
	{ jint $$ret = ((((u_jint)LOCAL(pi,jint)) >> (16))) | (LOCAL(pi,jint) << 16); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_reverse__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,36);
	JVMLINE(661)
	LOCAL(pi,jint)=(((((u_jint)LOCAL(pi,jint)) >> (1))) & 1431655765) | ((LOCAL(pi,jint) & 1431655765) << 1);
	JVMLINE(662)
	LOCAL(pi,jint)=(((((u_jint)LOCAL(pi,jint)) >> (2))) & 858993459) | ((LOCAL(pi,jint) & 858993459) << 2);
	JVMLINE(663)
	LOCAL(pi,jint)=(((((u_jint)LOCAL(pi,jint)) >> (4))) & 252645135) | ((LOCAL(pi,jint) & 252645135) << 4);
	JVMLINE(664)
	LOCAL(pi,jint)=(((((u_jint)LOCAL(pi,jint)) >> (8))) & 16711935) | ((LOCAL(pi,jint) & 16711935) << 8);
	JVMLINE(665)
	{ jint $$ret = ((((u_jint)LOCAL(pi,jint)) >> (16))) | (LOCAL(pi,jint) << 16); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_signum__I_I(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,37);
	JVMLINE(679)
	{ jint $$ret = (LOCAL(pi,jint) >> 31) | ((((u_jint)-LOCAL(pi,jint)) >> (31))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_Integer_Class,38);
	JVMLINE(695)
	{ jobject $$ret = (LOCAL(pi,jint) >= 128) || (LOCAL(pi,jint) < -128) ? mjava_lang_Integer__init___I_V(JvmAllocObject(&java_lang_Integer_Class),LOCAL(pi,jint)) : JvmArrayGet_O(JVMGLOBALS[13],LOCAL(pi,jint) + 128); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Integer_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_Integer_Class,39);
	JVMLINE(21)
	{ jint $$ret = mjava_lang_Integer_compareTo__Ljava_lang_Integer__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_Integer_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Integer__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFLOCAL(li,jint,0);

	JVMMETHOD(java_lang_Integer_Class,40);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(54)
	JVMGLOBALS[12]=JvmInitPrimArray1(&ArrOf_B_Class,64,(jbyte[]){32,0,1,12,2,6,-1,13,3,-1,7,-1,-1,-1,-1,14,10,4,-1,-1,8,-1,-1,25,-1,-1,-1,-1,-1,21,27,15,31,11,5,-1,-1,-1,-1,-1,9,-1,-1,24,-1,-1,20,26,30,-1,-1,-1,-1,23,-1,19,29,-1,22,18,28,17,16,-1});
	JVMLINE(66)
	fjava_lang_Integer_TYPE=mjava_lang_Class_getComponentType___Ljava_lang_Class_(&ArrOf_I_Class);
	JVMLINE(701)
	JVMGLOBALS[13]=JvmAllocObjectArray1(&ArrOf_java_lang_Integer_Class,256);
	JVMLINE(704)
	LOCAL(li,jint)=-128;
	while(LOCAL(li,jint) < 128){
		JVMLINE(705)
		JvmArraySet_O(JVMGLOBALS[13],LOCAL(li,jint) + 128,mjava_lang_Integer__init___I_V(JvmAllocObject(&java_lang_Integer_Class),LOCAL(li,jint)));
		JVMLINE(704)
		LOCAL(li,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Integer_Class;
JvmClass ArrOf_java_lang_Integer_Class;
JvmClass ArrOf_ArrOf_java_lang_Integer_Class;

jbool java_lang_Integer_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Integer_Class || klass == &java_lang_Comparable_Class || klass == &java_lang_Object_Class || klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_II(jobject,jobject,jobject);
extern jobject invoke_B(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_OIIZI(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_III(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_OII(jobject,jobject,jobject);
extern jobject invoke_IIO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_S(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
void JvmSetup_java_lang_Integer() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Number();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[6] = &mjava_lang_Integer_byteValue___B;
	_vTable[8] = &mjava_lang_Integer_doubleValue___D;
	_vTable[1] = &mjava_lang_Integer_equals__Ljava_lang_Object__Z;
	_vTable[5] = &mjava_lang_Integer_floatValue___F;
	_vTable[2] = &mjava_lang_Integer_hashCode___I;
	_vTable[7] = &mjava_lang_Integer_intValue___I;
	_vTable[4] = &mjava_lang_Integer_longValue___J;
	_vTable[3] = &mjava_lang_Integer_shortValue___S;
	_vTable[0] = &mjava_lang_Integer_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(2 * sizeof(void*));
	_iTable[1] = (void*)&mjava_lang_Integer_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Integer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Integer);
	cls->name = JvmMakeString(L"java.lang.Integer",17);
	cls->superClass = &java_lang_Number_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Integer_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Integer.java",12);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 41, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"<init>", 6), &java_lang_Integer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer__init___I_V, &invoke_IO 
#ifdef JVM_DEBUG
 , 77, 78, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=78, .endLine=78, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=77, .endLine=78, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"<init>", 6), &java_lang_Integer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 91, 91, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=91, .endLine=91, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=91, .endLine=91, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"byteValue", 9), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_byteValue___B, &invoke_B 
#ifdef JVM_DEBUG
 , 96, 96, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=96, .endLine=96, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Integer_Class}), &mjava_lang_Integer_compareTo__Ljava_lang_Integer__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 113, 113, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=113, .endLine=113, .type=&java_lang_Integer_Class},{.name=JvmMakeString(L"this",4), .startLine=113, .endLine=113, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"compare", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Integer_compare__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 122, 122, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"lhs",3), .startLine=122, .endLine=122, .type=&I_Class},{.name=JvmMakeString(L"rhs",3), .startLine=122, .endLine=122, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"invalidInt", 10), &java_lang_NumberFormatException_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_, &invoke_OO 
#ifdef JVM_DEBUG
 , 126, 126, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=126, .endLine=126, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"decode", 6), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_, &invoke_OO 
#ifdef JVM_DEBUG
 , 143, 177, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=143, .endLine=177, .type=&java_lang_String_Class},{.name=JvmMakeString(L"length",6), .startLine=143, .endLine=177, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=143, .endLine=177, .type=&I_Class},{.name=JvmMakeString(L"firstDigit",10), .startLine=147, .endLine=177, .type=&C_Class},{.name=JvmMakeString(L"negative",8), .startLine=148, .endLine=177, .type=&Z_Class},{.name=JvmMakeString(L"base",4), .startLine=156, .endLine=177, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=176, .endLine=177, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"doubleValue", 11), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_doubleValue___D, &invoke_D 
#ifdef JVM_DEBUG
 , 182, 182, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=182, .endLine=182, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Integer_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 197, 197, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=197, .endLine=197, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=197, .endLine=197, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"floatValue", 10), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_floatValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 202, 202, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=202, .endLine=202, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"getInteger", 10), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer_getInteger__Ljava_lang_String__Ljava_lang_Integer_, &invoke_OO 
#ifdef JVM_DEBUG
 , 218, 227, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=218, .endLine=227, .type=&java_lang_String_Class},{.name=JvmMakeString(L"prop",4), .startLine=220, .endLine=227, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=225, .endLine=227, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"getInteger", 10), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_Integer_getInteger__Ljava_lang_String_I_Ljava_lang_Integer_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 247, 256, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=247, .endLine=256, .type=&java_lang_String_Class},{.name=JvmMakeString(L"defaultValue",12), .startLine=247, .endLine=256, .type=&I_Class},{.name=JvmMakeString(L"prop",4), .startLine=249, .endLine=256, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=254, .endLine=256, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"getInteger", 10), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&java_lang_Integer_Class}), &mjava_lang_Integer_getInteger__Ljava_lang_String_Ljava_lang_Integer__Ljava_lang_Integer_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 276, 285, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=276, .endLine=285, .type=&java_lang_String_Class},{.name=JvmMakeString(L"defaultValue",12), .startLine=276, .endLine=285, .type=&java_lang_Integer_Class},{.name=JvmMakeString(L"prop",4), .startLine=278, .endLine=285, .type=&java_lang_String_Class},{.name=JvmMakeString(L"ex",2), .startLine=283, .endLine=285, .type=&java_lang_NumberFormatException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 291, 291, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=291, .endLine=291, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"intValue", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_intValue___I, &invoke_I 
#ifdef JVM_DEBUG
 , 301, 301, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=301, .endLine=301, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"longValue", 9), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_longValue___J, &invoke_J 
#ifdef JVM_DEBUG
 , 306, 306, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=306, .endLine=306, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"parseInt", 8), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer_parseInt__Ljava_lang_String__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 320, 320, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=320, .endLine=320, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"parseInt", 8), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_Integer_parseInt__Ljava_lang_String_I_I, &invoke_OII 
#ifdef JVM_DEBUG
 , 340, 354, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=343, .endLine=354, .type=&java_lang_String_Class},{.name=JvmMakeString(L"radix",5), .startLine=340, .endLine=354, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=345, .endLine=354, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=345, .endLine=354, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=349, .endLine=354, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"parse", 5), &I_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&I_Class,&Z_Class}), &mjava_lang_Integer_parse__Ljava_lang_String_IIZ_I, &invoke_OIIZI 
#ifdef JVM_DEBUG
 , 358, 380, 4, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=359, .endLine=380, .type=&java_lang_String_Class},{.name=JvmMakeString(L"offset",6), .startLine=361, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"radix",5), .startLine=358, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=377, .endLine=380, .type=&Z_Class},{.name=JvmMakeString(L"max",3), .startLine=358, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=359, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=359, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"digit",5), .startLine=361, .endLine=380, .type=&I_Class},{.name=JvmMakeString(L"next",4), .startLine=368, .endLine=380, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"shortValue", 10), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_shortValue___S, &invoke_S 
#ifdef JVM_DEBUG
 , 385, 385, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=385, .endLine=385, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toBinaryString", 14), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_toBinaryString__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 397, 397, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=397, .endLine=397, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toHexString", 11), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_toHexString__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 410, 410, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=410, .endLine=410, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toOctalString", 13), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_toOctalString__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 422, 422, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=422, .endLine=422, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 427, 427, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=427, .endLine=427, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_toString__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 440, 440, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=440, .endLine=440, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Integer_toString__II_Ljava_lang_String_, &invoke_IIO 
#ifdef JVM_DEBUG
 , 463, 463, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=463, .endLine=463, .type=&I_Class},{.name=JvmMakeString(L"radix",5), .startLine=463, .endLine=463, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"valueOf", 7), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Integer_valueOf__Ljava_lang_String__Ljava_lang_Integer_, &invoke_OO 
#ifdef JVM_DEBUG
 , 478, 478, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=478, .endLine=478, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"valueOf", 7), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&I_Class}), &mjava_lang_Integer_valueOf__Ljava_lang_String_I_Ljava_lang_Integer_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 498, 498, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=498, .endLine=498, .type=&java_lang_String_Class},{.name=JvmMakeString(L"radix",5), .startLine=498, .endLine=498, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"highestOneBit", 13), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_highestOneBit__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 514, 519, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=514, .endLine=519, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"lowestOneBit", 12), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_lowestOneBit__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 534, 534, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=534, .endLine=534, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"numberOfLeadingZeros", 20), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_numberOfLeadingZeros__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 549, 568, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=549, .endLine=568, .type=&I_Class},{.name=JvmMakeString(L"n",1), .startLine=551, .endLine=568, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"numberOfTrailingZeros", 21), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_numberOfTrailingZeros__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 581, 581, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=581, .endLine=581, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"bitCount", 8), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_bitCount__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 595, 600, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=595, .endLine=600, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"rotateLeft", 10), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Integer_rotateLeft__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 616, 616, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=616, .endLine=616, .type=&I_Class},{.name=JvmMakeString(L"distance",8), .startLine=616, .endLine=616, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"rotateRight", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Integer_rotateRight__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 632, 632, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=632, .endLine=632, .type=&I_Class},{.name=JvmMakeString(L"distance",8), .startLine=632, .endLine=632, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"reverseBytes", 12), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_reverseBytes__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 646, 647, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=646, .endLine=647, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"reverse", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_reverse__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 661, 665, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=661, .endLine=665, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"signum", 6), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_signum__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 679, 679, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=679, .endLine=679, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"valueOf", 7), &java_lang_Integer_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_, &invoke_IO 
#ifdef JVM_DEBUG
 , 695, 695, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=695, .endLine=695, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Integer_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 21, 21, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=21, .endLine=21, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=21, .endLine=21, .type=&java_lang_Integer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Integer_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Integer__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 54, 705, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=704, .endLine=705, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 8, &(JvmField*[]){
	JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"value", 5), &I_Class, 18, (void*)offsetof(java_lang_Integer,fjava_lang_Integer_value))
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"serialVersionUID", 16), &J_Class, 26, &fjava_lang_Integer_serialVersionUID)
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"MAX_VALUE", 9), &I_Class, 25, &fjava_lang_Integer_MAX_VALUE)
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"MIN_VALUE", 9), &I_Class, 25, &fjava_lang_Integer_MIN_VALUE)
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"SIZE", 4), &I_Class, 25, &fjava_lang_Integer_SIZE)
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"NTZ_TABLE", 9), &ArrOf_B_Class, 26, &JVMGLOBALS[12])
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Integer_TYPE)
	,JvmMakeField(&java_lang_Integer_Class, JvmMakeString(L"SMALL_VALUES", 12), &ArrOf_java_lang_Integer_Class, 26, &JVMGLOBALS[13])
	});

	cls = &ArrOf_java_lang_Integer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Integer",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Integer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Integer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Integer",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Integer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
