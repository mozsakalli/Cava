#include "java_lang_Character.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_lang_NullPointerException.h"
#include "java_lang_IllegalArgumentException.h"


jobject fjava_lang_Character_TYPE;
jint fjava_lang_Character_MAX_RADIX;
jchar fjava_lang_Character_MAX_VALUE;
jint fjava_lang_Character_MIN_RADIX;
jchar fjava_lang_Character_MIN_VALUE;
jchar fjava_lang_Character_MIN_HIGH_SURROGATE;
jchar fjava_lang_Character_MAX_HIGH_SURROGATE;
jchar fjava_lang_Character_MIN_LOW_SURROGATE;
jchar fjava_lang_Character_MAX_LOW_SURROGATE;
jchar fjava_lang_Character_MIN_SURROGATE;
jchar fjava_lang_Character_MAX_SURROGATE;
jint fjava_lang_Character_MIN_SUPPLEMENTARY_CODE_POINT;
jint fjava_lang_Character_MIN_CODE_POINT;
jint fjava_lang_Character_MAX_CODE_POINT;
jint fjava_lang_Character_SIZE;
jobject mjava_lang_Character__init___C_V(jobject pthis, jchar pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jchar,1);

	JVMMETHOD(java_lang_Character_Class,0);
	JVMLINE(52)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(53)
	((java_lang_Character*)(LOCAL(pthis,jobject)))->fjava_lang_Character_value=LOCAL(pvalue,jchar);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_Character_charValue___C(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Character_Class,1);
	JVMLINE(60)
	{ jchar $$ret = ((java_lang_Character*)(LOCAL(pthis,jobject)))->fjava_lang_Character_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_digit__CI_I(jchar pch, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);
	DEFARG(pradix,jint,1);

	JVMMETHOD(java_lang_Character_Class,2);
	JVMLINE(67)
	{ jint $$ret = mjava_lang_Character_digit__II_I(LOCAL(pch,jchar),LOCAL(pradix,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_digit__II_I(jint pcodePoint, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);
	DEFARG(pradix,jint,1);
	DEFLOCAL(lresult,jint,2);

	JVMMETHOD(java_lang_Character_Class,3);
	JVMLINE(85)
	if((LOCAL(pradix,jint) < 2) || (LOCAL(pradix,jint) > 36)){
		JVMLINE(85)
		{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(97)
	if(LOCAL(pcodePoint,jint) < 128){
		JVMLINE(89)
		LOCAL(lresult,jint)=-1;
		JVMLINE(95)
		if((48 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 57)){
			JVMLINE(91)
			LOCAL(lresult,jint)=LOCAL(pcodePoint,jint) - 48;
		}
		else{
			JVMLINE(95)
			if((97 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 122)){
				JVMLINE(93)
				LOCAL(lresult,jint)=10 + (LOCAL(pcodePoint,jint) - 97);
			}
			else{
				JVMLINE(95)
				if((65 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 90)){
					JVMLINE(95)
					LOCAL(lresult,jint)=10 + (LOCAL(pcodePoint,jint) - 65);
				}
			}
		}
		JVMLINE(97)
		{ jint $$ret = LOCAL(lresult,jint) < LOCAL(pradix,jint) ? LOCAL(lresult,jint) : -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(100)
	{ jint $$ret = LOCAL(pcodePoint,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_Character_Class,4);
	JVMLINE(108)
	{ jbool $$ret = ((LOCAL(pobj,jobject) != jnull) && (mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pobj,jobject)) == mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)))) && (((java_lang_Character*)(JvmCheckCast(LOCAL(pobj,jobject),&java_lang_Character_Class)))->fjava_lang_Character_value == ((java_lang_Character*)(LOCAL(pthis,jobject)))->fjava_lang_Character_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Character_Class,5);
	JVMLINE(115)
	{ jint $$ret = ((java_lang_Character*)(LOCAL(pthis,jobject)))->fjava_lang_Character_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isDigit__C_Z(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,6);
	JVMLINE(122)
	{ jbool $$ret = mjava_lang_Character_isDigit__I_Z(LOCAL(pch,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isDigit__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,7);
	JVMLINE(135)
	{ jbool $$ret = ((48 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 57)) || ((LOCAL(pcodePoint,jint) < 1632) && jfalse); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isLowerCase__C_Z(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,8);
	JVMLINE(152)
	{ jbool $$ret = mjava_lang_Character_isLowerCase__I_Z(LOCAL(pch,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isLowerCase__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,9);
	JVMLINE(165)
	{ jbool $$ret = ((97 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 122)) || ((LOCAL(pcodePoint,jint) < 128) && jfalse); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isUpperCase__C_Z(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,10);
	JVMLINE(182)
	{ jbool $$ret = mjava_lang_Character_isUpperCase__I_Z(LOCAL(pch,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isUpperCase__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,11);
	JVMLINE(195)
	{ jbool $$ret = (65 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 90); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_Character_toLowerCase__C_C(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,12);
	JVMLINE(210)
	{ jchar $$ret = ((jchar)(mjava_lang_Character_toLowerCase__I_I(LOCAL(pch,jchar)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_toLowerCase__I_I(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,13);
	JVMLINE(225)
	if((65 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 90)){
		JVMLINE(225)
		{ jint $$ret = ((jchar)(LOCAL(pcodePoint,jint) - -32)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(231)
	{ jint $$ret = LOCAL(pcodePoint,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Character_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Character_Class,14);
	JVMLINE(239)
	{ jobject $$ret = mjava_lang_String__init____C_V(JvmAllocObject(&java_lang_String_Class),JvmInitPrimArray1(&ArrOf_C_Class,1,(jchar[]){((java_lang_Character*)(LOCAL(pthis,jobject)))->fjava_lang_Character_value})); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_Character_toUpperCase__C_C(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,15);
	JVMLINE(247)
	{ jchar $$ret = ((jchar)(mjava_lang_Character_toUpperCase__I_I(LOCAL(pch,jchar)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_toUpperCase__I_I(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,16);
	JVMLINE(263)
	if((97 <= LOCAL(pcodePoint,jint)) && (LOCAL(pcodePoint,jint) <= 122)){
		JVMLINE(263)
		{ jint $$ret = ((jchar)(LOCAL(pcodePoint,jint) - 32)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(269)
	{ jint $$ret = LOCAL(pcodePoint,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isValidCodePoint__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,17);
	JVMLINE(378)
	{ jbool $$ret = (0 <= LOCAL(pcodePoint,jint)) && (1114111 >= LOCAL(pcodePoint,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isSupplementaryCodePoint__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,18);
	JVMLINE(392)
	{ jbool $$ret = (65536 <= LOCAL(pcodePoint,jint)) && (1114111 >= LOCAL(pcodePoint,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isHighSurrogate__C_Z(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,19);
	JVMLINE(408)
	{ jbool $$ret = (55296 <= LOCAL(pch,jchar)) && (56319 >= LOCAL(pch,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isLowSurrogate__C_Z(jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pch,jchar,0);

	JVMMETHOD(java_lang_Character_Class,20);
	JVMLINE(424)
	{ jbool $$ret = (56320 <= LOCAL(pch,jchar)) && (57343 >= LOCAL(pch,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isSurrogatePair__CC_Z(jchar phigh, jchar plow) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(phigh,jchar,0);
	DEFARG(plow,jchar,1);

	JVMMETHOD(java_lang_Character_Class,21);
	JVMLINE(441)
	{ jbool $$ret = mjava_lang_Character_isHighSurrogate__C_Z(LOCAL(phigh,jchar)) && mjava_lang_Character_isLowSurrogate__C_Z(LOCAL(plow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_charCount__I_I(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,22);
	JVMLINE(461)
	{ jint $$ret = LOCAL(pcodePoint,jint) >= 65536 ? 2 : 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_toCodePoint__CC_I(jchar phigh, jchar plow) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(phigh,jchar,0);
	DEFARG(plow,jchar,1);
	DEFLOCAL(lh,jint,2);
	DEFLOCAL(ll,jint,3);

	JVMMETHOD(java_lang_Character_Class,23);
	JVMLINE(482)
	LOCAL(lh,jint)=(LOCAL(phigh,jchar) & 1023) << 10;
	JVMLINE(483)
	LOCAL(ll,jint)=LOCAL(plow,jchar) & 1023;
	JVMLINE(484)
	{ jint $$ret = (LOCAL(lh,jint) | LOCAL(ll,jint)) + 65536; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointAt__Ljava_lang_CharSequence_I_I(jobject pseq, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFLOCAL(llen,jint,2);
	DEFLOCAL(lhigh,jchar,3);
	DEFLOCAL(llow,jchar,4);

	JVMMETHOD(java_lang_Character_Class,24);
	JVMLINE(508)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(508)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(510)
	LOCAL(llen,jint)=interface_mjava_lang_CharSequence_length___I(LOCAL(pseq,jobject));
	JVMLINE(512)
	if((LOCAL(pindex,jint) < 0) || (LOCAL(pindex,jint) >= LOCAL(llen,jint))){
		JVMLINE(512)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(515)
	LOCAL(lhigh,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(pindex,jint)++);
	JVMLINE(517)
	if(LOCAL(pindex,jint) >= LOCAL(llen,jint)){
		JVMLINE(517)
		{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(519)
	LOCAL(llow,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(521)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(521)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(523)
	{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointAt___CI_I(jobject pseq, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFLOCAL(llen,jint,2);
	DEFLOCAL(lhigh,jchar,3);
	DEFLOCAL(llow,jchar,4);

	JVMMETHOD(java_lang_Character_Class,25);
	JVMLINE(547)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(547)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(549)
	LOCAL(llen,jint)=JvmArrayLen(LOCAL(pseq,jobject));
	JVMLINE(551)
	if((LOCAL(pindex,jint) < 0) || (LOCAL(pindex,jint) >= LOCAL(llen,jint))){
		JVMLINE(551)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(554)
	LOCAL(lhigh,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint)++);
	JVMLINE(556)
	if(LOCAL(pindex,jint) >= LOCAL(llen,jint)){
		JVMLINE(556)
		{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(558)
	LOCAL(llow,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(560)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(560)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(562)
	{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointAt___CII_I(jobject pseq, jint pindex, jint plimit) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFARG(plimit,jint,2);
	DEFLOCAL(lhigh,jchar,3);
	DEFLOCAL(llow,jchar,4);

	JVMMETHOD(java_lang_Character_Class,26);
	JVMLINE(590)
	if((((LOCAL(pindex,jint) < 0) || (LOCAL(pindex,jint) >= LOCAL(plimit,jint))) || (LOCAL(plimit,jint) < 0)) || (LOCAL(plimit,jint) > (JvmArrayLen(LOCAL(pseq,jobject))))){
		JVMLINE(590)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(593)
	LOCAL(lhigh,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint)++);
	JVMLINE(595)
	if(LOCAL(pindex,jint) >= LOCAL(plimit,jint)){
		JVMLINE(595)
		{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(597)
	LOCAL(llow,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(599)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(599)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(601)
	{ jint $$ret = LOCAL(lhigh,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointBefore__Ljava_lang_CharSequence_I_I(jobject pseq, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFLOCAL(llen,jint,2);
	DEFLOCAL(llow,jchar,3);
	DEFLOCAL(lhigh,jchar,4);

	JVMMETHOD(java_lang_Character_Class,27);
	JVMLINE(626)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(626)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(628)
	LOCAL(llen,jint)=interface_mjava_lang_CharSequence_length___I(LOCAL(pseq,jobject));
	JVMLINE(630)
	if((LOCAL(pindex,jint) < 1) || (LOCAL(pindex,jint) > LOCAL(llen,jint))){
		JVMLINE(630)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(633)
	LOCAL(llow,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),--LOCAL(pindex,jint));
	JVMLINE(635)
	if((--LOCAL(pindex,jint)) < 0){
		JVMLINE(635)
		{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(637)
	LOCAL(lhigh,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(639)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(639)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(641)
	{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointBefore___CI_I(jobject pseq, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFLOCAL(llen,jint,2);
	DEFLOCAL(llow,jchar,3);
	DEFLOCAL(lhigh,jchar,4);

	JVMMETHOD(java_lang_Character_Class,28);
	JVMLINE(666)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(666)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(668)
	LOCAL(llen,jint)=JvmArrayLen(LOCAL(pseq,jobject));
	JVMLINE(670)
	if((LOCAL(pindex,jint) < 1) || (LOCAL(pindex,jint) > LOCAL(llen,jint))){
		JVMLINE(670)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(673)
	LOCAL(llow,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),--LOCAL(pindex,jint));
	JVMLINE(675)
	if((--LOCAL(pindex,jint)) < 0){
		JVMLINE(675)
		{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(677)
	LOCAL(lhigh,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(679)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(679)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(681)
	{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointBefore___CII_I(jobject pseq, jint pindex, jint pstart) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFARG(pstart,jint,2);
	DEFLOCAL(llen,jint,3);
	DEFLOCAL(llow,jchar,4);
	DEFLOCAL(lhigh,jchar,5);

	JVMMETHOD(java_lang_Character_Class,29);
	JVMLINE(710)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(710)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(712)
	LOCAL(llen,jint)=JvmArrayLen(LOCAL(pseq,jobject));
	JVMLINE(714)
	if((((LOCAL(pindex,jint) <= LOCAL(pstart,jint)) || (LOCAL(pindex,jint) > LOCAL(llen,jint))) || (LOCAL(pstart,jint) < 0)) || (LOCAL(pstart,jint) >= LOCAL(llen,jint))){
		JVMLINE(714)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(717)
	LOCAL(llow,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),--LOCAL(pindex,jint));
	JVMLINE(719)
	if((--LOCAL(pindex,jint)) < LOCAL(pstart,jint)){
		JVMLINE(719)
		{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(721)
	LOCAL(lhigh,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(pindex,jint));
	JVMLINE(723)
	if(mjava_lang_Character_isSurrogatePair__CC_Z(LOCAL(lhigh,jchar),LOCAL(llow,jchar))){
		JVMLINE(723)
		{ jint $$ret = mjava_lang_Character_toCodePoint__CC_I(LOCAL(lhigh,jchar),LOCAL(llow,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(725)
	{ jint $$ret = LOCAL(llow,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_toChars__I_CI_I(jint pcodePoint, jobject pdst, jint pdstIndex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);
	DEFARG(pdst,jobject,1);
	DEFARG(pdstIndex,jint,2);
	DEFLOCAL(lcpPrime,jint,3);
	DEFLOCAL(lhigh,jint,4);
	DEFLOCAL(llow,jint,5);

	JVMMETHOD(java_lang_Character_Class,30);
	JVMLINE(752)
	if(!(mjava_lang_Character_isValidCodePoint__I_Z(LOCAL(pcodePoint,jint)))){
		JVMLINE(752)
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(755)
	if(LOCAL(pdst,jobject) == jnull){
		JVMLINE(755)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(758)
	if((LOCAL(pdstIndex,jint) < 0) || (LOCAL(pdstIndex,jint) >= (JvmArrayLen(LOCAL(pdst,jobject))))){
		JVMLINE(758)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(776)
	if(!(mjava_lang_Character_isSupplementaryCodePoint__I_Z(LOCAL(pcodePoint,jint)))){
		JVMLINE(775)
		JvmArraySet_C(LOCAL(pdst,jobject),LOCAL(pdstIndex,jint),((jchar)(LOCAL(pcodePoint,jint))));
		JVMLINE(776)
		{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(763)
	if(LOCAL(pdstIndex,jint) == ((JvmArrayLen(LOCAL(pdst,jobject))) - 1)){
		JVMLINE(763)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(767)
	LOCAL(lcpPrime,jint)=LOCAL(pcodePoint,jint) - 65536;
	JVMLINE(768)
	LOCAL(lhigh,jint)=55296 | ((LOCAL(lcpPrime,jint) >> 10) & 1023);
	JVMLINE(769)
	LOCAL(llow,jint)=56320 | (LOCAL(lcpPrime,jint) & 1023);
	JVMLINE(770)
	JvmArraySet_C(LOCAL(pdst,jobject),LOCAL(pdstIndex,jint),((jchar)(LOCAL(lhigh,jint))));
	JVMLINE(771)
	JvmArraySet_C(LOCAL(pdst,jobject),LOCAL(pdstIndex,jint) + 1,((jchar)(LOCAL(llow,jint))));
	JVMLINE(772)
	{ jint $$ret = 2; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Character_toChars__I__C(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);
	DEFLOCAL(lcpPrime,jint,1);
	DEFLOCAL(lhigh,jint,2);
	DEFLOCAL(llow,jint,3);

	JVMMETHOD(java_lang_Character_Class,31);
	JVMLINE(796)
	if(!(mjava_lang_Character_isValidCodePoint__I_Z(LOCAL(pcodePoint,jint)))){
		JVMLINE(796)
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(803)
	if(mjava_lang_Character_isSupplementaryCodePoint__I_Z(LOCAL(pcodePoint,jint))){
		JVMLINE(800)
		LOCAL(lcpPrime,jint)=LOCAL(pcodePoint,jint) - 65536;
		JVMLINE(801)
		LOCAL(lhigh,jint)=55296 | ((LOCAL(lcpPrime,jint) >> 10) & 1023);
		JVMLINE(802)
		LOCAL(llow,jint)=56320 | (LOCAL(lcpPrime,jint) & 1023);
		JVMLINE(803)
		{ jobject $$ret = JvmInitPrimArray1(&ArrOf_C_Class,2,(jchar[]){((jchar)(LOCAL(lhigh,jint))),((jchar)(LOCAL(llow,jint)))}); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(805)
	{ jobject $$ret = JvmInitPrimArray1(&ArrOf_C_Class,1,(jchar[]){((jchar)(LOCAL(pcodePoint,jint)))}); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointCount__Ljava_lang_CharSequence_II_I(jobject pseq, jint pbeginIndex, jint pendIndex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pbeginIndex,jint,1);
	DEFARG(pendIndex,jint,2);
	DEFLOCAL(llen,jint,3);
	DEFLOCAL(lresult,jint,4);
	DEFLOCAL(li,jint,5);
	DEFLOCAL(lc,jchar,6);

	JVMMETHOD(java_lang_Character_Class,32);
	JVMLINE(829)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(829)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(831)
	LOCAL(llen,jint)=interface_mjava_lang_CharSequence_length___I(LOCAL(pseq,jobject));
	JVMLINE(833)
	if(((LOCAL(pbeginIndex,jint) < 0) || (LOCAL(pendIndex,jint) > LOCAL(llen,jint))) || (LOCAL(pbeginIndex,jint) > LOCAL(pendIndex,jint))){
		JVMLINE(833)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(836)
	LOCAL(lresult,jint)=0;
	JVMLINE(837)
	LOCAL(li,jint)=LOCAL(pbeginIndex,jint);
	while(LOCAL(li,jint) < LOCAL(pendIndex,jint)){
		JVMLINE(838)
		LOCAL(lc,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(li,jint));
		JVMLINE(843)
		if(mjava_lang_Character_isHighSurrogate__C_Z(LOCAL(lc,jchar)) && ((++LOCAL(li,jint)) < LOCAL(pendIndex,jint))){
			JVMLINE(841)
			LOCAL(lc,jchar)=interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(li,jint));
			JVMLINE(843)
			if(!(mjava_lang_Character_isLowSurrogate__C_Z(LOCAL(lc,jchar)))){
				JVMLINE(843)
				LOCAL(lresult,jint)++;
			}
		}
		JVMLINE(847)
		LOCAL(lresult,jint)++;
		JVMLINE(837)
		LOCAL(li,jint)++;
	}
	JVMLINE(849)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_codePointCount___CII_I(jobject pseq, jint poffset, jint pcount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(poffset,jint,1);
	DEFARG(pcount,jint,2);
	DEFLOCAL(llen,jint,3);
	DEFLOCAL(lendIndex,jint,4);
	DEFLOCAL(lresult,jint,5);
	DEFLOCAL(li,jint,6);
	DEFLOCAL(lc,jchar,7);

	JVMMETHOD(java_lang_Character_Class,33);
	JVMLINE(873)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(873)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(875)
	LOCAL(llen,jint)=JvmArrayLen(LOCAL(pseq,jobject));
	JVMLINE(876)
	LOCAL(lendIndex,jint)=LOCAL(poffset,jint) + LOCAL(pcount,jint);
	JVMLINE(878)
	if(((LOCAL(poffset,jint) < 0) || (LOCAL(pcount,jint) < 0)) || (LOCAL(lendIndex,jint) > LOCAL(llen,jint))){
		JVMLINE(878)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(881)
	LOCAL(lresult,jint)=0;
	JVMLINE(882)
	LOCAL(li,jint)=LOCAL(poffset,jint);
	while(LOCAL(li,jint) < LOCAL(lendIndex,jint)){
		JVMLINE(883)
		LOCAL(lc,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(li,jint));
		JVMLINE(888)
		if(mjava_lang_Character_isHighSurrogate__C_Z(LOCAL(lc,jchar)) && ((++LOCAL(li,jint)) < LOCAL(lendIndex,jint))){
			JVMLINE(886)
			LOCAL(lc,jchar)=JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(li,jint));
			JVMLINE(888)
			if(!(mjava_lang_Character_isLowSurrogate__C_Z(LOCAL(lc,jchar)))){
				JVMLINE(888)
				LOCAL(lresult,jint)++;
			}
		}
		JVMLINE(892)
		LOCAL(lresult,jint)++;
		JVMLINE(882)
		LOCAL(li,jint)++;
	}
	JVMLINE(894)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_offsetByCodePoints__Ljava_lang_CharSequence_II_I(jobject pseq, jint pindex, jint pcodePointOffset) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pindex,jint,1);
	DEFARG(pcodePointOffset,jint,2);
	DEFLOCAL(llen,jint,3);
	DEFLOCAL(lcodePoints,jint,4);
	DEFLOCAL(li,jint,5);
	DEFLOCAL(lnext,jint,6);
	DEFLOCAL(lprev,jint,7);

	JVMMETHOD(java_lang_Character_Class,34);
	JVMLINE(922)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(922)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(924)
	LOCAL(llen,jint)=interface_mjava_lang_CharSequence_length___I(LOCAL(pseq,jobject));
	JVMLINE(926)
	if((LOCAL(pindex,jint) < 0) || (LOCAL(pindex,jint) > LOCAL(llen,jint))){
		JVMLINE(926)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(930)
	if(LOCAL(pcodePointOffset,jint) == 0){
		JVMLINE(930)
		{ jint $$ret = LOCAL(pindex,jint); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(949)
	if(LOCAL(pcodePointOffset,jint) > 0){
		JVMLINE(934)
		LOCAL(lcodePoints,jint)=LOCAL(pcodePointOffset,jint);
		JVMLINE(935)
		LOCAL(li,jint)=LOCAL(pindex,jint);
		JVMLINE(947)
		while(LOCAL(lcodePoints,jint) > 0){
			JVMLINE(937)
			LOCAL(lcodePoints,jint)--;
			JVMLINE(939)
			if(LOCAL(li,jint) >= LOCAL(llen,jint)){
				JVMLINE(939)
				JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
			}
			JVMLINE(944)
			if(mjava_lang_Character_isHighSurrogate__C_Z(interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(li,jint)))){
				JVMLINE(942)
				LOCAL(lnext,jint)=LOCAL(li,jint) + 1;
				JVMLINE(944)
				if((LOCAL(lnext,jint) < LOCAL(llen,jint)) && mjava_lang_Character_isLowSurrogate__C_Z(interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(lnext,jint)))){
					JVMLINE(944)
					LOCAL(li,jint)++;
				}
			}
			JVMLINE(947)
			LOCAL(li,jint)++;
		}
		JVMLINE(949)
		{ jint $$ret = LOCAL(li,jint); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(952)
	LOCAL(lcodePoints,jint)=-LOCAL(pcodePointOffset,jint);
	JVMLINE(953)
	LOCAL(li,jint)=LOCAL(pindex,jint);
	JVMLINE(963)
	while(LOCAL(lcodePoints,jint) > 0){
		JVMLINE(955)
		LOCAL(lcodePoints,jint)--;
		JVMLINE(958)
		if((--LOCAL(li,jint)) < 0){
			JVMLINE(958)
			JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
		}
		JVMLINE(926)
		if(!(mjava_lang_Character_isLowSurrogate__C_Z(interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(li,jint))))){
			JVMLINE(926)
			continue;
		}
		JVMLINE(961)
		LOCAL(lprev,jint)=LOCAL(li,jint) - 1;
		JVMLINE(926)
		if((LOCAL(lprev,jint) < 0) || (!(mjava_lang_Character_isHighSurrogate__C_Z(interface_mjava_lang_CharSequence_charAt__I_C(LOCAL(pseq,jobject),LOCAL(lprev,jint)))))){
			JVMLINE(926)
			continue;
		}
		JVMLINE(963)
		LOCAL(li,jint)--;
	}
	JVMLINE(967)
	{ jint $$ret = LOCAL(li,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Character_offsetByCodePoints___CIIII_I(jobject pseq, jint pstart, jint pcount, jint pindex, jint pcodePointOffset) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pseq,jobject,0);
	DEFARG(pstart,jint,1);
	DEFARG(pcount,jint,2);
	DEFARG(pindex,jint,3);
	DEFARG(pcodePointOffset,jint,4);
	DEFLOCAL(lend,jint,5);
	DEFLOCAL(lcodePoints,jint,6);
	DEFLOCAL(li,jint,7);
	DEFLOCAL(lnext,jint,8);
	DEFLOCAL(lprev,jint,9);

	JVMMETHOD(java_lang_Character_Class,35);
	JVMLINE(1003)
	if(LOCAL(pseq,jobject) == jnull){
		JVMLINE(1003)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(1005)
	LOCAL(lend,jint)=LOCAL(pstart,jint) + LOCAL(pcount,jint);
	JVMLINE(1008)
	if(((((LOCAL(pstart,jint) < 0) || (LOCAL(pcount,jint) < 0)) || (LOCAL(lend,jint) > (JvmArrayLen(LOCAL(pseq,jobject))))) || (LOCAL(pindex,jint) < LOCAL(pstart,jint))) || (LOCAL(pindex,jint) > LOCAL(lend,jint))){
		JVMLINE(1008)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(1012)
	if(LOCAL(pcodePointOffset,jint) == 0){
		JVMLINE(1012)
		{ jint $$ret = LOCAL(pindex,jint); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(1031)
	if(LOCAL(pcodePointOffset,jint) > 0){
		JVMLINE(1016)
		LOCAL(lcodePoints,jint)=LOCAL(pcodePointOffset,jint);
		JVMLINE(1017)
		LOCAL(li,jint)=LOCAL(pindex,jint);
		JVMLINE(1029)
		while(LOCAL(lcodePoints,jint) > 0){
			JVMLINE(1019)
			LOCAL(lcodePoints,jint)--;
			JVMLINE(1021)
			if(LOCAL(li,jint) >= LOCAL(lend,jint)){
				JVMLINE(1021)
				JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
			}
			JVMLINE(1026)
			if(mjava_lang_Character_isHighSurrogate__C_Z(JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(li,jint)))){
				JVMLINE(1024)
				LOCAL(lnext,jint)=LOCAL(li,jint) + 1;
				JVMLINE(1026)
				if((LOCAL(lnext,jint) < LOCAL(lend,jint)) && mjava_lang_Character_isLowSurrogate__C_Z(JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(lnext,jint)))){
					JVMLINE(1026)
					LOCAL(li,jint)++;
				}
			}
			JVMLINE(1029)
			LOCAL(li,jint)++;
		}
		JVMLINE(1031)
		{ jint $$ret = LOCAL(li,jint); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(1034)
	LOCAL(lcodePoints,jint)=-LOCAL(pcodePointOffset,jint);
	JVMLINE(1035)
	LOCAL(li,jint)=LOCAL(pindex,jint);
	JVMLINE(1045)
	while(LOCAL(lcodePoints,jint) > 0){
		JVMLINE(1037)
		LOCAL(lcodePoints,jint)--;
		JVMLINE(1040)
		if((--LOCAL(li,jint)) < LOCAL(pstart,jint)){
			JVMLINE(1040)
			JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
		}
		JVMLINE(1006)
		if(!(mjava_lang_Character_isLowSurrogate__C_Z(JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(li,jint))))){
			JVMLINE(1006)
			continue;
		}
		JVMLINE(1043)
		LOCAL(lprev,jint)=LOCAL(li,jint) - 1;
		JVMLINE(1006)
		if((LOCAL(lprev,jint) < LOCAL(pstart,jint)) || (!(mjava_lang_Character_isHighSurrogate__C_Z(JvmArrayGet_C(LOCAL(pseq,jobject),LOCAL(lprev,jint)))))){
			JVMLINE(1006)
			continue;
		}
		JVMLINE(1045)
		LOCAL(li,jint)--;
	}
	JVMLINE(1049)
	{ jint $$ret = LOCAL(li,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_Character_reverseBytes__C_C(jchar pc) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pc,jchar,0);

	JVMMETHOD(java_lang_Character_Class,36);
	JVMLINE(1059)
	{ jchar $$ret = ((jchar)((LOCAL(pc,jchar) << 8) | (LOCAL(pc,jchar) >> 8))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Character_valueOf__C_Ljava_lang_Character_(jchar pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jchar,0);

	JVMMETHOD(java_lang_Character_Class,37);
	JVMLINE(1069)
	{ jobject $$ret = mjava_lang_Character__init___C_V(JvmAllocObject(&java_lang_Character_Class),LOCAL(pi,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isWhitespace__C_Z(jchar pc) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pc,jchar,0);

	JVMMETHOD(java_lang_Character_Class,38);
	JVMLINE(1076)
	{ jbool $$ret = mjava_lang_Character_isWhitespace__I_Z(LOCAL(pc,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Character_isWhitespace__I_Z(jint pcodePoint) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcodePoint,jint,0);

	JVMMETHOD(java_lang_Character_Class,39);
	JVMLINE(1089)
	{ jbool $$ret = (((LOCAL(pcodePoint,jint) >= 28) && (LOCAL(pcodePoint,jint) <= 32)) || ((LOCAL(pcodePoint,jint) >= 9) && (LOCAL(pcodePoint,jint) <= 13))) || ((LOCAL(pcodePoint,jint) >= 4096) && (((LOCAL(pcodePoint,jint) == 5760) || (LOCAL(pcodePoint,jint) == 6158)) || (((((LOCAL(pcodePoint,jint) >= 8192) && (LOCAL(pcodePoint,jint) != 8199)) && (LOCAL(pcodePoint,jint) != 8239)) && (LOCAL(pcodePoint,jint) <= 65535)) && (((((LOCAL(pcodePoint,jint) <= 8202) || (LOCAL(pcodePoint,jint) == 8232)) || (LOCAL(pcodePoint,jint) == 8233)) || (LOCAL(pcodePoint,jint) == 8287)) || (LOCAL(pcodePoint,jint) == 12288))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Character_toString__C_Ljava_lang_String_(jchar pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jchar,0);

	JVMMETHOD(java_lang_Character_Class,40);
	JVMLINE(1116)
	{ jobject $$ret = mjava_lang_String_valueOf__C_Ljava_lang_String_(LOCAL(pvalue,jchar)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Character__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Character_Class,41);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(24)
	fjava_lang_Character_TYPE=((java_lang_Class*)(&ArrOf_C_Class))->fjava_lang_Class_componentType;
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Character_Class;
JvmClass ArrOf_java_lang_Character_Class;
JvmClass ArrOf_ArrOf_java_lang_Character_Class;

jbool java_lang_Character_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Character_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_CC(jobject,jobject,jobject);
extern jobject invoke_II(jobject,jobject,jobject);
extern jobject invoke_CII(jobject,jobject,jobject);
extern jobject invoke_C(jobject,jobject,jobject);
extern jobject invoke_IOII(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_III(jobject,jobject,jobject);
extern jobject invoke_CCI(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_CO(jobject,jobject,jobject);
extern jobject invoke_OII(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OIIIII(jobject,jobject,jobject);
extern jobject invoke_IZ(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_CZ(jobject,jobject,jobject);
extern jobject invoke_CCZ(jobject,jobject,jobject);
extern jobject invoke_OIII(jobject,jobject,jobject);
void JvmSetup_java_lang_Character() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Character_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Character_hashCode___I;
	_vTable[0] = &mjava_lang_Character_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Character_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Character);
	cls->name = JvmMakeString(L"java.lang.Character",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Character_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Character.java",14);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 42, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"<init>", 6), &java_lang_Character_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character__init___C_V, &invoke_CO 
#ifdef JVM_DEBUG
 , 52, 53, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=53, .endLine=53, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=52, .endLine=53, .type=&java_lang_Character_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"charValue", 9), &C_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Character_charValue___C, &invoke_C 
#ifdef JVM_DEBUG
 , 60, 60, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=60, .endLine=60, .type=&java_lang_Character_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"digit", 5), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&C_Class,&I_Class}), &mjava_lang_Character_digit__CI_I, &invoke_CII 
#ifdef JVM_DEBUG
 , 67, 67, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=67, .endLine=67, .type=&C_Class},{.name=JvmMakeString(L"radix",5), .startLine=67, .endLine=67, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"digit", 5), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Character_digit__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 85, 100, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=91, .endLine=100, .type=&I_Class},{.name=JvmMakeString(L"radix",5), .startLine=85, .endLine=100, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=89, .endLine=100, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Character_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 108, 108, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=108, .endLine=108, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=108, .endLine=108, .type=&java_lang_Character_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Character_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 115, 115, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=115, .endLine=115, .type=&java_lang_Character_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isDigit", 7), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isDigit__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 122, 122, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=122, .endLine=122, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isDigit", 7), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isDigit__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 135, 135, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=135, .endLine=135, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isLowerCase", 11), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isLowerCase__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 152, 152, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=152, .endLine=152, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isLowerCase", 11), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isLowerCase__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 165, 165, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=165, .endLine=165, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isUpperCase", 11), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isUpperCase__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 182, 182, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=182, .endLine=182, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isUpperCase", 11), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isUpperCase__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 195, 195, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=195, .endLine=195, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toLowerCase", 11), &C_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_toLowerCase__C_C, &invoke_CC 
#ifdef JVM_DEBUG
 , 210, 210, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=210, .endLine=210, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toLowerCase", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_toLowerCase__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 225, 231, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=225, .endLine=231, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Character_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 239, 239, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=239, .endLine=239, .type=&java_lang_Character_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toUpperCase", 11), &C_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_toUpperCase__C_C, &invoke_CC 
#ifdef JVM_DEBUG
 , 247, 247, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=247, .endLine=247, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toUpperCase", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_toUpperCase__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 263, 269, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=263, .endLine=269, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isValidCodePoint", 16), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isValidCodePoint__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 378, 378, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=378, .endLine=378, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isSupplementaryCodePoint", 24), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isSupplementaryCodePoint__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 392, 392, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=392, .endLine=392, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isHighSurrogate", 15), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isHighSurrogate__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 408, 408, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=408, .endLine=408, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isLowSurrogate", 14), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isLowSurrogate__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 424, 424, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=424, .endLine=424, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isSurrogatePair", 15), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&C_Class,&C_Class}), &mjava_lang_Character_isSurrogatePair__CC_Z, &invoke_CCZ 
#ifdef JVM_DEBUG
 , 441, 441, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"high",4), .startLine=441, .endLine=441, .type=&C_Class},{.name=JvmMakeString(L"low",3), .startLine=441, .endLine=441, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"charCount", 9), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_charCount__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 461, 461, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=461, .endLine=461, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toCodePoint", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&C_Class,&C_Class}), &mjava_lang_Character_toCodePoint__CC_I, &invoke_CCI 
#ifdef JVM_DEBUG
 , 482, 484, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"high",4), .startLine=482, .endLine=484, .type=&C_Class},{.name=JvmMakeString(L"low",3), .startLine=483, .endLine=484, .type=&C_Class},{.name=JvmMakeString(L"h",1), .startLine=482, .endLine=484, .type=&I_Class},{.name=JvmMakeString(L"l",1), .startLine=483, .endLine=484, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointAt", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_CharSequence_Class,&I_Class}), &mjava_lang_Character_codePointAt__Ljava_lang_CharSequence_I_I, &invoke_OII 
#ifdef JVM_DEBUG
 , 508, 523, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=508, .endLine=523, .type=&java_lang_CharSequence_Class},{.name=JvmMakeString(L"index",5), .startLine=512, .endLine=523, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=510, .endLine=523, .type=&I_Class},{.name=JvmMakeString(L"high",4), .startLine=515, .endLine=523, .type=&C_Class},{.name=JvmMakeString(L"low",3), .startLine=519, .endLine=523, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointAt", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&ArrOf_C_Class,&I_Class}), &mjava_lang_Character_codePointAt___CI_I, &invoke_OII 
#ifdef JVM_DEBUG
 , 547, 562, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=547, .endLine=562, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"index",5), .startLine=551, .endLine=562, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=549, .endLine=562, .type=&I_Class},{.name=JvmMakeString(L"high",4), .startLine=554, .endLine=562, .type=&C_Class},{.name=JvmMakeString(L"low",3), .startLine=558, .endLine=562, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointAt", 11), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class}), &mjava_lang_Character_codePointAt___CII_I, &invoke_OIII 
#ifdef JVM_DEBUG
 , 590, 601, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=590, .endLine=601, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"index",5), .startLine=590, .endLine=601, .type=&I_Class},{.name=JvmMakeString(L"limit",5), .startLine=590, .endLine=601, .type=&I_Class},{.name=JvmMakeString(L"high",4), .startLine=593, .endLine=601, .type=&C_Class},{.name=JvmMakeString(L"low",3), .startLine=597, .endLine=601, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointBefore", 15), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_CharSequence_Class,&I_Class}), &mjava_lang_Character_codePointBefore__Ljava_lang_CharSequence_I_I, &invoke_OII 
#ifdef JVM_DEBUG
 , 626, 641, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=626, .endLine=641, .type=&java_lang_CharSequence_Class},{.name=JvmMakeString(L"index",5), .startLine=630, .endLine=641, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=628, .endLine=641, .type=&I_Class},{.name=JvmMakeString(L"low",3), .startLine=633, .endLine=641, .type=&C_Class},{.name=JvmMakeString(L"high",4), .startLine=637, .endLine=641, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointBefore", 15), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&ArrOf_C_Class,&I_Class}), &mjava_lang_Character_codePointBefore___CI_I, &invoke_OII 
#ifdef JVM_DEBUG
 , 666, 681, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=666, .endLine=681, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"index",5), .startLine=670, .endLine=681, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=668, .endLine=681, .type=&I_Class},{.name=JvmMakeString(L"low",3), .startLine=673, .endLine=681, .type=&C_Class},{.name=JvmMakeString(L"high",4), .startLine=677, .endLine=681, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointBefore", 15), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class}), &mjava_lang_Character_codePointBefore___CII_I, &invoke_OIII 
#ifdef JVM_DEBUG
 , 710, 725, 3, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=710, .endLine=725, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"index",5), .startLine=714, .endLine=725, .type=&I_Class},{.name=JvmMakeString(L"start",5), .startLine=714, .endLine=725, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=712, .endLine=725, .type=&I_Class},{.name=JvmMakeString(L"low",3), .startLine=717, .endLine=725, .type=&C_Class},{.name=JvmMakeString(L"high",4), .startLine=721, .endLine=725, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toChars", 7), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&I_Class,&ArrOf_C_Class,&I_Class}), &mjava_lang_Character_toChars__I_CI_I, &invoke_IOII 
#ifdef JVM_DEBUG
 , 752, 776, 3, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=752, .endLine=776, .type=&I_Class},{.name=JvmMakeString(L"dst",3), .startLine=755, .endLine=776, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"dstIndex",8), .startLine=758, .endLine=776, .type=&I_Class},{.name=JvmMakeString(L"cpPrime",7), .startLine=767, .endLine=776, .type=&I_Class},{.name=JvmMakeString(L"high",4), .startLine=768, .endLine=776, .type=&I_Class},{.name=JvmMakeString(L"low",3), .startLine=769, .endLine=776, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toChars", 7), &ArrOf_C_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_toChars__I__C, &invoke_IO 
#ifdef JVM_DEBUG
 , 796, 805, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=796, .endLine=805, .type=&I_Class},{.name=JvmMakeString(L"cpPrime",7), .startLine=800, .endLine=805, .type=&I_Class},{.name=JvmMakeString(L"high",4), .startLine=801, .endLine=805, .type=&I_Class},{.name=JvmMakeString(L"low",3), .startLine=802, .endLine=805, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointCount", 14), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_CharSequence_Class,&I_Class,&I_Class}), &mjava_lang_Character_codePointCount__Ljava_lang_CharSequence_II_I, &invoke_OIII 
#ifdef JVM_DEBUG
 , 829, 849, 3, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=829, .endLine=849, .type=&java_lang_CharSequence_Class},{.name=JvmMakeString(L"beginIndex",10), .startLine=833, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"endIndex",8), .startLine=833, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=831, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=836, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=837, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"c",1), .startLine=838, .endLine=849, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"codePointCount", 14), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class}), &mjava_lang_Character_codePointCount___CII_I, &invoke_OIII 
#ifdef JVM_DEBUG
 , 873, 894, 3, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=873, .endLine=894, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"offset",6), .startLine=876, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=876, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=875, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"endIndex",8), .startLine=876, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=881, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=882, .endLine=894, .type=&I_Class},{.name=JvmMakeString(L"c",1), .startLine=883, .endLine=894, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"offsetByCodePoints", 18), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_CharSequence_Class,&I_Class,&I_Class}), &mjava_lang_Character_offsetByCodePoints__Ljava_lang_CharSequence_II_I, &invoke_OIII 
#ifdef JVM_DEBUG
 , 922, 967, 3, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=922, .endLine=967, .type=&java_lang_CharSequence_Class},{.name=JvmMakeString(L"index",5), .startLine=926, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"codePointOffset",15), .startLine=930, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=924, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"codePoints",10), .startLine=934, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=926, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"next",4), .startLine=942, .endLine=967, .type=&I_Class},{.name=JvmMakeString(L"prev",4), .startLine=926, .endLine=967, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"offsetByCodePoints", 18), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 5, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class,&I_Class,&I_Class}), &mjava_lang_Character_offsetByCodePoints___CIIII_I, &invoke_OIIIII 
#ifdef JVM_DEBUG
 , 1003, 1049, 5, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"seq",3), .startLine=1003, .endLine=1049, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"start",5), .startLine=1005, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=1005, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"index",5), .startLine=1008, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"codePointOffset",15), .startLine=1012, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=1005, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"codePoints",10), .startLine=1016, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=1006, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"next",4), .startLine=1024, .endLine=1049, .type=&I_Class},{.name=JvmMakeString(L"prev",4), .startLine=1006, .endLine=1049, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"reverseBytes", 12), &C_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_reverseBytes__C_C, &invoke_CC 
#ifdef JVM_DEBUG
 , 1059, 1059, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"c",1), .startLine=1059, .endLine=1059, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"valueOf", 7), &java_lang_Character_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_valueOf__C_Ljava_lang_Character_, &invoke_CO 
#ifdef JVM_DEBUG
 , 1069, 1069, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=1069, .endLine=1069, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isWhitespace", 12), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_isWhitespace__C_Z, &invoke_CZ 
#ifdef JVM_DEBUG
 , 1076, 1076, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"c",1), .startLine=1076, .endLine=1076, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"isWhitespace", 12), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Character_isWhitespace__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 1089, 1089, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"codePoint",9), .startLine=1089, .endLine=1089, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_Character_toString__C_Ljava_lang_String_, &invoke_CO 
#ifdef JVM_DEBUG
 , 1116, 1116, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=1116, .endLine=1116, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Character_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Character__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 24, 24, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 16, &(JvmField*[]){
	JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"value", 5), &C_Class, 2, (void*)offsetof(java_lang_Character,fjava_lang_Character_value))
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Character_TYPE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_RADIX", 9), &I_Class, 25, &fjava_lang_Character_MAX_RADIX)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_VALUE", 9), &C_Class, 25, &fjava_lang_Character_MAX_VALUE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_RADIX", 9), &I_Class, 25, &fjava_lang_Character_MIN_RADIX)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_VALUE", 9), &C_Class, 25, &fjava_lang_Character_MIN_VALUE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_HIGH_SURROGATE", 18), &C_Class, 25, &fjava_lang_Character_MIN_HIGH_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_HIGH_SURROGATE", 18), &C_Class, 25, &fjava_lang_Character_MAX_HIGH_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_LOW_SURROGATE", 17), &C_Class, 25, &fjava_lang_Character_MIN_LOW_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_LOW_SURROGATE", 17), &C_Class, 25, &fjava_lang_Character_MAX_LOW_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_SURROGATE", 13), &C_Class, 25, &fjava_lang_Character_MIN_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_SURROGATE", 13), &C_Class, 25, &fjava_lang_Character_MAX_SURROGATE)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_SUPPLEMENTARY_CODE_POINT", 28), &I_Class, 25, &fjava_lang_Character_MIN_SUPPLEMENTARY_CODE_POINT)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MIN_CODE_POINT", 14), &I_Class, 25, &fjava_lang_Character_MIN_CODE_POINT)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"MAX_CODE_POINT", 14), &I_Class, 25, &fjava_lang_Character_MAX_CODE_POINT)
	,JvmMakeField(&java_lang_Character_Class, JvmMakeString(L"SIZE", 4), &I_Class, 25, &fjava_lang_Character_SIZE)
	});

	cls = &ArrOf_java_lang_Character_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Character",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Character_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Character_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Character",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Character_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
