#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_Float.h"
#include "java_lang_StringToReal.h"
#include "java_lang_Double.h"
extern jobject $literal78;
extern jobject $literal79;
extern jobject $literal76;
extern jobject $literal77;
extern jobject $literal74;
extern jobject $literal75;
extern jobject $literal73;
extern jobject $literal80;
extern jobject $literal16;
extern jobject $literal17;


jint fjava_lang_Float_EXPONENT_BIAS;
jint fjava_lang_Float_EXPONENT_BITS;
jint fjava_lang_Float_MANTISSA_BITS;
jint fjava_lang_Float_NON_MANTISSA_BITS;
jint fjava_lang_Float_SIGN_MASK;
jint fjava_lang_Float_EXPONENT_MASK;
jint fjava_lang_Float_MANTISSA_MASK;
jlong fjava_lang_Float_serialVersionUID;
jfloat fjava_lang_Float_MAX_VALUE;
jfloat fjava_lang_Float_MIN_VALUE;
jfloat fjava_lang_Float_NaN;
jfloat fjava_lang_Float_POSITIVE_INFINITY;
jfloat fjava_lang_Float_NEGATIVE_INFINITY;
jfloat fjava_lang_Float_MIN_NORMAL;
jint fjava_lang_Float_MAX_EXPONENT;
jint fjava_lang_Float_MIN_EXPONENT;
jobject fjava_lang_Float_TYPE;
jint fjava_lang_Float_SIZE;
jobject mjava_lang_Float__init___F_V(jobject pthis, jfloat pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jfloat,1);

	JVMMETHOD(java_lang_Float_Class,0);
	JVMLINE(125)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(126)
	((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value=LOCAL(pvalue,jfloat);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float__init___D_V(jobject pthis, jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jdouble,1);

	JVMMETHOD(java_lang_Float_Class,1);
	JVMLINE(134)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(135)
	((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value=((jfloat)(LOCAL(pvalue,jdouble)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float__init___Ljava_lang_String__V(jobject pthis, jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstring,jobject,1);

	JVMMETHOD(java_lang_Float_Class,2);
	JVMLINE(147)
	mjava_lang_Float__init___F_V(LOCAL(pthis,jobject),mjava_lang_Float_parseFloat__Ljava_lang_String__F(LOCAL(pstring,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_compareTo__Ljava_lang_Float__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Float_Class,3);
	JVMLINE(169)
	{ jint $$ret = mjava_lang_Float_compare__FF_I(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value,((java_lang_Float*)(LOCAL(pobject,jobject)))->fjava_lang_Float_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_Float_byteValue___B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,4);
	JVMLINE(174)
	{ jbyte $$ret = ((jbyte)(((jint)(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Float_doubleValue___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,5);
	JVMLINE(179)
	{ jdouble $$ret = ((jdouble)(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Float_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Float_Class,6);
	JVMLINE(197)
	{ jbool $$ret = (JvmInstanceOf(LOCAL(pobject,jobject),&java_lang_Float_Class)) && (mjava_lang_Float_floatToIntBits__F_I(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value) == mjava_lang_Float_floatToIntBits__F_I(((java_lang_Float*)(JvmCheckCast(LOCAL(pobject,jobject),&java_lang_Float_Class)))->fjava_lang_Float_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_floatToIntBits__F_I(jfloat pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jfloat,0);
	DEFLOCAL(lresult,jint,1);

	JVMMETHOD(java_lang_Float_Class,7);
	JVMLINE(209)
	LOCAL(lresult,jint)=0;
	JVMLINE(210)
	union Float {
    jint bits;
    jfloat d;
} Float;
union Float d;
d.d = LOCAL(pvalue,jfloat);
#if defined(__APPLE__)
LOCAL(lresult,jint) = isnan(d.d) ? NaN : d.bits;
#else
LOCAL(lresult,jint) = isnanf(d.d) ? NaN : d.bits;
#endif
;
	JVMLINE(223)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_floatToRawIntBits__F_I(jfloat pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jfloat,0);
	DEFLOCAL(lresult,jint,1);

	JVMMETHOD(java_lang_Float_Class,8);
	JVMLINE(233)
	LOCAL(lresult,jint)=0;
	JVMLINE(234)
	union Float {
    jint bits;
    jfloat d;
} Float;
union Float d;
d.d = LOCAL(pvalue,jfloat);
LOCAL(lresult,jint) = d.bits;
;
	JVMLINE(242)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Float_floatValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,9);
	JVMLINE(252)
	{ jfloat $$ret = ((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,10);
	JVMLINE(257)
	{ jint $$ret = mjava_lang_Float_floatToIntBits__F_I(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Float_intBitsToFloat__I_F(jint pbits) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pbits,jint,0);
	DEFLOCAL(lresult,jfloat,1);

	JVMMETHOD(java_lang_Float_Class,11);
	JVMLINE(266)
	LOCAL(lresult,jfloat)=0.0f;
	JVMLINE(267)
	union Float {
    jint bits;
    jfloat d;
} Float;
union Float d;
d.bits = LOCAL(pbits,jint);
LOCAL(lresult,jfloat) = d.d;
;
	JVMLINE(275)
	{ jfloat $$ret = LOCAL(lresult,jfloat); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_intValue___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,12);
	JVMLINE(280)
	{ jint $$ret = ((jint)(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Float_isInfinite___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,13);
	JVMLINE(290)
	{ jbool $$ret = mjava_lang_Float_isInfinite__F_Z(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Float_isInfinite__F_Z(jfloat pf) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pf,jfloat,0);

	JVMMETHOD(java_lang_Float_Class,14);
	JVMLINE(301)
	{ jbool $$ret = (LOCAL(pf,jfloat) == Infinity) || (LOCAL(pf,jfloat) == -Infinity); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Float_isNaN___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,15);
	JVMLINE(311)
	{ jbool $$ret = mjava_lang_Float_isNaN__F_Z(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Float_isNaN__F_Z(jfloat pf) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pf,jfloat,0);

	JVMMETHOD(java_lang_Float_Class,16);
	JVMLINE(323)
	{ jbool $$ret = LOCAL(pf,jfloat) != LOCAL(pf,jfloat); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Float_longValue___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,17);
	JVMLINE(328)
	{ jlong $$ret = ((jlong)(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Float_parseFloat__Ljava_lang_String__F(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Float_Class,18);
	JVMLINE(342)
	{ jfloat $$ret = mjava_lang_StringToReal_parseFloat__Ljava_lang_String__F(LOCAL(pstring,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_Float_shortValue___S(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,19);
	JVMLINE(347)
	{ jshort $$ret = ((jshort)(((jint)(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Float_Class,20);
	JVMLINE(352)
	{ jobject $$ret = mjava_lang_Float_toString__F_Ljava_lang_String_(((java_lang_Float*)(LOCAL(pthis,jobject)))->fjava_lang_Float_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float_toString__F_Ljava_lang_String_(jfloat pf) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pf,jfloat,0);

	JVMMETHOD(java_lang_Float_Class,21);
	JVMLINE(363)
	{ jobject $$ret = mjava_lang_Double_toString__D_Ljava_lang_String_(((jdouble)(LOCAL(pf,jfloat)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float_valueOf__Ljava_lang_String__Ljava_lang_Float_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Float_Class,22);
	JVMLINE(377)
	{ jobject $$ret = mjava_lang_Float_valueOf__F_Ljava_lang_Float_(mjava_lang_Float_parseFloat__Ljava_lang_String__F(LOCAL(pstring,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_compare__FF_I(jfloat pfloat1, jfloat pfloat2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pfloat1,jfloat,0);
	DEFARG(pfloat2,jfloat,1);
	DEFLOCAL(lf1,jint,2);
	DEFLOCAL(lf2,jint,3);

	JVMMETHOD(java_lang_Float_Class,23);
	JVMLINE(399)
	if(LOCAL(pfloat1,jfloat) > LOCAL(pfloat2,jfloat)){
		JVMLINE(399)
		{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(402)
	if(LOCAL(pfloat2,jfloat) > LOCAL(pfloat1,jfloat)){
		JVMLINE(402)
		{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(405)
	if((LOCAL(pfloat1,jfloat) == LOCAL(pfloat2,jfloat)) && (0.0f != LOCAL(pfloat1,jfloat))){
		JVMLINE(405)
		{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(424)
	if(mjava_lang_Float_isNaN__F_Z(LOCAL(pfloat1,jfloat))){
		JVMLINE(411)
		if(mjava_lang_Float_isNaN__F_Z(LOCAL(pfloat2,jfloat))){
			JVMLINE(411)
			{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(413)
		{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	else{
		JVMLINE(415)
		if(mjava_lang_Float_isNaN__F_Z(LOCAL(pfloat2,jfloat))){
			JVMLINE(415)
			{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(419)
		LOCAL(lf1,jint)=mjava_lang_Float_floatToRawIntBits__F_I(LOCAL(pfloat1,jfloat));
		JVMLINE(420)
		LOCAL(lf2,jint)=mjava_lang_Float_floatToRawIntBits__F_I(LOCAL(pfloat2,jfloat));
		JVMLINE(424)
		{ jint $$ret = (LOCAL(lf1,jint) >> 31) - (LOCAL(lf2,jint) >> 31); thread->framePtr = entryFramePtr; return $$ret; };
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float_valueOf__F_Ljava_lang_Float_(jfloat pf) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pf,jfloat,0);

	JVMMETHOD(java_lang_Float_Class,24);
	JVMLINE(435)
	{ jobject $$ret = mjava_lang_Float__init___F_V(JvmAllocObject(&java_lang_Float_Class),LOCAL(pf,jfloat)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Float_toHexString__F_Ljava_lang_String_(jfloat pf) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pf,jfloat,0);
	DEFLOCAL(lbitValue,jint,1);
	DEFLOCAL(lnegative,jbool,2);
	DEFLOCAL(lexponent,jint,3);
	DEFLOCAL(lsignificand,jint,4);
	DEFLOCAL(lhexString,jobject,5);
	DEFLOCAL(lfractionDigits,jint,6);
	DEFLOCAL(lhexSignificand,jobject,7);
	DEFLOCAL(ldigitDiff,jint,8);

	JVMMETHOD(java_lang_Float_Class,25);
	JVMLINE(450)
	if(LOCAL(pf,jfloat) != LOCAL(pf,jfloat)){
		JVMLINE(450)
		{ jobject $$ret = $literal17; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(453)
	if(LOCAL(pf,jfloat) == Infinity){
		JVMLINE(453)
		{ jobject $$ret = $literal16; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(456)
	if(LOCAL(pf,jfloat) == -Infinity){
		JVMLINE(456)
		{ jobject $$ret = $literal73; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(459)
	LOCAL(lbitValue,jint)=mjava_lang_Float_floatToIntBits__F_I(LOCAL(pf,jfloat));
	JVMLINE(461)
	LOCAL(lnegative,jbool)=(LOCAL(lbitValue,jint) & -2147483648) != 0;
	JVMLINE(463)
	LOCAL(lexponent,jint)=(((u_jint)LOCAL(lbitValue,jint) & 2139095040) >> (23));
	JVMLINE(466)
	LOCAL(lsignificand,jint)=(LOCAL(lbitValue,jint) & 8388607) << 1;
	JVMLINE(469)
	if((LOCAL(lexponent,jint) == 0) && (LOCAL(lsignificand,jint) == 0)){
		JVMLINE(469)
		{ jobject $$ret = LOCAL(lnegative,jbool) ? $literal74 : $literal75; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(472)
	LOCAL(lhexString,jobject)=mjava_lang_StringBuilder__init___I_V(JvmAllocObject(&java_lang_StringBuilder_Class),10);
	JVMLINE(476)
	if(LOCAL(lnegative,jbool)){
		JVMLINE(474)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal76);
	}
	else{
		JVMLINE(476)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal77);
	}
	JVMLINE(524)
	if(LOCAL(lexponent,jint) == 0){
		JVMLINE(480)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal78);
		JVMLINE(482)
		LOCAL(lfractionDigits,jint)=6;
		JVMLINE(487)
		while((LOCAL(lsignificand,jint) != 0) && ((LOCAL(lsignificand,jint) & 15) == 0)){
			JVMLINE(486)
			LOCAL(lsignificand,jint)=(((u_jint)LOCAL(lsignificand,jint)) >> (4));
			JVMLINE(487)
			LOCAL(lfractionDigits,jint)--;
		}
		JVMLINE(490)
		LOCAL(lhexSignificand,jobject)=mjava_lang_Integer_toHexString__I_Ljava_lang_String_(LOCAL(lsignificand,jint));
		JVMLINE(496)
		if((LOCAL(lsignificand,jint) != 0) && (LOCAL(lfractionDigits,jint) > mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject)))){
			JVMLINE(494)
			LOCAL(ldigitDiff,jint)=LOCAL(lfractionDigits,jint) - mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject));
			JVMLINE(496)
			while((LOCAL(ldigitDiff,jint)--) != 0){
				JVMLINE(496)
				mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),48);
			}
		}
		JVMLINE(499)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),LOCAL(lhexSignificand,jobject));
		JVMLINE(500)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal79);
	}
	else{
		JVMLINE(502)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal80);
		JVMLINE(504)
		LOCAL(lfractionDigits,jint)=6;
		JVMLINE(509)
		while((LOCAL(lsignificand,jint) != 0) && ((LOCAL(lsignificand,jint) & 15) == 0)){
			JVMLINE(508)
			LOCAL(lsignificand,jint)=(((u_jint)LOCAL(lsignificand,jint)) >> (4));
			JVMLINE(509)
			LOCAL(lfractionDigits,jint)--;
		}
		JVMLINE(512)
		LOCAL(lhexSignificand,jobject)=mjava_lang_Integer_toHexString__I_Ljava_lang_String_(LOCAL(lsignificand,jint));
		JVMLINE(518)
		if((LOCAL(lsignificand,jint) != 0) && (LOCAL(lfractionDigits,jint) > mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject)))){
			JVMLINE(516)
			LOCAL(ldigitDiff,jint)=LOCAL(lfractionDigits,jint) - mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject));
			JVMLINE(518)
			while((LOCAL(ldigitDiff,jint)--) != 0){
				JVMLINE(518)
				mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),48);
			}
		}
		JVMLINE(521)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),LOCAL(lhexSignificand,jobject));
		JVMLINE(522)
		mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),112);
		JVMLINE(524)
		mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),LOCAL(lexponent,jint) - 127);
	}
	JVMLINE(526)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lhexString,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Float_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_Float_Class,26);
	JVMLINE(29)
	{ jint $$ret = mjava_lang_Float_compareTo__Ljava_lang_Float__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_Float_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Float__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Float_Class,27);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(108)
	fjava_lang_Float_TYPE=mjava_lang_Class_getComponentType___Ljava_lang_Class_(&ArrOf_F_Class);
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Float_Class;
JvmClass ArrOf_java_lang_Float_Class;
JvmClass ArrOf_ArrOf_java_lang_Float_Class;

jbool java_lang_Float_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Float_Class || klass == &java_lang_Comparable_Class || klass == &java_lang_Object_Class || klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_B(jobject,jobject,jobject);
extern jobject invoke_FI(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_FFI(jobject,jobject,jobject);
extern jobject invoke_FO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_DO(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_S(jobject,jobject,jobject);
extern jobject invoke_FZ(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OF(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
extern jobject invoke_IF(jobject,jobject,jobject);
void JvmSetup_java_lang_Float() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Number();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[6] = &mjava_lang_Float_byteValue___B;
	_vTable[8] = &mjava_lang_Float_doubleValue___D;
	_vTable[1] = &mjava_lang_Float_equals__Ljava_lang_Object__Z;
	_vTable[5] = &mjava_lang_Float_floatValue___F;
	_vTable[2] = &mjava_lang_Float_hashCode___I;
	_vTable[7] = &mjava_lang_Float_intValue___I;
	_vTable[4] = &mjava_lang_Float_longValue___J;
	_vTable[3] = &mjava_lang_Float_shortValue___S;
	_vTable[0] = &mjava_lang_Float_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(2 * sizeof(void*));
	_iTable[1] = (void*)&mjava_lang_Float_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Float_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Float);
	cls->name = JvmMakeString(L"java.lang.Float",15);
	cls->superClass = &java_lang_Number_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Float_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Float.java",10);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 28, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"<init>", 6), &java_lang_Float_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float__init___F_V, &invoke_FO 
#ifdef JVM_DEBUG
 , 125, 126, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=126, .endLine=126, .type=&F_Class},{.name=JvmMakeString(L"this",4), .startLine=125, .endLine=126, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"<init>", 6), &java_lang_Float_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Float__init___D_V, &invoke_DO 
#ifdef JVM_DEBUG
 , 134, 135, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=135, .endLine=135, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=134, .endLine=135, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"<init>", 6), &java_lang_Float_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Float__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 147, 147, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=147, .endLine=147, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=147, .endLine=147, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Float_Class}), &mjava_lang_Float_compareTo__Ljava_lang_Float__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 169, 169, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=169, .endLine=169, .type=&java_lang_Float_Class},{.name=JvmMakeString(L"this",4), .startLine=169, .endLine=169, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"byteValue", 9), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_byteValue___B, &invoke_B 
#ifdef JVM_DEBUG
 , 174, 174, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=174, .endLine=174, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"doubleValue", 11), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_doubleValue___D, &invoke_D 
#ifdef JVM_DEBUG
 , 179, 179, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=179, .endLine=179, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Float_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 197, 197, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=197, .endLine=197, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=197, .endLine=197, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"floatToIntBits", 14), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_floatToIntBits__F_I, &invoke_FI 
#ifdef JVM_DEBUG
 , 209, 223, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=210, .endLine=223, .type=&F_Class},{.name=JvmMakeString(L"result",6), .startLine=209, .endLine=223, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"floatToRawIntBits", 17), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_floatToRawIntBits__F_I, &invoke_FI 
#ifdef JVM_DEBUG
 , 233, 242, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=234, .endLine=242, .type=&F_Class},{.name=JvmMakeString(L"result",6), .startLine=233, .endLine=242, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"floatValue", 10), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_floatValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 252, 252, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=252, .endLine=252, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 257, 257, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=257, .endLine=257, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"intBitsToFloat", 14), &F_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Float_intBitsToFloat__I_F, &invoke_IF 
#ifdef JVM_DEBUG
 , 266, 275, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"bits",4), .startLine=267, .endLine=275, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=266, .endLine=275, .type=&F_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"intValue", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_intValue___I, &invoke_I 
#ifdef JVM_DEBUG
 , 280, 280, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=280, .endLine=280, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"isInfinite", 10), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_isInfinite___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 290, 290, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=290, .endLine=290, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"isInfinite", 10), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_isInfinite__F_Z, &invoke_FZ 
#ifdef JVM_DEBUG
 , 301, 301, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"f",1), .startLine=301, .endLine=301, .type=&F_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"isNaN", 5), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_isNaN___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 311, 311, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=311, .endLine=311, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"isNaN", 5), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_isNaN__F_Z, &invoke_FZ 
#ifdef JVM_DEBUG
 , 323, 323, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"f",1), .startLine=323, .endLine=323, .type=&F_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"longValue", 9), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_longValue___J, &invoke_J 
#ifdef JVM_DEBUG
 , 328, 328, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=328, .endLine=328, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"parseFloat", 10), &F_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Float_parseFloat__Ljava_lang_String__F, &invoke_OF 
#ifdef JVM_DEBUG
 , 342, 342, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=342, .endLine=342, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"shortValue", 10), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_shortValue___S, &invoke_S 
#ifdef JVM_DEBUG
 , 347, 347, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=347, .endLine=347, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 352, 352, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=352, .endLine=352, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_toString__F_Ljava_lang_String_, &invoke_FO 
#ifdef JVM_DEBUG
 , 363, 363, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"f",1), .startLine=363, .endLine=363, .type=&F_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"valueOf", 7), &java_lang_Float_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Float_valueOf__Ljava_lang_String__Ljava_lang_Float_, &invoke_OO 
#ifdef JVM_DEBUG
 , 377, 377, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=377, .endLine=377, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"compare", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&F_Class,&F_Class}), &mjava_lang_Float_compare__FF_I, &invoke_FFI 
#ifdef JVM_DEBUG
 , 399, 424, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"float1",6), .startLine=399, .endLine=424, .type=&F_Class},{.name=JvmMakeString(L"float2",6), .startLine=399, .endLine=424, .type=&F_Class},{.name=JvmMakeString(L"f1",2), .startLine=419, .endLine=424, .type=&I_Class},{.name=JvmMakeString(L"f2",2), .startLine=420, .endLine=424, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"valueOf", 7), &java_lang_Float_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_valueOf__F_Ljava_lang_Float_, &invoke_FO 
#ifdef JVM_DEBUG
 , 435, 435, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"f",1), .startLine=435, .endLine=435, .type=&F_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"toHexString", 11), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&F_Class}), &mjava_lang_Float_toHexString__F_Ljava_lang_String_, &invoke_FO 
#ifdef JVM_DEBUG
 , 450, 526, 1, 8, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"f",1), .startLine=450, .endLine=526, .type=&F_Class},{.name=JvmMakeString(L"bitValue",8), .startLine=459, .endLine=526, .type=&I_Class},{.name=JvmMakeString(L"negative",8), .startLine=461, .endLine=526, .type=&Z_Class},{.name=JvmMakeString(L"exponent",8), .startLine=463, .endLine=526, .type=&I_Class},{.name=JvmMakeString(L"significand",11), .startLine=466, .endLine=526, .type=&I_Class},{.name=JvmMakeString(L"hexString",9), .startLine=472, .endLine=526, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"fractionDigits",14), .startLine=482, .endLine=526, .type=&I_Class},{.name=JvmMakeString(L"hexSignificand",14), .startLine=490, .endLine=526, .type=&java_lang_String_Class},{.name=JvmMakeString(L"digitDiff",9), .startLine=494, .endLine=526, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Float_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 29, 29, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=29, .endLine=29, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&java_lang_Float_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Float_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Float__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 108, 108, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 19, &(JvmField*[]){
	JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"value", 5), &F_Class, 18, (void*)offsetof(java_lang_Float,fjava_lang_Float_value))
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"EXPONENT_BIAS", 13), &I_Class, 24, &fjava_lang_Float_EXPONENT_BIAS)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"EXPONENT_BITS", 13), &I_Class, 24, &fjava_lang_Float_EXPONENT_BITS)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MANTISSA_BITS", 13), &I_Class, 24, &fjava_lang_Float_MANTISSA_BITS)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"NON_MANTISSA_BITS", 17), &I_Class, 24, &fjava_lang_Float_NON_MANTISSA_BITS)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"SIGN_MASK", 9), &I_Class, 24, &fjava_lang_Float_SIGN_MASK)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"EXPONENT_MASK", 13), &I_Class, 24, &fjava_lang_Float_EXPONENT_MASK)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MANTISSA_MASK", 13), &I_Class, 24, &fjava_lang_Float_MANTISSA_MASK)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"serialVersionUID", 16), &J_Class, 26, &fjava_lang_Float_serialVersionUID)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MAX_VALUE", 9), &F_Class, 25, &fjava_lang_Float_MAX_VALUE)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MIN_VALUE", 9), &F_Class, 25, &fjava_lang_Float_MIN_VALUE)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"NaN", 3), &F_Class, 25, &fjava_lang_Float_NaN)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"POSITIVE_INFINITY", 17), &F_Class, 25, &fjava_lang_Float_POSITIVE_INFINITY)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"NEGATIVE_INFINITY", 17), &F_Class, 25, &fjava_lang_Float_NEGATIVE_INFINITY)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MIN_NORMAL", 10), &F_Class, 25, &fjava_lang_Float_MIN_NORMAL)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MAX_EXPONENT", 12), &I_Class, 25, &fjava_lang_Float_MAX_EXPONENT)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"MIN_EXPONENT", 12), &I_Class, 25, &fjava_lang_Float_MIN_EXPONENT)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Float_TYPE)
	,JvmMakeField(&java_lang_Float_Class, JvmMakeString(L"SIZE", 4), &I_Class, 25, &fjava_lang_Float_SIZE)
	});

	cls = &ArrOf_java_lang_Float_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Float",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Float_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Float_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Float",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Float_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
