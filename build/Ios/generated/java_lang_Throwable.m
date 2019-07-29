#include "java_lang_IllegalArgumentException.h"
#include "java_io_Writer.h"
#include "java_io_OutputStream.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_IllegalStateException.h"
#include "java_lang_NullPointerException.h"
#include "java_lang_Throwable.h"
#include "java_lang_System.h"
extern jobject $literal56;
extern jobject $literal57;
extern jobject $literal54;
extern jobject $literal1;
extern jobject $literal55;
extern jobject $literal52;
extern jobject $literal53;
extern jobject $literal50;
extern jobject $literal51;
extern jobject $literal49;
extern jobject $literal38;


jobject mjava_lang_Throwable__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,0);
	JVMLINE(32)
	mjava_lang_Throwable__init___Ljava_lang_String__V(LOCAL(pthis,jobject),JvmCheckCast(jnull,&java_lang_String_Class));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable__init___Ljava_lang_String__V(jobject pthis, jobject pmessage) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pmessage,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,1);
	JVMLINE(35)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(28)
	((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause=LOCAL(pthis,jobject);
	JVMLINE(36)
	((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_detailMessage=LOCAL(pmessage,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable__init___Ljava_lang_String_Ljava_lang_Throwable__V(jobject pthis, jobject pmessage, jobject pcause) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pmessage,jobject,1);
	DEFARG(pcause,jobject,2);

	JVMMETHOD(java_lang_Throwable_Class,2);
	JVMLINE(40)
	mjava_lang_Throwable__init___Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pmessage,jobject));
	JVMLINE(41)
	((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause=LOCAL(pcause,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable__init___Ljava_lang_Throwable__V(jobject pthis, jobject pcause) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcause,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,3);
	JVMLINE(45)
	mjava_lang_Throwable__init___Ljava_lang_String_Ljava_lang_Throwable__V(LOCAL(pthis,jobject),LOCAL(pcause,jobject) == jnull ? jnull : virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(pcause,jobject)),LOCAL(pcause,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_getMessage___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,4);
	JVMLINE(49)
	{ jobject $$ret = ((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_detailMessage; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_getLocalizedMessage___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,5);
	JVMLINE(53)
	{ jobject $$ret = mjava_lang_Throwable_getMessage___Ljava_lang_String_(LOCAL(pthis,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_getCause___Ljava_lang_Throwable_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,6);
	JVMLINE(57)
	{ jobject $$ret = ((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause == LOCAL(pthis,jobject) ? jnull : ((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_initCause__Ljava_lang_Throwable__Ljava_lang_Throwable_(jobject pthis, jobject pcause) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcause,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,7);
	JVMLINE(62)
	if(LOCAL(pcause,jobject) == LOCAL(pthis,jobject)){
		JVMLINE(62)
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(65)
	if(((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause != LOCAL(pthis,jobject)){
		JVMLINE(65)
		JvmThrow(mjava_lang_IllegalStateException__init____V(JvmAllocObject(&java_lang_IllegalStateException_Class)));
	}
	JVMLINE(67)
	((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_cause=LOCAL(pcause,jobject);
	JVMLINE(68)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lmsg,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,8);
	JVMLINE(72)
	LOCAL(lmsg,jobject)=mjava_lang_Throwable_getLocalizedMessage___Ljava_lang_String_(LOCAL(pthis,jobject));
	JVMLINE(73)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_Class_getName___Ljava_lang_String_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)))),LOCAL(lmsg,jobject) == jnull ? $literal1 : virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal49),LOCAL(lmsg,jobject))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_printStackTrace___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,9);
	JVMLINE(77)
	mjava_lang_Throwable_printStackTrace__Ljava_io_PrintStream__V(LOCAL(pthis,jobject),JVMGLOBALS[0]);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_printStackTrace__Ljava_io_PrintStream__V(jobject pthis, jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ps,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,10);
	JVMLINE(81)
	virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(LOCAL(ps,jobject),mjava_lang_Throwable_stackTraceString___Ljava_lang_String_(LOCAL(pthis,jobject)));
	JVMLINE(82)
	virtual_mjava_io_OutputStream_flush___V(LOCAL(ps,jobject));
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_printStackTrace__Ljava_io_PrintWriter__V(jobject pthis, jobject ppw) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ppw,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,11);
	JVMLINE(86)
	mjava_io_PrintWriter_print__Ljava_lang_String__V(LOCAL(ppw,jobject),mjava_lang_Throwable_stackTraceString___Ljava_lang_String_(LOCAL(pthis,jobject)));
	JVMLINE(87)
	virtual_mjava_io_Writer_flush___V(LOCAL(ppw,jobject));
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_stackTraceString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lsb,jobject,1);
	DEFLOCAL(lstack,jobject,2);
	DEFLOCAL(lcause,jobject,3);
	DEFLOCAL(lparentStack,jobject,4);
	DEFLOCAL(lequal,jint,5);
	DEFLOCAL(lframe,jint,6);
	DEFLOCAL(lparentFrame,jint,7);

	JVMMETHOD(java_lang_Throwable_Class,12);
	JVMLINE(91)
	LOCAL(lsb,jobject)=mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class));
	JVMLINE(94)
	LOCAL(lstack,jobject)=mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(LOCAL(pthis,jobject));
	JVMLINE(95)
	mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V(LOCAL(lsb,jobject),virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(pthis,jobject)),LOCAL(lstack,jobject),0);
	JVMLINE(98)
	LOCAL(lcause,jobject)=mjava_lang_Throwable_getCause___Ljava_lang_Throwable_(LOCAL(pthis,jobject));
	JVMLINE(123)
	while(LOCAL(lcause,jobject) != jnull){
		JVMLINE(101)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lsb,jobject),$literal50);
		JVMLINE(104)
		LOCAL(lparentStack,jobject)=LOCAL(lstack,jobject);
		JVMLINE(105)
		LOCAL(lstack,jobject)=mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(LOCAL(lcause,jobject));
		JVMLINE(121)
		if((LOCAL(lparentStack,jobject) == jnull) || ((JvmArrayLen(LOCAL(lparentStack,jobject))) == 0)){
			JVMLINE(107)
			mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V(LOCAL(lsb,jobject),virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lcause,jobject)),LOCAL(lstack,jobject),0);
		}
		else{
			JVMLINE(109)
			LOCAL(lequal,jint)=0;
			JVMLINE(110)
			LOCAL(lframe,jint)=(JvmArrayLen(LOCAL(lstack,jobject))) - 1;
			JVMLINE(111)
			LOCAL(lparentFrame,jint)=(JvmArrayLen(LOCAL(lparentStack,jobject))) - 1;
			JVMLINE(116)
			while(((LOCAL(lframe,jint) > 0) && (LOCAL(lparentFrame,jint) > 0)) && virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(JvmArrayGet_O(LOCAL(lstack,jobject),LOCAL(lframe,jint)),JvmArrayGet_O(LOCAL(lparentStack,jobject),LOCAL(lparentFrame,jint)))){
				JVMLINE(114)
				LOCAL(lequal,jint)++;
				JVMLINE(115)
				LOCAL(lframe,jint)--;
				JVMLINE(116)
				LOCAL(lparentFrame,jint)--;
			}
			JVMLINE(121)
			mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V(LOCAL(lsb,jobject),virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lcause,jobject)),LOCAL(lstack,jobject),LOCAL(lequal,jint));
		}
		JVMLINE(123)
		LOCAL(lcause,jobject)=mjava_lang_Throwable_getCause___Ljava_lang_Throwable_(LOCAL(lcause,jobject));
	}
	JVMLINE(126)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lsb,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V(jobject psb, jobject pname, jobject pstack, jint pequal) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(psb,jobject,0);
	DEFARG(pname,jobject,1);
	DEFARG(pstack,jobject,2);
	DEFARG(pequal,jint,3);
	DEFLOCAL(lnl,jobject,4);
	DEFLOCAL(li,jint,5);

	JVMMETHOD(java_lang_Throwable_Class,13);
	JVMLINE(133)
	LOCAL(lnl,jobject)=$literal38;
	JVMLINE(135)
	mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(pname,jobject));
	JVMLINE(136)
	mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(lnl,jobject));
	JVMLINE(152)
	if((LOCAL(pstack,jobject) == jnull) || ((JvmArrayLen(LOCAL(pstack,jobject))) == 0)){
		JVMLINE(140)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),$literal51);
		JVMLINE(141)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(lnl,jobject));
	}
	else{
		JVMLINE(143)
		LOCAL(li,jint)=0;
		while(LOCAL(li,jint) < ((JvmArrayLen(LOCAL(pstack,jobject))) - LOCAL(pequal,jint))){
			JVMLINE(144)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),$literal52);
			JVMLINE(145)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),(JvmArrayGet_O(LOCAL(pstack,jobject),LOCAL(li,jint))) == jnull ? $literal53 : virtual_mjava_lang_Object_toString___Ljava_lang_String_(JvmArrayGet_O(LOCAL(pstack,jobject),LOCAL(li,jint))));
			JVMLINE(146)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(lnl,jobject));
			JVMLINE(143)
			LOCAL(li,jint)++;
		}
		JVMLINE(152)
		if(LOCAL(pequal,jint) > 0){
			JVMLINE(149)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),$literal54);
			JVMLINE(150)
			mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(pequal,jint));
			JVMLINE(151)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),$literal55);
			JVMLINE(152)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(psb,jobject),LOCAL(lnl,jobject));
		}
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Throwable_Class,14);
	JVMLINE(158)
	{ jobject $$ret = ((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_stackTrace != jnull ? JvmCheckCast(mjava_lang_Object_clone___Ljava_lang_Object_(((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_stackTrace),&ArrOf_java_lang_StackTraceElement_Class) : JvmAllocObjectArray1(&ArrOf_java_lang_StackTraceElement_Class,0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_setStackTrace___Ljava_lang_StackTraceElement__V(jobject pthis, jobject pstackTrace) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstackTrace,jobject,1);
	DEFLOCAL(li,jint,2);
	DEFLOCAL(lst,jobject,3);

	JVMMETHOD(java_lang_Throwable_Class,15);
	JVMLINE(162)
	LOCAL(li,jint)=JvmArrayLen(LOCAL(pstackTrace,jobject));
	JVMLINE(163)
	LOCAL(lst,jobject)=JvmAllocObjectArray1(&ArrOf_java_lang_StackTraceElement_Class,LOCAL(li,jint));
	JVMLINE(168)
	while((--LOCAL(li,jint)) >= 0){
		JVMLINE(166)
		JvmArraySet_O(LOCAL(lst,jobject),LOCAL(li,jint),JvmArrayGet_O(LOCAL(pstackTrace,jobject),LOCAL(li,jint)));
		JVMLINE(168)
		if((JvmArrayGet_O(LOCAL(lst,jobject),LOCAL(li,jint))) == jnull){
			JVMLINE(168)
			JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal56),LOCAL(li,jint)),$literal57))));
		}
	}
	JVMLINE(172)
	((java_lang_Throwable*)(LOCAL(pthis,jobject)))->fjava_lang_Throwable_stackTrace=LOCAL(lst,jobject);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Throwable_addSuppressed__Ljava_lang_Throwable__V(jobject pthis, jobject pexception) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pexception,jobject,1);

	JVMMETHOD(java_lang_Throwable_Class,16);
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Throwable_Class;
JvmClass ArrOf_java_lang_Throwable_Class;
JvmClass ArrOf_ArrOf_java_lang_Throwable_Class;

jbool java_lang_Throwable_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Throwable_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OOOIV(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_lang_Throwable() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Serializable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Throwable_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Throwable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Throwable);
	cls->name = JvmMakeString(L"java.lang.Throwable",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Throwable_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Throwable.java",14);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Serializable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 17, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"<init>", 6), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 32, 32, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=32, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"<init>", 6), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Throwable__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 28, 36, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"message",7), .startLine=36, .endLine=36, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=28, .endLine=36, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"<init>", 6), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&java_lang_Throwable_Class}), &mjava_lang_Throwable__init___Ljava_lang_String_Ljava_lang_Throwable__V, &invoke_OOO 
#ifdef JVM_DEBUG
 , 40, 41, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"message",7), .startLine=40, .endLine=41, .type=&java_lang_String_Class},{.name=JvmMakeString(L"cause",5), .startLine=41, .endLine=41, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=41, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"<init>", 6), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Throwable_Class}), &mjava_lang_Throwable__init___Ljava_lang_Throwable__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 45, 45, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cause",5), .startLine=45, .endLine=45, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=45, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"getMessage", 10), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_getMessage___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 49, 49, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=49, .endLine=49, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"getLocalizedMessage", 19), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_getLocalizedMessage___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 53, 53, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=53, .endLine=53, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"getCause", 8), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_getCause___Ljava_lang_Throwable_, &invoke_O 
#ifdef JVM_DEBUG
 , 57, 57, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=57, .endLine=57, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"initCause", 9), &java_lang_Throwable_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Throwable_Class}), &mjava_lang_Throwable_initCause__Ljava_lang_Throwable__Ljava_lang_Throwable_, &invoke_OO 
#ifdef JVM_DEBUG
 , 62, 68, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cause",5), .startLine=62, .endLine=68, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"this",4), .startLine=62, .endLine=68, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 72, 73, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=72, .endLine=73, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"msg",3), .startLine=72, .endLine=73, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"printStackTrace", 15), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_printStackTrace___V, &invoke_V 
#ifdef JVM_DEBUG
 , 77, 77, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=77, .endLine=77, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"printStackTrace", 15), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_io_PrintStream_Class}), &mjava_lang_Throwable_printStackTrace__Ljava_io_PrintStream__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 81, 82, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=81, .endLine=82, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"this",4), .startLine=81, .endLine=82, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"printStackTrace", 15), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_io_PrintWriter_Class}), &mjava_lang_Throwable_printStackTrace__Ljava_io_PrintWriter__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 86, 87, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"pw",2), .startLine=86, .endLine=87, .type=&java_io_PrintWriter_Class},{.name=JvmMakeString(L"this",4), .startLine=86, .endLine=87, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"stackTraceString", 16), &java_lang_String_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_stackTraceString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 91, 126, 0, 8, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=94, .endLine=126, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"sb",2), .startLine=91, .endLine=126, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"stack",5), .startLine=94, .endLine=126, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"cause",5), .startLine=98, .endLine=126, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"parentStack",11), .startLine=104, .endLine=126, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"equal",5), .startLine=109, .endLine=126, .type=&I_Class},{.name=JvmMakeString(L"frame",5), .startLine=110, .endLine=126, .type=&I_Class},{.name=JvmMakeString(L"parentFrame",11), .startLine=111, .endLine=126, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"stackTraceStringBuffer", 22), &V_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&java_lang_StringBuilder_Class,&java_lang_String_Class,&ArrOf_java_lang_StackTraceElement_Class,&I_Class}), &mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V, &invoke_OOOIV 
#ifdef JVM_DEBUG
 , 133, 152, 4, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"sb",2), .startLine=135, .endLine=152, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"name",4), .startLine=135, .endLine=152, .type=&java_lang_String_Class},{.name=JvmMakeString(L"stack",5), .startLine=143, .endLine=152, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"equal",5), .startLine=143, .endLine=152, .type=&I_Class},{.name=JvmMakeString(L"nl",2), .startLine=133, .endLine=152, .type=&java_lang_String_Class},{.name=JvmMakeString(L"i",1), .startLine=143, .endLine=152, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"getStackTrace", 13), &ArrOf_java_lang_StackTraceElement_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_, &invoke_O 
#ifdef JVM_DEBUG
 , 158, 158, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=158, .endLine=158, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"setStackTrace", 13), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_StackTraceElement_Class}), &mjava_lang_Throwable_setStackTrace___Ljava_lang_StackTraceElement__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 162, 172, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"stackTrace",10), .startLine=162, .endLine=172, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"this",4), .startLine=172, .endLine=172, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"i",1), .startLine=162, .endLine=172, .type=&I_Class},{.name=JvmMakeString(L"st",2), .startLine=163, .endLine=172, .type=&ArrOf_java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Throwable_Class, JvmMakeString(L"addSuppressed", 13), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Throwable_Class}), &mjava_lang_Throwable_addSuppressed__Ljava_lang_Throwable__V, &invoke_OV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"exception",9), .startLine=0, .endLine=0, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Throwable_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 3, &(JvmField*[]){
	JvmMakeField(&java_lang_Throwable_Class, JvmMakeString(L"detailMessage", 13), &java_lang_String_Class, 18, (void*)offsetof(java_lang_Throwable,fjava_lang_Throwable_detailMessage))
	,JvmMakeField(&java_lang_Throwable_Class, JvmMakeString(L"cause", 5), &java_lang_Throwable_Class, 2, (void*)offsetof(java_lang_Throwable,fjava_lang_Throwable_cause))
	,JvmMakeField(&java_lang_Throwable_Class, JvmMakeString(L"stackTrace", 10), &ArrOf_java_lang_StackTraceElement_Class, 2, (void*)offsetof(java_lang_Throwable,fjava_lang_Throwable_stackTrace))
	});

	cls = &ArrOf_java_lang_Throwable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Throwable",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Throwable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Throwable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Throwable",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Throwable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
