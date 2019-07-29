#include "java_lang_StringBuilder.h"
#include "cava_c_CharPtr.h"
#include "java_lang_Long.h"
#include "java_lang_StringToReal.h"
#include "java_lang_Double.h"
extern jobject $literal78;
extern jobject $literal76;
extern jobject $literal77;
extern jobject $literal74;
extern jobject $literal75;
extern jobject $literal73;
extern jobject $literal82;
extern jobject $literal80;
extern jobject $literal16;
extern jobject $literal17;


jint fjava_lang_Double_EXPONENT_BIAS;
jint fjava_lang_Double_EXPONENT_BITS;
jint fjava_lang_Double_MANTISSA_BITS;
jint fjava_lang_Double_NON_MANTISSA_BITS;
jlong fjava_lang_Double_SIGN_MASK;
jlong fjava_lang_Double_EXPONENT_MASK;
jlong fjava_lang_Double_MANTISSA_MASK;
jlong fjava_lang_Double_serialVersionUID;
jdouble fjava_lang_Double_MAX_VALUE;
jdouble fjava_lang_Double_MIN_VALUE;
jdouble fjava_lang_Double_NaN;
jdouble fjava_lang_Double_POSITIVE_INFINITY;
jdouble fjava_lang_Double_NEGATIVE_INFINITY;
jdouble fjava_lang_Double_MIN_NORMAL;
jint fjava_lang_Double_MAX_EXPONENT;
jint fjava_lang_Double_MIN_EXPONENT;
jobject fjava_lang_Double_TYPE;
jint fjava_lang_Double_SIZE;
jobject mjava_lang_Double__init___D_V(jobject pthis, jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jdouble,1);

	JVMMETHOD(java_lang_Double_Class,0);
	JVMLINE(126)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(127)
	((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value=LOCAL(pvalue,jdouble);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double__init___Ljava_lang_String__V(jobject pthis, jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstring,jobject,1);

	JVMMETHOD(java_lang_Double_Class,1);
	JVMLINE(139)
	mjava_lang_Double__init___D_V(LOCAL(pthis,jobject),mjava_lang_Double_parseDouble__Ljava_lang_String__D(LOCAL(pstring,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Double_compareTo__Ljava_lang_Double__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Double_Class,2);
	JVMLINE(162)
	{ jint $$ret = mjava_lang_Double_compare__DD_I(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value,((java_lang_Double*)(LOCAL(pobject,jobject)))->fjava_lang_Double_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_Double_byteValue___B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,3);
	JVMLINE(167)
	{ jbyte $$ret = ((jbyte)(((jint)(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Double_doubleToLongBits__D_J(jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jdouble,0);
	DEFLOCAL(lresult,jlong,1);

	JVMMETHOD(java_lang_Double_Class,4);
	JVMLINE(178)
	LOCAL(lresult,jlong)=0;
	JVMLINE(179)
	union Double {
    jlong bits;
    jdouble d;
} Double;
union Double d;
d.d = LOCAL(pvalue,jdouble);
LOCAL(lresult,jlong) = isnan(d.d) ? 0x7ff8000000000000ULL : d.bits;
;
	JVMLINE(187)
	{ jlong $$ret = LOCAL(lresult,jlong); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Double_doubleToRawLongBits__D_J(jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jdouble,0);
	DEFLOCAL(lresult,jlong,1);

	JVMMETHOD(java_lang_Double_Class,5);
	JVMLINE(197)
	LOCAL(lresult,jlong)=0;
	JVMLINE(198)
	union Double {
    jlong bits;
    jdouble d;
} Double;
union Double d;
d.d = LOCAL(pvalue,jdouble);
LOCAL(lresult,jlong) = d.bits;
;
	JVMLINE(206)
	{ jlong $$ret = LOCAL(lresult,jlong); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Double_doubleValue___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,6);
	JVMLINE(216)
	{ jdouble $$ret = ((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Double_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Double_Class,7);
	JVMLINE(234)
	{ jbool $$ret = (JvmInstanceOf(LOCAL(pobject,jobject),&java_lang_Double_Class)) && (mjava_lang_Double_doubleToLongBits__D_J(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value) == mjava_lang_Double_doubleToLongBits__D_J(((java_lang_Double*)(JvmCheckCast(LOCAL(pobject,jobject),&java_lang_Double_Class)))->fjava_lang_Double_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Double_floatValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,8);
	JVMLINE(240)
	{ jfloat $$ret = ((jfloat)(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Double_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lv,jlong,1);

	JVMMETHOD(java_lang_Double_Class,9);
	JVMLINE(245)
	LOCAL(lv,jlong)=mjava_lang_Double_doubleToLongBits__D_J(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value);
	JVMLINE(246)
	{ jint $$ret = ((jint)(LOCAL(lv,jlong) ^ ((((u_jlong)LOCAL(lv,jlong)) >> (32))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Double_intValue___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,10);
	JVMLINE(251)
	{ jint $$ret = ((jint)(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Double_isInfinite___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,11);
	JVMLINE(261)
	{ jbool $$ret = mjava_lang_Double_isInfinite__D_Z(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Double_isInfinite__D_Z(jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pd,jdouble,0);

	JVMMETHOD(java_lang_Double_Class,12);
	JVMLINE(272)
	{ jbool $$ret = (LOCAL(pd,jdouble) == Infinity) || (LOCAL(pd,jdouble) == -Infinity); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Double_isNaN___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,13);
	JVMLINE(282)
	{ jbool $$ret = mjava_lang_Double_isNaN__D_Z(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Double_isNaN__D_Z(jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pd,jdouble,0);

	JVMMETHOD(java_lang_Double_Class,14);
	JVMLINE(294)
	{ jbool $$ret = LOCAL(pd,jdouble) != LOCAL(pd,jdouble); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Double_longBitsToDouble__J_D(jlong pbits) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pbits,jlong,0);
	DEFLOCAL(lresult,jdouble,1);

	JVMMETHOD(java_lang_Double_Class,15);
	JVMLINE(303)
	LOCAL(lresult,jdouble)=0.0;
	JVMLINE(304)
	union Double {
    jlong bits;
    jdouble d;
} Double;
union Double d;
d.bits = LOCAL(pbits,jlong);
LOCAL(lresult,jdouble) = d.d;
;
	JVMLINE(312)
	{ jdouble $$ret = LOCAL(lresult,jdouble); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Double_longValue___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,16);
	JVMLINE(317)
	{ jlong $$ret = ((jlong)(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Double_parseDouble__Ljava_lang_String__D(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Double_Class,17);
	JVMLINE(329)
	{ jdouble $$ret = mjava_lang_StringToReal_parseDouble__Ljava_lang_String__D(LOCAL(pstring,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_Double_shortValue___S(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,18);
	JVMLINE(334)
	{ jshort $$ret = ((jshort)(((jint)(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Double_Class,19);
	JVMLINE(339)
	{ jobject $$ret = mjava_lang_Double_toString__D_Ljava_lang_String_(((java_lang_Double*)(LOCAL(pthis,jobject)))->fjava_lang_Double_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double_toString__D_Ljava_lang_String_(jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pd,jdouble,0);
	DEFLOCAL(lbuffer,jobject,1);
	DEFLOCAL(llength,jint,2);

	JVMMETHOD(java_lang_Double_Class,20);
	JVMLINE(352)
	LOCAL(lbuffer,jobject)=mcava_c_CharPtr_from___B_Lcava_c_CharPtr_(JVMGLOBALS[14]);
	JVMLINE(353)
	LOCAL(llength,jint)=snprintf(LOCAL(lbuffer,jobject),20,"%g",LOCAL(pd,jdouble));;
	JVMLINE(354)
	{ jobject $$ret = mjava_lang_String__init____BII_V(JvmAllocObject(&java_lang_String_Class),JVMGLOBALS[14],0,LOCAL(llength,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double_valueOf__Ljava_lang_String__Ljava_lang_Double_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(java_lang_Double_Class,21);
	JVMLINE(368)
	{ jobject $$ret = mjava_lang_Double_valueOf__D_Ljava_lang_Double_(mjava_lang_Double_parseDouble__Ljava_lang_String__D(LOCAL(pstring,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Double_compare__DD_I(jdouble pdouble1, jdouble pdouble2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pdouble1,jdouble,0);
	DEFARG(pdouble2,jdouble,1);
	DEFLOCAL(ld1,jlong,2);
	DEFLOCAL(ld2,jlong,3);

	JVMMETHOD(java_lang_Double_Class,22);
	JVMLINE(389)
	if(LOCAL(pdouble1,jdouble) > LOCAL(pdouble2,jdouble)){
		JVMLINE(389)
		{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(392)
	if(LOCAL(pdouble2,jdouble) > LOCAL(pdouble1,jdouble)){
		JVMLINE(392)
		{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(395)
	if((LOCAL(pdouble1,jdouble) == LOCAL(pdouble2,jdouble)) && (0.0 != LOCAL(pdouble1,jdouble))){
		JVMLINE(395)
		{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(413)
	if(mjava_lang_Double_isNaN__D_Z(LOCAL(pdouble1,jdouble))){
		JVMLINE(401)
		if(mjava_lang_Double_isNaN__D_Z(LOCAL(pdouble2,jdouble))){
			JVMLINE(401)
			{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(403)
		{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	else{
		JVMLINE(405)
		if(mjava_lang_Double_isNaN__D_Z(LOCAL(pdouble2,jdouble))){
			JVMLINE(405)
			{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(409)
		LOCAL(ld1,jlong)=mjava_lang_Double_doubleToRawLongBits__D_J(LOCAL(pdouble1,jdouble));
		JVMLINE(410)
		LOCAL(ld2,jlong)=mjava_lang_Double_doubleToRawLongBits__D_J(LOCAL(pdouble2,jdouble));
		JVMLINE(413)
		{ jint $$ret = ((jint)((LOCAL(ld1,jlong) >> 63) - (LOCAL(ld2,jlong) >> 63))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double_valueOf__D_Ljava_lang_Double_(jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pd,jdouble,0);

	JVMMETHOD(java_lang_Double_Class,23);
	JVMLINE(424)
	{ jobject $$ret = mjava_lang_Double__init___D_V(JvmAllocObject(&java_lang_Double_Class),LOCAL(pd,jdouble)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Double_toHexString__D_Ljava_lang_String_(jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pd,jdouble,0);
	DEFLOCAL(lbitValue,jlong,1);
	DEFLOCAL(lnegative,jbool,2);
	DEFLOCAL(lexponent,jlong,3);
	DEFLOCAL(lsignificand,jlong,4);
	DEFLOCAL(lhexString,jobject,5);
	DEFLOCAL(lfractionDigits,jint,6);
	DEFLOCAL(lhexSignificand,jobject,7);
	DEFLOCAL(ldigitDiff,jint,8);

	JVMMETHOD(java_lang_Double_Class,24);
	JVMLINE(439)
	if(LOCAL(pd,jdouble) != LOCAL(pd,jdouble)){
		JVMLINE(439)
		{ jobject $$ret = $literal17; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(442)
	if(LOCAL(pd,jdouble) == Infinity){
		JVMLINE(442)
		{ jobject $$ret = $literal16; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(445)
	if(LOCAL(pd,jdouble) == -Infinity){
		JVMLINE(445)
		{ jobject $$ret = $literal73; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(448)
	LOCAL(lbitValue,jlong)=mjava_lang_Double_doubleToLongBits__D_J(LOCAL(pd,jdouble));
	JVMLINE(450)
	LOCAL(lnegative,jbool)=(LOCAL(lbitValue,jlong) & -9223372036854775808) != 0;
	JVMLINE(452)
	LOCAL(lexponent,jlong)=(((u_jlong)LOCAL(lbitValue,jlong) & 9218868437227405312) >> (52));
	JVMLINE(454)
	LOCAL(lsignificand,jlong)=LOCAL(lbitValue,jlong) & 4503599627370495;
	JVMLINE(457)
	if((LOCAL(lexponent,jlong) == 0) && (LOCAL(lsignificand,jlong) == 0)){
		JVMLINE(457)
		{ jobject $$ret = LOCAL(lnegative,jbool) ? $literal74 : $literal75; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(460)
	LOCAL(lhexString,jobject)=mjava_lang_StringBuilder__init___I_V(JvmAllocObject(&java_lang_StringBuilder_Class),10);
	JVMLINE(464)
	if(LOCAL(lnegative,jbool)){
		JVMLINE(462)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal76);
	}
	else{
		JVMLINE(464)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal77);
	}
	JVMLINE(513)
	if(LOCAL(lexponent,jlong) == 0){
		JVMLINE(468)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal78);
		JVMLINE(470)
		LOCAL(lfractionDigits,jint)=13;
		JVMLINE(475)
		while((LOCAL(lsignificand,jlong) != 0) && ((LOCAL(lsignificand,jlong) & 15) == 0)){
			JVMLINE(474)
			LOCAL(lsignificand,jlong)=(((u_jlong)LOCAL(lsignificand,jlong)) >> (4));
			JVMLINE(475)
			LOCAL(lfractionDigits,jint)--;
		}
		JVMLINE(478)
		LOCAL(lhexSignificand,jobject)=mjava_lang_Long_toHexString__J_Ljava_lang_String_(LOCAL(lsignificand,jlong));
		JVMLINE(484)
		if((LOCAL(lsignificand,jlong) != 0) && (LOCAL(lfractionDigits,jint) > mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject)))){
			JVMLINE(482)
			LOCAL(ldigitDiff,jint)=LOCAL(lfractionDigits,jint) - mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject));
			JVMLINE(484)
			while((LOCAL(ldigitDiff,jint)--) != 0){
				JVMLINE(484)
				mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),48);
			}
		}
		JVMLINE(487)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),LOCAL(lhexSignificand,jobject));
		JVMLINE(488)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal82);
	}
	else{
		JVMLINE(490)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),$literal80);
		JVMLINE(492)
		LOCAL(lfractionDigits,jint)=13;
		JVMLINE(497)
		while((LOCAL(lsignificand,jlong) != 0) && ((LOCAL(lsignificand,jlong) & 15) == 0)){
			JVMLINE(496)
			LOCAL(lsignificand,jlong)=(((u_jlong)LOCAL(lsignificand,jlong)) >> (4));
			JVMLINE(497)
			LOCAL(lfractionDigits,jint)--;
		}
		JVMLINE(500)
		LOCAL(lhexSignificand,jobject)=mjava_lang_Long_toHexString__J_Ljava_lang_String_(LOCAL(lsignificand,jlong));
		JVMLINE(506)
		if((LOCAL(lsignificand,jlong) != 0) && (LOCAL(lfractionDigits,jint) > mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject)))){
			JVMLINE(504)
			LOCAL(ldigitDiff,jint)=LOCAL(lfractionDigits,jint) - mjava_lang_String_length___I(LOCAL(lhexSignificand,jobject));
			JVMLINE(506)
			while((LOCAL(ldigitDiff,jint)--) != 0){
				JVMLINE(506)
				mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),48);
			}
		}
		JVMLINE(510)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),LOCAL(lhexSignificand,jobject));
		JVMLINE(511)
		mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),112);
		JVMLINE(513)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lhexString,jobject),mjava_lang_Long_toString__J_Ljava_lang_String_(LOCAL(lexponent,jlong) - 1023));
	}
	JVMLINE(515)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lhexString,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Double_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_Double_Class,25);
	JVMLINE(29)
	{ jint $$ret = mjava_lang_Double_compareTo__Ljava_lang_Double__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_Double_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Double__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Double_Class,26);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(108)
	fjava_lang_Double_TYPE=mjava_lang_Class_getComponentType___Ljava_lang_Class_(&ArrOf_D_Class);
	JVMLINE(349)
	JVMGLOBALS[14]=JvmAllocPrimArray1(&ArrOf_B_Class,21);
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Double_Class;
JvmClass ArrOf_java_lang_Double_Class;
JvmClass ArrOf_ArrOf_java_lang_Double_Class;

jbool java_lang_Double_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Double_Class || klass == &java_lang_Comparable_Class || klass == &java_lang_Object_Class || klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_B(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_DJ(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_DDI(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_DO(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_S(jobject,jobject,jobject);
extern jobject invoke_OD(jobject,jobject,jobject);
extern jobject invoke_DZ(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
extern jobject invoke_JD(jobject,jobject,jobject);
void JvmSetup_java_lang_Double() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Number();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[6] = &mjava_lang_Double_byteValue___B;
	_vTable[8] = &mjava_lang_Double_doubleValue___D;
	_vTable[1] = &mjava_lang_Double_equals__Ljava_lang_Object__Z;
	_vTable[5] = &mjava_lang_Double_floatValue___F;
	_vTable[2] = &mjava_lang_Double_hashCode___I;
	_vTable[7] = &mjava_lang_Double_intValue___I;
	_vTable[4] = &mjava_lang_Double_longValue___J;
	_vTable[3] = &mjava_lang_Double_shortValue___S;
	_vTable[0] = &mjava_lang_Double_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(2 * sizeof(void*));
	_iTable[1] = (void*)&mjava_lang_Double_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Double_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Double);
	cls->name = JvmMakeString(L"java.lang.Double",16);
	cls->superClass = &java_lang_Number_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Double_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Double.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 27, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"<init>", 6), &java_lang_Double_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double__init___D_V, &invoke_DO 
#ifdef JVM_DEBUG
 , 126, 127, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=127, .endLine=127, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=126, .endLine=127, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"<init>", 6), &java_lang_Double_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Double__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 139, 139, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=139, .endLine=139, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=139, .endLine=139, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Double_Class}), &mjava_lang_Double_compareTo__Ljava_lang_Double__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 162, 162, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=162, .endLine=162, .type=&java_lang_Double_Class},{.name=JvmMakeString(L"this",4), .startLine=162, .endLine=162, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"byteValue", 9), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_byteValue___B, &invoke_B 
#ifdef JVM_DEBUG
 , 167, 167, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=167, .endLine=167, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"doubleToLongBits", 16), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_doubleToLongBits__D_J, &invoke_DJ 
#ifdef JVM_DEBUG
 , 178, 187, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=179, .endLine=187, .type=&D_Class},{.name=JvmMakeString(L"result",6), .startLine=178, .endLine=187, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"doubleToRawLongBits", 19), &J_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_doubleToRawLongBits__D_J, &invoke_DJ 
#ifdef JVM_DEBUG
 , 197, 206, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=198, .endLine=206, .type=&D_Class},{.name=JvmMakeString(L"result",6), .startLine=197, .endLine=206, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"doubleValue", 11), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_doubleValue___D, &invoke_D 
#ifdef JVM_DEBUG
 , 216, 216, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=216, .endLine=216, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Double_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 234, 234, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=234, .endLine=234, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=234, .endLine=234, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"floatValue", 10), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_floatValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 240, 240, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=240, .endLine=240, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 245, 246, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=245, .endLine=246, .type=&java_lang_Double_Class},{.name=JvmMakeString(L"v",1), .startLine=245, .endLine=246, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"intValue", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_intValue___I, &invoke_I 
#ifdef JVM_DEBUG
 , 251, 251, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=251, .endLine=251, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"isInfinite", 10), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_isInfinite___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 261, 261, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=261, .endLine=261, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"isInfinite", 10), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_isInfinite__D_Z, &invoke_DZ 
#ifdef JVM_DEBUG
 , 272, 272, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=272, .endLine=272, .type=&D_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"isNaN", 5), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_isNaN___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 282, 282, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=282, .endLine=282, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"isNaN", 5), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_isNaN__D_Z, &invoke_DZ 
#ifdef JVM_DEBUG
 , 294, 294, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=294, .endLine=294, .type=&D_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"longBitsToDouble", 16), &D_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Double_longBitsToDouble__J_D, &invoke_JD 
#ifdef JVM_DEBUG
 , 303, 312, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"bits",4), .startLine=304, .endLine=312, .type=&J_Class},{.name=JvmMakeString(L"result",6), .startLine=303, .endLine=312, .type=&D_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"longValue", 9), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_longValue___J, &invoke_J 
#ifdef JVM_DEBUG
 , 317, 317, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=317, .endLine=317, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"parseDouble", 11), &D_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Double_parseDouble__Ljava_lang_String__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 329, 329, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=329, .endLine=329, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"shortValue", 10), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_shortValue___S, &invoke_S 
#ifdef JVM_DEBUG
 , 334, 334, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=334, .endLine=334, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 339, 339, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=339, .endLine=339, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_toString__D_Ljava_lang_String_, &invoke_DO 
#ifdef JVM_DEBUG
 , 352, 354, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=353, .endLine=354, .type=&D_Class},{.name=JvmMakeString(L"buffer",6), .startLine=352, .endLine=354, .type=&cava_c_CharPtr_Class},{.name=JvmMakeString(L"length",6), .startLine=353, .endLine=354, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"valueOf", 7), &java_lang_Double_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Double_valueOf__Ljava_lang_String__Ljava_lang_Double_, &invoke_OO 
#ifdef JVM_DEBUG
 , 368, 368, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=368, .endLine=368, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"compare", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&D_Class,&D_Class}), &mjava_lang_Double_compare__DD_I, &invoke_DDI 
#ifdef JVM_DEBUG
 , 389, 413, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"double1",7), .startLine=389, .endLine=413, .type=&D_Class},{.name=JvmMakeString(L"double2",7), .startLine=389, .endLine=413, .type=&D_Class},{.name=JvmMakeString(L"d1",2), .startLine=409, .endLine=413, .type=&J_Class},{.name=JvmMakeString(L"d2",2), .startLine=410, .endLine=413, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"valueOf", 7), &java_lang_Double_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_valueOf__D_Ljava_lang_Double_, &invoke_DO 
#ifdef JVM_DEBUG
 , 424, 424, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=424, .endLine=424, .type=&D_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"toHexString", 11), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_Double_toHexString__D_Ljava_lang_String_, &invoke_DO 
#ifdef JVM_DEBUG
 , 439, 515, 1, 8, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=439, .endLine=515, .type=&D_Class},{.name=JvmMakeString(L"bitValue",8), .startLine=448, .endLine=515, .type=&J_Class},{.name=JvmMakeString(L"negative",8), .startLine=450, .endLine=515, .type=&Z_Class},{.name=JvmMakeString(L"exponent",8), .startLine=452, .endLine=515, .type=&J_Class},{.name=JvmMakeString(L"significand",11), .startLine=454, .endLine=515, .type=&J_Class},{.name=JvmMakeString(L"hexString",9), .startLine=460, .endLine=515, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"fractionDigits",14), .startLine=470, .endLine=515, .type=&I_Class},{.name=JvmMakeString(L"hexSignificand",14), .startLine=478, .endLine=515, .type=&java_lang_String_Class},{.name=JvmMakeString(L"digitDiff",9), .startLine=482, .endLine=515, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Double_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 29, 29, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=29, .endLine=29, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&java_lang_Double_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Double_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Double__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 108, 349, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 20, &(JvmField*[]){
	JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"value", 5), &D_Class, 18, (void*)offsetof(java_lang_Double,fjava_lang_Double_value))
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"EXPONENT_BIAS", 13), &I_Class, 24, &fjava_lang_Double_EXPONENT_BIAS)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"EXPONENT_BITS", 13), &I_Class, 24, &fjava_lang_Double_EXPONENT_BITS)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MANTISSA_BITS", 13), &I_Class, 24, &fjava_lang_Double_MANTISSA_BITS)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"NON_MANTISSA_BITS", 17), &I_Class, 24, &fjava_lang_Double_NON_MANTISSA_BITS)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"SIGN_MASK", 9), &J_Class, 24, &fjava_lang_Double_SIGN_MASK)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"EXPONENT_MASK", 13), &J_Class, 24, &fjava_lang_Double_EXPONENT_MASK)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MANTISSA_MASK", 13), &J_Class, 24, &fjava_lang_Double_MANTISSA_MASK)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"serialVersionUID", 16), &J_Class, 26, &fjava_lang_Double_serialVersionUID)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MAX_VALUE", 9), &D_Class, 25, &fjava_lang_Double_MAX_VALUE)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MIN_VALUE", 9), &D_Class, 25, &fjava_lang_Double_MIN_VALUE)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"NaN", 3), &D_Class, 25, &fjava_lang_Double_NaN)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"POSITIVE_INFINITY", 17), &D_Class, 25, &fjava_lang_Double_POSITIVE_INFINITY)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"NEGATIVE_INFINITY", 17), &D_Class, 25, &fjava_lang_Double_NEGATIVE_INFINITY)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MIN_NORMAL", 10), &D_Class, 25, &fjava_lang_Double_MIN_NORMAL)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MAX_EXPONENT", 12), &I_Class, 25, &fjava_lang_Double_MAX_EXPONENT)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"MIN_EXPONENT", 12), &I_Class, 25, &fjava_lang_Double_MIN_EXPONENT)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Double_TYPE)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"SIZE", 4), &I_Class, 25, &fjava_lang_Double_SIZE)
	,JvmMakeField(&java_lang_Double_Class, JvmMakeString(L"toStringBuffer", 14), &ArrOf_B_Class, 24, &JVMGLOBALS[14])
	});

	cls = &ArrOf_java_lang_Double_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Double",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Double_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Double_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Double",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Double_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
