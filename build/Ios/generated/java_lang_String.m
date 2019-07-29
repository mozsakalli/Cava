#include "java_lang_Math.h"
#include "java_lang_Integer.h"
#include "java_lang_String.h"
#include "java_lang_Character.h"
#include "java_lang_ArrayIndexOutOfBoundsException.h"
#include "java_lang_NullPointerException.h"
#include "java_io_UnsupportedEncodingException.h"
#include "java_lang_System.h"
extern jobject $literal67;
extern jobject $literal66;
extern jobject $literal39;


jobject mjava_lang_String__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_String_Class,0);
	JVMLINE(46)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(37)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode=0;
	JVMLINE(47)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value=JVMGLOBALS[9];
	JVMLINE(48)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset=0;
	JVMLINE(49)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count=0;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String__init____BII_V(jobject pthis, jobject pbytes, jint poff, jint plen) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbytes,jobject,1);
	DEFARG(poff,jint,2);
	DEFARG(plen,jint,3);

	JVMMETHOD(java_lang_String_Class,1);
	JVMLINE(72)
	mjava_lang_String__init____C_V(LOCAL(pthis,jobject),mjava_lang_String_bytesToChars___BIILjava_lang_String___C(LOCAL(pbytes,jobject),LOCAL(poff,jint),LOCAL(plen,jint),$literal66));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_bytesToChars___BIILjava_lang_String___C(jobject pbytes, jint poffset, jint plength, jobject pencoding) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pbytes,jobject,0);
	DEFARG(poffset,jint,1);
	DEFARG(plength,jint,2);
	DEFARG(pencoding,jobject,3);
	DEFLOCAL(lchars,jobject,4);
	DEFLOCAL(lend,jint,5);
	DEFLOCAL(lptr,jint,6);
	DEFLOCAL(ldest,jint,7);
	DEFLOCAL(lc,jint,8);
	DEFLOCAL(lc2,jint,9);
	DEFLOCAL(lc3,jint,10);

	JVMMETHOD(java_lang_String_Class,2);
	JVMLINE(101)
	LOCAL(lchars,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(plength,jint));
	JVMLINE(102)
	LOCAL(lend,jint)=LOCAL(poffset,jint) + LOCAL(plength,jint);
	JVMLINE(103)
	LOCAL(lptr,jint)=LOCAL(poffset,jint);
	JVMLINE(104)
	LOCAL(ldest,jint)=0;
	JVMLINE(125)
	while(LOCAL(lptr,jint) < LOCAL(lend,jint)){
		JVMLINE(106)
		LOCAL(lc,jint)=JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++);
		JVMLINE(125)
		if(LOCAL(lc,jint) < 128){
			JVMLINE(108)
			JvmArraySet_C(LOCAL(lchars,jobject),LOCAL(ldest,jint)++,((jchar)(LOCAL(lc,jint))));
		}
		else{
			JVMLINE(125)
			if(LOCAL(lc,jint) < 224){
				JVMLINE(107)
				if(LOCAL(lptr,jint) >= LOCAL(lend,jint)){
					JVMLINE(107)
					break;
				}
				JVMLINE(111)
				JvmArraySet_C(LOCAL(lchars,jobject),LOCAL(ldest,jint)++,((jchar)(((LOCAL(lc,jint) & 63) << 6) | ((JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++)) & 127))));
			}
			else{
				JVMLINE(125)
				if(LOCAL(lc,jint) < 240){
					JVMLINE(107)
					if((LOCAL(lptr,jint) + 1) >= LOCAL(lend,jint)){
						JVMLINE(107)
						break;
					}
					JVMLINE(117)
					LOCAL(lc2,jint)=JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++);
					JVMLINE(118)
					JvmArraySet_C(LOCAL(lchars,jobject),LOCAL(ldest,jint)++,((jchar)((((LOCAL(lc,jint) & 31) << 12) | ((LOCAL(lc2,jint) & 127) << 6)) | ((JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++)) & 127))));
				}
				else{
					JVMLINE(107)
					if((LOCAL(lptr,jint) + 2) >= LOCAL(lend,jint)){
						JVMLINE(107)
						break;
					}
					JVMLINE(123)
					LOCAL(lc2,jint)=JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++);
					JVMLINE(124)
					LOCAL(lc3,jint)=JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++);
					JVMLINE(125)
					JvmArraySet_C(LOCAL(lchars,jobject),LOCAL(ldest,jint)++,((jchar)(((((LOCAL(lc,jint) & 15) << 18) | ((LOCAL(lc2,jint) & 127) << 12)) | ((LOCAL(lc3,jint) & 127) << 6)) | ((JvmArrayGet_B(LOCAL(pbytes,jobject),LOCAL(lptr,jint)++)) & 127))));
				}
			}
		}
	}
	JVMLINE(130)
	{ jobject $$ret = LOCAL(lchars,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String__init____C_V(jobject pthis, jobject pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jobject,1);

	JVMMETHOD(java_lang_String_Class,3);
	JVMLINE(140)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(37)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode=0;
	JVMLINE(141)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value=LOCAL(pvalue,jobject);
	JVMLINE(142)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset=0;
	JVMLINE(143)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count=JvmArrayLen(LOCAL(pvalue,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_failedBoundsCheck__III_Ljava_lang_StringIndexOutOfBoundsException_(jobject pthis, jint parrayLength, jint poffset, jint pcount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(parrayLength,jint,1);
	DEFARG(poffset,jint,2);
	DEFARG(pcount,jint,3);

	JVMMETHOD(java_lang_String_Class,4);
	JVMLINE(147)
	JvmThrow(mjava_lang_StringIndexOutOfBoundsException__init___I_V(JvmAllocObject(&java_lang_StringIndexOutOfBoundsException_Class),LOCAL(pcount,jint)));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_String__init____CII_V(jobject pthis, jobject pdata, jint poffset, jint pcharCount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pdata,jobject,1);
	DEFARG(poffset,jint,2);
	DEFARG(pcharCount,jint,3);

	JVMMETHOD(java_lang_String_Class,5);
	JVMLINE(161)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(37)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode=0;
	JVMLINE(163)
	if(((LOCAL(poffset,jint) | LOCAL(pcharCount,jint)) < 0) || (LOCAL(pcharCount,jint) > ((JvmArrayLen(LOCAL(pdata,jobject))) - LOCAL(poffset,jint)))){
		JVMLINE(163)
		JvmThrow(mjava_lang_String_failedBoundsCheck__III_Ljava_lang_StringIndexOutOfBoundsException_(LOCAL(pthis,jobject),JvmArrayLen(LOCAL(pdata,jobject)),LOCAL(poffset,jint),LOCAL(pcharCount,jint)));
	}
	JVMLINE(165)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset=0;
	JVMLINE(166)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(pcharCount,jint));
	JVMLINE(167)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count=LOCAL(pcharCount,jint);
	JVMLINE(168)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(LOCAL(pdata,jobject),LOCAL(poffset,jint),((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,0,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String__init___II_C_V(jobject pthis, jint poffset, jint pcharCount, jobject pdata) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(poffset,jint,1);
	DEFARG(pcharCount,jint,2);
	DEFARG(pdata,jobject,3);

	JVMMETHOD(java_lang_String_Class,6);
	JVMLINE(171)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(37)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode=0;
	JVMLINE(173)
	if(((LOCAL(poffset,jint) | LOCAL(pcharCount,jint)) < 0) || (LOCAL(pcharCount,jint) > ((JvmArrayLen(LOCAL(pdata,jobject))) - LOCAL(poffset,jint)))){
		JVMLINE(173)
		JvmThrow(mjava_lang_String_failedBoundsCheck__III_Ljava_lang_StringIndexOutOfBoundsException_(LOCAL(pthis,jobject),JvmArrayLen(LOCAL(pdata,jobject)),LOCAL(poffset,jint),LOCAL(pcharCount,jint)));
	}
	JVMLINE(175)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset=LOCAL(poffset,jint);
	JVMLINE(176)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value=LOCAL(pdata,jobject);
	JVMLINE(177)
	((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count=LOCAL(pcharCount,jint);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_String_charAt__I_C(jobject pthis, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pindex,jint,1);

	JVMMETHOD(java_lang_String_Class,7);
	JVMLINE(211)
	{ jchar $$ret = JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(pindex,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_compareTo__Ljava_lang_String__I(jobject pthis, jobject panotherString) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(panotherString,jobject,1);
	DEFLOCAL(lminL,jint,2);
	DEFLOCAL(liter,jint,3);
	DEFLOCAL(la,jchar,4);
	DEFLOCAL(lb,jchar,5);

	JVMMETHOD(java_lang_String_Class,8);
	JVMLINE(244)
	if(LOCAL(panotherString,jobject) == LOCAL(pthis,jobject)){
		JVMLINE(244)
		{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(246)
	LOCAL(lminL,jint)=mjava_lang_Math_min__II_I(mjava_lang_String_length___I(LOCAL(panotherString,jobject)),mjava_lang_String_length___I(LOCAL(pthis,jobject)));
	JVMLINE(247)
	LOCAL(liter,jint)=0;
	while(LOCAL(liter,jint) < LOCAL(lminL,jint)){
		JVMLINE(248)
		LOCAL(la,jchar)=JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint));
		JVMLINE(249)
		LOCAL(lb,jchar)=JvmArrayGet_C(((java_lang_String*)(LOCAL(panotherString,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(panotherString,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint));
		JVMLINE(251)
		if(LOCAL(la,jchar) != LOCAL(lb,jchar)){
			JVMLINE(251)
			{ jint $$ret = LOCAL(la,jchar) - LOCAL(lb,jchar); thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(247)
		LOCAL(liter,jint)++;
	}
	JVMLINE(254)
	{ jint $$ret = mjava_lang_String_length___I(LOCAL(pthis,jobject)) - mjava_lang_String_length___I(LOCAL(panotherString,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_String_endsWith__Ljava_lang_String__Z(jobject pthis, jobject psuffix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(psuffix,jobject,1);
	DEFLOCAL(loffset,jint,2);
	DEFLOCAL(liter,jint,3);

	JVMMETHOD(java_lang_String_Class,9);
	JVMLINE(278)
	if(mjava_lang_String_length___I(LOCAL(psuffix,jobject)) > mjava_lang_String_length___I(LOCAL(pthis,jobject))){
		JVMLINE(278)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(280)
	LOCAL(loffset,jint)=mjava_lang_String_length___I(LOCAL(psuffix,jobject)) - 1;
	JVMLINE(281)
	LOCAL(liter,jint)=mjava_lang_String_length___I(LOCAL(pthis,jobject)) - 1;
	while(LOCAL(loffset,jint) >= 0){
		JVMLINE(283)
		if((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint))) != (JvmArrayGet_C(((java_lang_String*)(LOCAL(psuffix,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(psuffix,jobject)))->fjava_lang_String_offset + LOCAL(loffset,jint)))){
			JVMLINE(283)
			{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(285)
		LOCAL(loffset,jint)--;
		JVMLINE(281)
		LOCAL(liter,jint)--;
	}
	JVMLINE(287)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_String_equals__Ljava_lang_Object__Z(jobject pthis, jobject panObject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(panObject,jobject,1);
	DEFLOCAL(ls,jobject,2);
	DEFLOCAL(liter,jint,3);

	JVMMETHOD(java_lang_String_Class,10);
	JVMLINE(297)
	if(LOCAL(panObject,jobject) == LOCAL(pthis,jobject)){
		JVMLINE(297)
		{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(300)
	if((LOCAL(panObject,jobject) == jnull) || (mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(panObject,jobject)) != (&java_lang_String_Class))){
		JVMLINE(300)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(302)
	LOCAL(ls,jobject)=JvmCheckCast(LOCAL(panObject,jobject),&java_lang_String_Class);
	JVMLINE(304)
	if(mjava_lang_String_length___I(LOCAL(ls,jobject)) != mjava_lang_String_length___I(LOCAL(pthis,jobject))){
		JVMLINE(304)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(306)
	LOCAL(liter,jint)=0;
	while(LOCAL(liter,jint) < ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count){
		JVMLINE(308)
		if((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint))) != (JvmArrayGet_C(((java_lang_String*)(LOCAL(ls,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(ls,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint)))){
			JVMLINE(308)
			{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(306)
		LOCAL(liter,jint)++;
	}
	JVMLINE(311)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_String_equalsIgnoreCase__Ljava_lang_String__Z(jobject pthis, jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ps,jobject,1);
	DEFLOCAL(lsrc,jobject,2);
	DEFLOCAL(ldst,jobject,3);
	DEFLOCAL(lsp,jint,4);
	DEFLOCAL(ldp,jint,5);
	DEFLOCAL(llen,jint,6);
	DEFLOCAL(li,jint,7);
	DEFLOCAL(lsc,jint,8);
	DEFLOCAL(ldc,jint,9);

	JVMMETHOD(java_lang_String_Class,11);
	JVMLINE(327)
	if((LOCAL(ps,jobject) == jnull) || (((java_lang_String*)(LOCAL(ps,jobject)))->fjava_lang_String_count != ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count)){
		JVMLINE(327)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(330)
	LOCAL(lsrc,jobject)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value;
	JVMLINE(331)
	LOCAL(ldst,jobject)=((java_lang_String*)(LOCAL(ps,jobject)))->fjava_lang_String_value;
	JVMLINE(332)
	LOCAL(lsp,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset;
	JVMLINE(333)
	LOCAL(ldp,jint)=((java_lang_String*)(LOCAL(ps,jobject)))->fjava_lang_String_offset;
	JVMLINE(334)
	LOCAL(llen,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count;
	JVMLINE(335)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < LOCAL(llen,jint)){
		JVMLINE(336)
		LOCAL(lsc,jint)=JvmArrayGet_C(LOCAL(lsrc,jobject),LOCAL(lsp,jint)++);
		JVMLINE(337)
		LOCAL(ldc,jint)=JvmArrayGet_C(LOCAL(ldst,jobject),LOCAL(ldp,jint)++);
		JVMLINE(346)
		if(LOCAL(lsc,jint) != LOCAL(ldc,jint)){
			JVMLINE(340)
			if((LOCAL(lsc,jint) >= 65) && (LOCAL(lsc,jint) <= 90)){
				JVMLINE(340)
				LOCAL(lsc,jint)+=-65;
			}
			JVMLINE(343)
			if((LOCAL(ldc,jint) >= 65) && (LOCAL(ldc,jint) <= 90)){
				JVMLINE(343)
				LOCAL(ldc,jint)+=-65;
			}
			JVMLINE(346)
			if(LOCAL(lsc,jint) != LOCAL(ldc,jint)){
				JVMLINE(346)
				{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
		JVMLINE(335)
		LOCAL(li,jint)++;
	}
	JVMLINE(350)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_getBytes____B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(le,jobject,1);

	JVMMETHOD(java_lang_String_Class,12);
	JVMLINE(362)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(359)
			{ jobject $$ret = mjava_lang_String_getBytes__Ljava_lang_String___B(LOCAL(pthis,jobject),$literal66); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_UnsupportedEncodingException_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(362)
			{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_String_getBytes__Ljava_lang_String___B(jobject pthis, jobject penc) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(penc,jobject,1);
	DEFLOCAL(llen,jint,2);
	DEFLOCAL(li,jint,3);
	DEFLOCAL(lc,jint,4);
	DEFLOCAL(lbytes,jobject,5);
	DEFLOCAL(lptr,jint,6);

	JVMMETHOD(java_lang_String_Class,13);
	JVMLINE(371)
	LOCAL(llen,jint)=0;
	JVMLINE(372)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count){
		JVMLINE(373)
		LOCAL(lc,jint)=(JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(li,jint))) & 255;
		JVMLINE(381)
		if(LOCAL(lc,jint) <= 127){
			JVMLINE(375)
			LOCAL(llen,jint)++;
		}
		else{
			JVMLINE(381)
			if(LOCAL(lc,jint) <= 2047){
				JVMLINE(377)
				LOCAL(llen,jint)+=2;
			}
			else{
				JVMLINE(381)
				if(LOCAL(lc,jint) <= 65535){
					JVMLINE(379)
					LOCAL(llen,jint)+=3;
				}
				else{
					JVMLINE(381)
					LOCAL(llen,jint)+=4;
				}
			}
		}
		JVMLINE(372)
		LOCAL(li,jint)++;
	}
	JVMLINE(384)
	LOCAL(lbytes,jobject)=JvmAllocPrimArray1(&ArrOf_B_Class,LOCAL(llen,jint));
	JVMLINE(385)
	LOCAL(lptr,jint)=0;
	JVMLINE(386)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count){
		JVMLINE(387)
		LOCAL(lc,jint)=(JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(li,jint))) & 255;
		JVMLINE(401)
		if(LOCAL(lc,jint) <= 127){
			JVMLINE(389)
			JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(LOCAL(lc,jint))));
		}
		else{
			JVMLINE(401)
			if(LOCAL(lc,jint) <= 2047){
				JVMLINE(391)
				JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(192 | (LOCAL(lc,jint) >> 6))));
				JVMLINE(392)
				JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | (LOCAL(lc,jint) & 63))));
			}
			else{
				JVMLINE(401)
				if(LOCAL(lc,jint) <= 65535){
					JVMLINE(394)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(224 | (LOCAL(lc,jint) >> 12))));
					JVMLINE(395)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | ((LOCAL(lc,jint) >> 6) & 63))));
					JVMLINE(396)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | (LOCAL(lc,jint) & 63))));
				}
				else{
					JVMLINE(398)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(240 | (LOCAL(lc,jint) >> 18))));
					JVMLINE(399)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | ((LOCAL(lc,jint) >> 12) & 63))));
					JVMLINE(400)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | ((LOCAL(lc,jint) >> 6) & 63))));
					JVMLINE(401)
					JvmArraySet_B(LOCAL(lbytes,jobject),LOCAL(lptr,jint)++,((jbyte)(128 | (LOCAL(lc,jint) & 63))));
				}
			}
		}
		JVMLINE(386)
		LOCAL(li,jint)++;
	}
	JVMLINE(404)
	{ jobject $$ret = LOCAL(lbytes,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_String_getChars__II_CI_V(jobject pthis, jint psrcBegin, jint psrcEnd, jobject pdst, jint pdstBegin) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(psrcBegin,jint,1);
	DEFARG(psrcEnd,jint,2);
	DEFARG(pdst,jobject,3);
	DEFARG(pdstBegin,jint,4);
	DEFLOCAL(liter,jint,5);

	JVMMETHOD(java_lang_String_Class,14);
	JVMLINE(416)
	LOCAL(liter,jint)=LOCAL(psrcBegin,jint);
	while(LOCAL(liter,jint) < LOCAL(psrcEnd,jint)){
		JVMLINE(417)
		JvmArraySet_C(LOCAL(pdst,jobject),LOCAL(pdstBegin,jint),JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(liter,jint)));
		JVMLINE(418)
		LOCAL(pdstBegin,jint)++;
		JVMLINE(416)
		LOCAL(liter,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lh,jint,1);
	DEFLOCAL(lo,jint,2);
	DEFLOCAL(le,jint,3);

	JVMMETHOD(java_lang_String_Class,15);
	JVMLINE(424)
	LOCAL(lh,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode;
	JVMLINE(431)
	if((LOCAL(lh,jint) == 0) && (((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count > 0)){
		JVMLINE(426)
		LOCAL(lo,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset;
		JVMLINE(427)
		LOCAL(le,jint)=LOCAL(lo,jint) + ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count;
		JVMLINE(429)
		while(LOCAL(lo,jint) < LOCAL(le,jint)){
			JVMLINE(429)
			LOCAL(lh,jint)=(LOCAL(lh,jint) * 31) + (JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(lo,jint)++));
		}
		JVMLINE(431)
		((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_hashCode=LOCAL(lh,jint);
	}
	JVMLINE(433)
	{ jint $$ret = LOCAL(lh,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_indexOf__I_I(jobject pthis, jint pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pch,jint,1);

	JVMMETHOD(java_lang_String_Class,16);
	JVMLINE(445)
	{ jint $$ret = mjava_lang_String_indexOf__II_I(LOCAL(pthis,jobject),LOCAL(pch,jint),0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_indexOf__II_I(jobject pthis, jint pch, jint pfromIndex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pch,jint,1);
	DEFARG(pfromIndex,jint,2);
	DEFLOCAL(liter,jint,3);

	JVMMETHOD(java_lang_String_Class,17);
	JVMLINE(463)
	LOCAL(liter,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(pfromIndex,jint);
	while(LOCAL(liter,jint) < (((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count + ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset)){
		JVMLINE(465)
		if((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(liter,jint))) == LOCAL(pch,jint)){
			JVMLINE(465)
			{ jint $$ret = LOCAL(liter,jint) - ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(463)
		LOCAL(liter,jint)++;
	}
	JVMLINE(468)
	{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_lastIndexOf__I_I(jobject pthis, jint pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pch,jint,1);
	DEFLOCAL(liter,jint,2);

	JVMMETHOD(java_lang_String_Class,18);
	JVMLINE(578)
	LOCAL(liter,jint)=(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count + ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset) - 1;
	while(LOCAL(liter,jint) > ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset){
		JVMLINE(580)
		if((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(liter,jint))) == LOCAL(pch,jint)){
			JVMLINE(580)
			{ jint $$ret = LOCAL(liter,jint) - ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(578)
		LOCAL(liter,jint)--;
	}
	JVMLINE(583)
	{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_length___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_String_Class,19);
	JVMLINE(672)
	{ jint $$ret = ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_String_regionMatches__ILjava_lang_String_II_Z(jobject pthis, jint pthisStart, jobject pstring, jint pstart, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pthisStart,jint,1);
	DEFARG(pstring,jobject,2);
	DEFARG(pstart,jint,3);
	DEFARG(plength,jint,4);
	DEFLOCAL(lo1,jint,5);
	DEFLOCAL(lo2,jint,6);
	DEFLOCAL(lvalue1,jobject,7);
	DEFLOCAL(lvalue2,jobject,8);
	DEFLOCAL(li,jint,9);

	JVMMETHOD(java_lang_String_Class,20);
	JVMLINE(689)
	if(LOCAL(pstring,jobject) == jnull){
		JVMLINE(689)
		JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),$literal67));
	}
	JVMLINE(692)
	if((LOCAL(pstart,jint) < 0) || ((((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_count - LOCAL(pstart,jint)) < LOCAL(plength,jint))){
		JVMLINE(692)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(695)
	if((LOCAL(pthisStart,jint) < 0) || ((((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count - LOCAL(pthisStart,jint)) < LOCAL(plength,jint))){
		JVMLINE(695)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(698)
	if(LOCAL(plength,jint) <= 0){
		JVMLINE(698)
		{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(700)
	LOCAL(lo1,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(pthisStart,jint);
	LOCAL(lo2,jint)=((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_offset + LOCAL(pstart,jint);
	JVMLINE(701)
	LOCAL(lvalue1,jobject)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value;
	JVMLINE(702)
	LOCAL(lvalue2,jobject)=((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_value;
	JVMLINE(703)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < LOCAL(plength,jint)){
		JVMLINE(705)
		if((JvmArrayGet_C(LOCAL(lvalue1,jobject),LOCAL(lo1,jint) + LOCAL(li,jint))) != (JvmArrayGet_C(LOCAL(lvalue2,jobject),LOCAL(lo2,jint) + LOCAL(li,jint)))){
			JVMLINE(705)
			{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(703)
		LOCAL(li,jint)++;
	}
	JVMLINE(708)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_String_regionMatches__ZILjava_lang_String_II_Z(jobject pthis, jbool pignoreCase, jint pthisStart, jobject pstring, jint pstart, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pignoreCase,jbool,1);
	DEFARG(pthisStart,jint,2);
	DEFARG(pstring,jobject,3);
	DEFARG(pstart,jint,4);
	DEFARG(plength,jint,5);
	DEFLOCAL(lend,jint,6);
	DEFLOCAL(ltarget,jobject,7);
	DEFLOCAL(lc1,jchar,8);
	DEFLOCAL(lc2,jchar,9);

	JVMMETHOD(java_lang_String_Class,21);
	JVMLINE(732)
	if(!(LOCAL(pignoreCase,jbool))){
		JVMLINE(732)
		{ jbool $$ret = mjava_lang_String_regionMatches__ILjava_lang_String_II_Z(LOCAL(pthis,jobject),LOCAL(pthisStart,jint),LOCAL(pstring,jobject),LOCAL(pstart,jint),LOCAL(plength,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(735)
	if(LOCAL(pstring,jobject) == jnull){
		JVMLINE(735)
		JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),$literal67));
	}
	JVMLINE(738)
	if((LOCAL(pthisStart,jint) < 0) || (LOCAL(plength,jint) > (((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count - LOCAL(pthisStart,jint)))){
		JVMLINE(738)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(741)
	if((LOCAL(pstart,jint) < 0) || (LOCAL(plength,jint) > (((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_count - LOCAL(pstart,jint)))){
		JVMLINE(741)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(743)
	LOCAL(pthisStart,jint)=LOCAL(pthisStart,jint) + ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset;
	JVMLINE(744)
	LOCAL(pstart,jint)=LOCAL(pstart,jint) + ((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_offset;
	JVMLINE(745)
	LOCAL(lend,jint)=LOCAL(pthisStart,jint) + LOCAL(plength,jint);
	JVMLINE(746)
	LOCAL(ltarget,jobject)=((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_value;
	JVMLINE(751)
	while(LOCAL(pthisStart,jint) < LOCAL(lend,jint)){
		JVMLINE(748)
		LOCAL(lc1,jchar)=JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(pthisStart,jint)++);
		JVMLINE(749)
		LOCAL(lc2,jchar)=JvmArrayGet_C(LOCAL(ltarget,jobject),LOCAL(pstart,jint)++);
		JVMLINE(751)
		if((LOCAL(lc1,jchar) != LOCAL(lc2,jchar)) && (mjava_lang_String_foldCase__C_C(LOCAL(pthis,jobject),LOCAL(lc1,jchar)) != mjava_lang_String_foldCase__C_C(LOCAL(pthis,jobject),LOCAL(lc2,jchar)))){
			JVMLINE(751)
			{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
		}
	}
	JVMLINE(754)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_String_foldCase__C_C(jobject pthis, jchar pch) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pch,jchar,1);

	JVMMETHOD(java_lang_String_Class,22);
	JVMLINE(768)
	if(LOCAL(pch,jchar) >= 128){
		JVMLINE(768)
		{ jchar $$ret = mjava_lang_Character_toLowerCase__C_C(mjava_lang_Character_toUpperCase__C_C(LOCAL(pch,jchar))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(764)
	if((65 <= LOCAL(pch,jchar)) && (LOCAL(pch,jchar) <= 90)){
		JVMLINE(764)
		{ jchar $$ret = ((jchar)(LOCAL(pch,jchar) + 32)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(766)
	{ jchar $$ret = LOCAL(pch,jchar); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_replace__CC_Ljava_lang_String_(jobject pthis, jchar poldChar, jchar pnewChar) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(poldChar,jchar,1);
	DEFARG(pnewChar,jchar,2);
	DEFLOCAL(lbuffer,jobject,3);
	DEFLOCAL(l_offset,jint,4);
	DEFLOCAL(l_count,jint,5);
	DEFLOCAL(lidx,jint,6);
	DEFLOCAL(llast,jint,7);
	DEFLOCAL(lcopied,jbool,8);
	DEFLOCAL(lnewBuffer,jobject,9);

	JVMMETHOD(java_lang_String_Class,23);
	JVMLINE(786)
	LOCAL(lbuffer,jobject)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value;
	JVMLINE(787)
	LOCAL(l_offset,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset;
	JVMLINE(788)
	LOCAL(l_count,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count;
	JVMLINE(790)
	LOCAL(lidx,jint)=LOCAL(l_offset,jint);
	JVMLINE(791)
	LOCAL(llast,jint)=LOCAL(l_offset,jint) + LOCAL(l_count,jint);
	JVMLINE(792)
	LOCAL(lcopied,jbool)=jfalse;
	JVMLINE(805)
	while(LOCAL(lidx,jint) < LOCAL(llast,jint)){
		JVMLINE(803)
		if((JvmArrayGet_C(LOCAL(lbuffer,jobject),LOCAL(lidx,jint))) == LOCAL(poldChar,jchar)){
			JVMLINE(801)
			if(!(LOCAL(lcopied,jbool))){
				JVMLINE(796)
				LOCAL(lnewBuffer,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(l_count,jint));
				JVMLINE(797)
				mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(LOCAL(lbuffer,jobject),LOCAL(l_offset,jint),LOCAL(lnewBuffer,jobject),0,LOCAL(l_count,jint));
				JVMLINE(798)
				LOCAL(lbuffer,jobject)=LOCAL(lnewBuffer,jobject);
				JVMLINE(799)
				LOCAL(lidx,jint)=LOCAL(lidx,jint) - LOCAL(l_offset,jint);
				JVMLINE(800)
				LOCAL(llast,jint)=LOCAL(llast,jint) - LOCAL(l_offset,jint);
				JVMLINE(801)
				LOCAL(lcopied,jbool)=jtrue;
			}
			JVMLINE(803)
			JvmArraySet_C(LOCAL(lbuffer,jobject),LOCAL(lidx,jint),LOCAL(pnewChar,jchar));
		}
		JVMLINE(805)
		LOCAL(lidx,jint)++;
	}
	JVMLINE(808)
	{ jobject $$ret = LOCAL(lcopied,jbool) ? mjava_lang_String__init____C_V(JvmAllocObject(&java_lang_String_Class),LOCAL(lbuffer,jobject)) : LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_substring__I_Ljava_lang_String_(jobject pthis, jint pstart) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstart,jint,1);

	JVMMETHOD(java_lang_String_Class,24);
	JVMLINE(843)
	if(LOCAL(pstart,jint) == 0){
		JVMLINE(843)
		{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(847)
	if((LOCAL(pstart,jint) >= 0) && (LOCAL(pstart,jint) <= ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count)){
		JVMLINE(847)
		{ jobject $$ret = mjava_lang_String__init____CII_V(JvmAllocObject(&java_lang_String_Class),((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(pstart,jint),((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count - LOCAL(pstart,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(849)
	JvmThrow(mjava_lang_ArrayIndexOutOfBoundsException__init___I_V(JvmAllocObject(&java_lang_ArrayIndexOutOfBoundsException_Class),LOCAL(pstart,jint)));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_String_substring__II_Ljava_lang_String_(jobject pthis, jint pstart, jint pend) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstart,jint,1);
	DEFARG(pend,jint,2);

	JVMMETHOD(java_lang_String_Class,25);
	JVMLINE(861)
	if((LOCAL(pstart,jint) == 0) && (LOCAL(pend,jint) == ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count)){
		JVMLINE(861)
		{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(867)
	if(((LOCAL(pstart,jint) >= 0) && (LOCAL(pstart,jint) <= LOCAL(pend,jint))) && (LOCAL(pend,jint) <= ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count)){
		JVMLINE(867)
		{ jobject $$ret = mjava_lang_String__init____CII_V(JvmAllocObject(&java_lang_String_Class),((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + LOCAL(pstart,jint),LOCAL(pend,jint) - LOCAL(pstart,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(869)
	JvmThrow(mjava_lang_ArrayIndexOutOfBoundsException__init___I_V(JvmAllocObject(&java_lang_ArrayIndexOutOfBoundsException_Class),LOCAL(pstart,jint)));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_String_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_String_Class,26);
	JVMLINE(917)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_trim___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lstart,jint,1);
	DEFLOCAL(llast,jint,2);
	DEFLOCAL(lend,jint,3);

	JVMMETHOD(java_lang_String_Class,27);
	JVMLINE(963)
	LOCAL(lstart,jint)=((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset;
	LOCAL(llast,jint)=LOCAL(lend,jint)=(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset + ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_count) - 1;
	JVMLINE(966)
	while((LOCAL(lstart,jint) <= LOCAL(lend,jint)) && ((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(lstart,jint))) <= 32)){
		JVMLINE(966)
		LOCAL(lstart,jint)++;
	}
	JVMLINE(969)
	while((LOCAL(lend,jint) >= LOCAL(lstart,jint)) && ((JvmArrayGet_C(((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(lend,jint))) <= 32)){
		JVMLINE(969)
		LOCAL(lend,jint)--;
	}
	JVMLINE(972)
	if((LOCAL(lstart,jint) == ((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_offset) && (LOCAL(lend,jint) == LOCAL(llast,jint))){
		JVMLINE(972)
		{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(975)
	{ jobject $$ret = mjava_lang_String__init____CII_V(JvmAllocObject(&java_lang_String_Class),((java_lang_String*)(LOCAL(pthis,jobject)))->fjava_lang_String_value,LOCAL(lstart,jint),(LOCAL(lend,jint) - LOCAL(lstart,jint)) + 1); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_valueOf__C_Ljava_lang_String_(jchar pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jchar,0);
	DEFLOCAL(ls,jobject,1);

	JVMMETHOD(java_lang_String_Class,28);
	JVMLINE(989)
	LOCAL(ls,jobject)=mjava_lang_String__init___II_C_V(JvmAllocObject(&java_lang_String_Class),0,1,JvmInitPrimArray1(&ArrOf_C_Class,1,(jchar[]){LOCAL(pvalue,jchar)}));
	JVMLINE(990)
	((java_lang_String*)(LOCAL(ls,jobject)))->fjava_lang_String_hashCode=LOCAL(pvalue,jchar);
	JVMLINE(991)
	{ jobject $$ret = LOCAL(ls,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_valueOf__I_Ljava_lang_String_(jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi,jint,0);

	JVMMETHOD(java_lang_String_Class,29);
	JVMLINE(1033)
	{ jobject $$ret = mjava_lang_Integer_toString__I_Ljava_lang_String_(LOCAL(pi,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_String_valueOf__Ljava_lang_Object__Ljava_lang_String_(jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pobj,jobject,0);

	JVMMETHOD(java_lang_String_Class,30);
	JVMLINE(1049)
	{ jobject $$ret = LOCAL(pobj,jobject) == jnull ? $literal39 : virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(pobj,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_String_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_String_Class,31);
	JVMLINE(24)
	{ jint $$ret = mjava_lang_String_compareTo__Ljava_lang_String__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_String_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_String__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_String_Class,32);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(26)
	JVMGLOBALS[8]=mjava_util_ArrayList__init____V(JvmAllocObject(&java_util_ArrayList_Class));
	JVMLINE(40)
	JVMGLOBALS[9]=JvmAllocPrimArray1(&ArrOf_C_Class,0);
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_String_Class;
JvmClass ArrOf_java_lang_String_Class;
JvmClass ArrOf_ArrOf_java_lang_String_Class;

jbool java_lang_String_isChildOf(JvmClass* klass) {
	return klass == &java_lang_String_Class || klass == &java_lang_CharSequence_Class || klass == &java_lang_Object_Class || klass == &java_lang_Comparable_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_II(jobject,jobject,jobject);
extern jobject invoke_CC(jobject,jobject,jobject);
extern jobject invoke_IIOO(jobject,jobject,jobject);
extern jobject invoke_IIIO(jobject,jobject,jobject);
extern jobject invoke_OIIO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_ZIOIIZ(jobject,jobject,jobject);
extern jobject invoke_III(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_CO(jobject,jobject,jobject);
extern jobject invoke_CCO(jobject,jobject,jobject);
extern jobject invoke_IIO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OIIOO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_IC(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_IIOIV(jobject,jobject,jobject);
extern jobject invoke_IOIIZ(jobject,jobject,jobject);
void JvmSetup_java_lang_String() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_lang_CharSequence();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_String_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_String_hashCode___I;
	_vTable[0] = &mjava_lang_String_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(13 * sizeof(void*));
	_iTable[12] = (void*)&mjava_lang_String_charAt__I_C;
	_iTable[11] = (void*)&mjava_lang_String_length___I;
	_iTable[10] = (void*)&mjava_lang_String_toString___Ljava_lang_String_;
	_iTable[1] = (void*)&mjava_lang_String_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_String_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_String);
	cls->name = JvmMakeString(L"java.lang.String",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_String_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"String.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,2,&(JvmClass*[]){&java_lang_CharSequence_Class,&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 33, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<init>", 6), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 37, 49, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=49, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<init>", 6), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_B_Class,&I_Class,&I_Class}), &mjava_lang_String__init____BII_V, &invoke_OIIO 
#ifdef JVM_DEBUG
 , 72, 72, 3, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"bytes",5), .startLine=72, .endLine=72, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"off",3), .startLine=72, .endLine=72, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=72, .endLine=72, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=72, .endLine=72, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"bytesToChars", 12), &ArrOf_C_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&ArrOf_B_Class,&I_Class,&I_Class,&java_lang_String_Class}), &mjava_lang_String_bytesToChars___BIILjava_lang_String___C, &invoke_OIIOO 
#ifdef JVM_DEBUG
 , 101, 130, 4, 7, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"bytes",5), .startLine=106, .endLine=130, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"offset",6), .startLine=102, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=101, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"encoding",8), .startLine=0, .endLine=130, .type=&java_lang_String_Class},{.name=JvmMakeString(L"chars",5), .startLine=101, .endLine=130, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"end",3), .startLine=102, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"ptr",3), .startLine=103, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"dest",4), .startLine=104, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"c",1), .startLine=106, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"c2",2), .startLine=117, .endLine=130, .type=&I_Class},{.name=JvmMakeString(L"c3",2), .startLine=124, .endLine=130, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<init>", 6), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_C_Class}), &mjava_lang_String__init____C_V, &invoke_OO 
#ifdef JVM_DEBUG
 , 37, 143, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=141, .endLine=143, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=143, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"failedBoundsCheck", 17), &java_lang_StringIndexOutOfBoundsException_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&I_Class,&I_Class,&I_Class}), &mjava_lang_String_failedBoundsCheck__III_Ljava_lang_StringIndexOutOfBoundsException_, &invoke_IIIO 
#ifdef JVM_DEBUG
 , 147, 147, 3, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"arrayLength",11), .startLine=0, .endLine=147, .type=&I_Class},{.name=JvmMakeString(L"offset",6), .startLine=0, .endLine=147, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=147, .endLine=147, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=147, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<init>", 6), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class}), &mjava_lang_String__init____CII_V, &invoke_OIIO 
#ifdef JVM_DEBUG
 , 37, 168, 3, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"data",4), .startLine=163, .endLine=168, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"offset",6), .startLine=163, .endLine=168, .type=&I_Class},{.name=JvmMakeString(L"charCount",9), .startLine=163, .endLine=168, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=168, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<init>", 6), &java_lang_String_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&I_Class,&I_Class,&ArrOf_C_Class}), &mjava_lang_String__init___II_C_V, &invoke_IIOO 
#ifdef JVM_DEBUG
 , 37, 177, 3, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"offset",6), .startLine=173, .endLine=177, .type=&I_Class},{.name=JvmMakeString(L"charCount",9), .startLine=173, .endLine=177, .type=&I_Class},{.name=JvmMakeString(L"data",4), .startLine=173, .endLine=177, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=177, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"charAt", 6), &C_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_String_charAt__I_C, &invoke_IC 
#ifdef JVM_DEBUG
 , 211, 211, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"index",5), .startLine=211, .endLine=211, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=211, .endLine=211, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_String_compareTo__Ljava_lang_String__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 244, 254, 1, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"anotherString",13), .startLine=244, .endLine=254, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=244, .endLine=254, .type=&java_lang_String_Class},{.name=JvmMakeString(L"minL",4), .startLine=246, .endLine=254, .type=&I_Class},{.name=JvmMakeString(L"iter",4), .startLine=247, .endLine=254, .type=&I_Class},{.name=JvmMakeString(L"a",1), .startLine=248, .endLine=254, .type=&C_Class},{.name=JvmMakeString(L"b",1), .startLine=249, .endLine=254, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"endsWith", 8), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_String_endsWith__Ljava_lang_String__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 278, 287, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"suffix",6), .startLine=278, .endLine=287, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=278, .endLine=287, .type=&java_lang_String_Class},{.name=JvmMakeString(L"offset",6), .startLine=280, .endLine=287, .type=&I_Class},{.name=JvmMakeString(L"iter",4), .startLine=281, .endLine=287, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_String_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 297, 311, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"anObject",8), .startLine=297, .endLine=311, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=297, .endLine=311, .type=&java_lang_String_Class},{.name=JvmMakeString(L"s",1), .startLine=302, .endLine=311, .type=&java_lang_String_Class},{.name=JvmMakeString(L"iter",4), .startLine=306, .endLine=311, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"equalsIgnoreCase", 16), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_String_equalsIgnoreCase__Ljava_lang_String__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 327, 350, 1, 9, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=327, .endLine=350, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=327, .endLine=350, .type=&java_lang_String_Class},{.name=JvmMakeString(L"src",3), .startLine=330, .endLine=350, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"dst",3), .startLine=331, .endLine=350, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"sp",2), .startLine=332, .endLine=350, .type=&I_Class},{.name=JvmMakeString(L"dp",2), .startLine=333, .endLine=350, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=334, .endLine=350, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=335, .endLine=350, .type=&I_Class},{.name=JvmMakeString(L"sc",2), .startLine=336, .endLine=350, .type=&I_Class},{.name=JvmMakeString(L"dc",2), .startLine=337, .endLine=350, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"getBytes", 8), &ArrOf_B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String_getBytes____B, &invoke_O 
#ifdef JVM_DEBUG
 , 359, 362, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=359, .endLine=362, .type=&java_lang_String_Class},{.name=JvmMakeString(L"e",1), .startLine=359, .endLine=362, .type=&java_io_UnsupportedEncodingException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"getBytes", 8), &ArrOf_B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_String_getBytes__Ljava_lang_String___B, &invoke_OO 
#ifdef JVM_DEBUG
 , 371, 404, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"enc",3), .startLine=0, .endLine=404, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=372, .endLine=404, .type=&java_lang_String_Class},{.name=JvmMakeString(L"len",3), .startLine=371, .endLine=404, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=372, .endLine=404, .type=&I_Class},{.name=JvmMakeString(L"c",1), .startLine=373, .endLine=404, .type=&I_Class},{.name=JvmMakeString(L"bytes",5), .startLine=384, .endLine=404, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"ptr",3), .startLine=385, .endLine=404, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"getChars", 8), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&I_Class,&I_Class,&ArrOf_C_Class,&I_Class}), &mjava_lang_String_getChars__II_CI_V, &invoke_IIOIV 
#ifdef JVM_DEBUG
 , 416, 418, 4, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"srcBegin",8), .startLine=416, .endLine=418, .type=&I_Class},{.name=JvmMakeString(L"srcEnd",6), .startLine=416, .endLine=418, .type=&I_Class},{.name=JvmMakeString(L"dst",3), .startLine=417, .endLine=418, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"dstBegin",8), .startLine=417, .endLine=418, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=417, .endLine=418, .type=&java_lang_String_Class},{.name=JvmMakeString(L"iter",4), .startLine=416, .endLine=418, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 424, 433, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=424, .endLine=433, .type=&java_lang_String_Class},{.name=JvmMakeString(L"h",1), .startLine=424, .endLine=433, .type=&I_Class},{.name=JvmMakeString(L"o",1), .startLine=426, .endLine=433, .type=&I_Class},{.name=JvmMakeString(L"e",1), .startLine=427, .endLine=433, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"indexOf", 7), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_String_indexOf__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 445, 445, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=445, .endLine=445, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=445, .endLine=445, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"indexOf", 7), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_String_indexOf__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 463, 468, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=465, .endLine=468, .type=&I_Class},{.name=JvmMakeString(L"fromIndex",9), .startLine=463, .endLine=468, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=463, .endLine=468, .type=&java_lang_String_Class},{.name=JvmMakeString(L"iter",4), .startLine=463, .endLine=468, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"lastIndexOf", 11), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_String_lastIndexOf__I_I, &invoke_II 
#ifdef JVM_DEBUG
 , 578, 583, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=580, .endLine=583, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=578, .endLine=583, .type=&java_lang_String_Class},{.name=JvmMakeString(L"iter",4), .startLine=578, .endLine=583, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"length", 6), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String_length___I, &invoke_I 
#ifdef JVM_DEBUG
 , 672, 672, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=672, .endLine=672, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"regionMatches", 13), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&I_Class,&java_lang_String_Class,&I_Class,&I_Class}), &mjava_lang_String_regionMatches__ILjava_lang_String_II_Z, &invoke_IOIIZ 
#ifdef JVM_DEBUG
 , 689, 708, 4, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"thisStart",9), .startLine=695, .endLine=708, .type=&I_Class},{.name=JvmMakeString(L"string",6), .startLine=689, .endLine=708, .type=&java_lang_String_Class},{.name=JvmMakeString(L"start",5), .startLine=692, .endLine=708, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=692, .endLine=708, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=695, .endLine=708, .type=&java_lang_String_Class},{.name=JvmMakeString(L"o1",2), .startLine=700, .endLine=708, .type=&I_Class},{.name=JvmMakeString(L"o2",2), .startLine=700, .endLine=708, .type=&I_Class},{.name=JvmMakeString(L"value1",6), .startLine=701, .endLine=708, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"value2",6), .startLine=702, .endLine=708, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"i",1), .startLine=703, .endLine=708, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"regionMatches", 13), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 5, &(JvmClass*[]){&Z_Class,&I_Class,&java_lang_String_Class,&I_Class,&I_Class}), &mjava_lang_String_regionMatches__ZILjava_lang_String_II_Z, &invoke_ZIOIIZ 
#ifdef JVM_DEBUG
 , 732, 754, 5, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ignoreCase",10), .startLine=732, .endLine=754, .type=&Z_Class},{.name=JvmMakeString(L"thisStart",9), .startLine=732, .endLine=754, .type=&I_Class},{.name=JvmMakeString(L"string",6), .startLine=732, .endLine=754, .type=&java_lang_String_Class},{.name=JvmMakeString(L"start",5), .startLine=732, .endLine=754, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=732, .endLine=754, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=732, .endLine=754, .type=&java_lang_String_Class},{.name=JvmMakeString(L"end",3), .startLine=745, .endLine=754, .type=&I_Class},{.name=JvmMakeString(L"target",6), .startLine=746, .endLine=754, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"c1",2), .startLine=748, .endLine=754, .type=&C_Class},{.name=JvmMakeString(L"c2",2), .startLine=749, .endLine=754, .type=&C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"foldCase", 8), &C_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_String_foldCase__C_C, &invoke_CC 
#ifdef JVM_DEBUG
 , 764, 768, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"ch",2), .startLine=764, .endLine=768, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=768, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"replace", 7), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&C_Class,&C_Class}), &mjava_lang_String_replace__CC_Ljava_lang_String_, &invoke_CCO 
#ifdef JVM_DEBUG
 , 786, 808, 2, 8, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"oldChar",7), .startLine=803, .endLine=808, .type=&C_Class},{.name=JvmMakeString(L"newChar",7), .startLine=803, .endLine=808, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=786, .endLine=808, .type=&java_lang_String_Class},{.name=JvmMakeString(L"buffer",6), .startLine=786, .endLine=808, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"_offset",7), .startLine=787, .endLine=808, .type=&I_Class},{.name=JvmMakeString(L"_count",6), .startLine=788, .endLine=808, .type=&I_Class},{.name=JvmMakeString(L"idx",3), .startLine=790, .endLine=808, .type=&I_Class},{.name=JvmMakeString(L"last",4), .startLine=791, .endLine=808, .type=&I_Class},{.name=JvmMakeString(L"copied",6), .startLine=792, .endLine=808, .type=&Z_Class},{.name=JvmMakeString(L"newBuffer",9), .startLine=796, .endLine=808, .type=&ArrOf_C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"substring", 9), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_String_substring__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 843, 849, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"start",5), .startLine=843, .endLine=849, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=843, .endLine=849, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"substring", 9), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_String_substring__II_Ljava_lang_String_, &invoke_IIO 
#ifdef JVM_DEBUG
 , 861, 869, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"start",5), .startLine=861, .endLine=869, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=861, .endLine=869, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=861, .endLine=869, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 917, 917, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=917, .endLine=917, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"trim", 4), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String_trim___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 963, 975, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=963, .endLine=975, .type=&java_lang_String_Class},{.name=JvmMakeString(L"start",5), .startLine=963, .endLine=975, .type=&I_Class},{.name=JvmMakeString(L"last",4), .startLine=963, .endLine=975, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=963, .endLine=975, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"valueOf", 7), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_String_valueOf__C_Ljava_lang_String_, &invoke_CO 
#ifdef JVM_DEBUG
 , 989, 991, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=989, .endLine=991, .type=&C_Class},{.name=JvmMakeString(L"s",1), .startLine=989, .endLine=991, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"valueOf", 7), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_String_valueOf__I_Ljava_lang_String_, &invoke_IO 
#ifdef JVM_DEBUG
 , 1033, 1033, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=1033, .endLine=1033, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"valueOf", 7), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_String_valueOf__Ljava_lang_Object__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 1049, 1049, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=1049, .endLine=1049, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_String_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 24, 24, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=24, .endLine=24, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=24, .endLine=24, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_String_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_String__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 26, 40, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 6, &(JvmField*[]){
	JvmMakeField(&java_lang_String_Class, JvmMakeString(L"value", 5), &ArrOf_C_Class, 17, (void*)offsetof(java_lang_String,fjava_lang_String_value))
	,JvmMakeField(&java_lang_String_Class, JvmMakeString(L"offset", 6), &I_Class, 17, (void*)offsetof(java_lang_String,fjava_lang_String_offset))
	,JvmMakeField(&java_lang_String_Class, JvmMakeString(L"count", 5), &I_Class, 17, (void*)offsetof(java_lang_String,fjava_lang_String_count))
	,JvmMakeField(&java_lang_String_Class, JvmMakeString(L"hashCode", 8), &I_Class, 2, (void*)offsetof(java_lang_String,fjava_lang_String_hashCode))
	,JvmMakeField(&java_lang_String_Class, JvmMakeString(L"str", 3), &java_util_ArrayList_Class, 10, &JVMGLOBALS[8])
	,JvmMakeField(&java_lang_String_Class, JvmMakeString(L"ZERO_CHAR", 9), &ArrOf_C_Class, 26, &JVMGLOBALS[9])
	});

	cls = &ArrOf_java_lang_String_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.String",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_String_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_String_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.String",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_String_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
