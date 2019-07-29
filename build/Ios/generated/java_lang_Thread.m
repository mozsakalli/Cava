#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_Byte.h"
#include "java_lang_Boolean.h"
#include "java_lang_InterruptedException.h"
#include "java_lang_Void.h"
#include "java_lang_Float.h"
#include "java_lang_Long.h"
#include "java_lang_Short.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_Character.h"
#include "cava_c_CLib.h"
#include "java_lang_Throwable.h"
#include "java_lang_Double.h"
#include "java_util_AbstractCollection.h"
#include "java_lang_System.h"
#include "java_lang_Thread.h"
extern jobject $literal47;


jint fjava_lang_Thread_MAX_PRIORITY;
jint fjava_lang_Thread_MIN_PRIORITY;
jint fjava_lang_Thread_NORM_PRIORITY;
jobject mjava_lang_Thread__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,0);
	JVMLINE(47)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority=5;
	JVMLINE(48)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target=LOCAL(pthis,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread__init___Ljava_lang_Runnable__V(jobject pthis, jobject ptarget) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ptarget,jobject,1);

	JVMMETHOD(java_lang_Thread_Class,1);
	JVMLINE(51)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority=5;
	JVMLINE(52)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target=LOCAL(ptarget,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread__init___Ljava_lang_Runnable_Ljava_lang_String__V(jobject pthis, jobject ptarget, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ptarget,jobject,1);
	DEFARG(pname,jobject,2);

	JVMMETHOD(java_lang_Thread_Class,2);
	JVMLINE(55)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority=5;
	JVMLINE(56)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target=LOCAL(ptarget,jobject);
	JVMLINE(57)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_name=LOCAL(pname,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread__init___Ljava_lang_String__V(jobject pthis, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);

	JVMMETHOD(java_lang_Thread_Class,3);
	JVMLINE(60)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority=5;
	JVMLINE(61)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_name=LOCAL(pname,jobject);
	JVMLINE(62)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target=LOCAL(pthis,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Thread_getId___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,4);
	JVMLINE(66)
	{ jlong $$ret = (jlong)LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread_currentThread___Ljava_lang_Thread_() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Thread_Class,5);
	JVMLINE(70)
	{ jobject $$ret = JvmCurrentThread(); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread_getName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,6);
	JVMLINE(74)
	{ jobject $$ret = ((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_name; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread_getStackTrace____Ljava_lang_StackTraceElement_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lexception,jobject,1);

	JVMMETHOD(java_lang_Thread_Class,7);
	JVMLINE(78)
	LOCAL(lexception,jobject)=JvmCheckCast(((JvmThread*)LOCAL(pthis,jobject))->exception,&java_lang_Throwable_Class);
	JVMLINE(79)
	if(LOCAL(lexception,jobject) == jnull){
		{ jobject $$ret = JvmAllocObjectArray1(&ArrOf_java_lang_StackTraceElement_Class,0); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(80)
	{ jobject $$ret = mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(LOCAL(lexception,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Thread_getPriority___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,8);
	JVMLINE(84)
	{ jint $$ret = ((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_interrupt___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,9);
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Thread_isAlive___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,10);
	JVMLINE(91)
	{ jbool $$ret = ((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_alive; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_run___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,11);
	JVMLINE(97)
	if(((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target != jnull){
		interface_mjava_lang_Runnable_run___V(((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_target);
	}
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_setPriority__I_V(jobject pthis, jint pnewPriority) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pnewPriority,jint,1);

	JVMMETHOD(java_lang_Thread_Class,12);
	JVMLINE(101)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_priority=LOCAL(pnewPriority,jint);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_sleep__J_V(jlong pmillis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pmillis,jlong,0);

	JVMMETHOD(java_lang_Thread_Class,13);
	JVMLINE(105)
	usleep(LOCAL(pmillis,jlong) * 1000);;
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_start___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,14);
	JVMLINE(109)
	pthread_create(&((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_handle, NULL, &mjava_lang_Thread_threadProc___Lcava_c_VoidPtr_, LOCAL(pthis,jobject));;
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,15);
	JVMLINE(113)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal47),((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_name)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_yield___V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFLOCAL(lstack_07_0,jobject,0);

	JVMMETHOD(java_lang_Thread_Class,16);
	JVMLINE(118)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(118)
			mjava_lang_Thread_sleep__J_V(1);
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_InterruptedException_Class)){
			LOCAL(lstack_07_0,jobject)=thread->exception;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Thread_threadProc___Lcava_c_VoidPtr_(jobject pthis) {
	JvmRegisterCurrentThread(pthis);
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lvar_1_04,jobject,1);
	DEFLOCAL(lvar_2_13,jobject,2);
	DEFLOCAL(lvar_1_40,jobject,3);
	DEFLOCAL(lvar_3_4F,jobject,4);
	DEFLOCAL(lstack_2D_0,jobject,5);

	JVMMETHOD(java_lang_Thread_Class,17);
	JVMLINE(123)
	JvmMonitorEnter(LOCAL(lvar_1_04,jobject)=JVMGLOBALS[6]);
	JVMLINE(125)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(124)
			virtual_mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(JVMGLOBALS[6],LOCAL(pthis,jobject));
			JVMLINE(125)
			JvmMonitorExit(LOCAL(lvar_1_04,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_2_13,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(lvar_1_04,jobject));
			JvmThrow(LOCAL(lvar_2_13,jobject));
			JvmThrow(thread->exception);
		}
	}
	JVMLINE(126)
	gcRegisterCurrentThread();;
	JVMLINE(127)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_alive=jtrue;
	JVMLINE(129)
	/* try */
	jint exception1 = thread->exceptionCount++;
	thread->exceptions[exception1].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception1].jmp) == 0) {
		{
			JVMLINE(129)
			mjava_lang_Thread_run___V(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception1;
	} else {
		thread->exceptionCount = exception1;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_Throwable_Class)){
			LOCAL(lstack_2D_0,jobject)=thread->exception;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	JVMLINE(133)
	((java_lang_Thread*)(LOCAL(pthis,jobject)))->fjava_lang_Thread_alive=jfalse;
	JVMLINE(134)
	gcUnregisterCurrentThread();;
	JVMLINE(135)
	JvmMonitorEnter(LOCAL(lvar_1_40,jobject)=JVMGLOBALS[6]);
	JVMLINE(137)
	/* try */
	jint exception2 = thread->exceptionCount++;
	thread->exceptions[exception2].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception2].jmp) == 0) {
		{
			JVMLINE(136)
			virtual_mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z(JVMGLOBALS[6],LOCAL(pthis,jobject));
			JVMLINE(137)
			JvmMonitorExit(LOCAL(lvar_1_40,jobject));
		}
		thread->exceptionCount = exception2;
	} else {
		thread->exceptionCount = exception2;
		/* catch */
		{
			LOCAL(lvar_3_4F,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(lvar_1_40,jobject));
			JvmThrow(LOCAL(lvar_3_4F,jobject));
			JvmThrow(thread->exception);
		}
	}
	JVMLINE(138)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread_setDaemon__Z_V(jobject pthis, jbool pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jbool,1);

	JVMMETHOD(java_lang_Thread_Class,18);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Thread__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Thread_Class,19);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	mjava_lang_System__clinit____V();
	mjava_lang_Double__clinit____V();
	mjava_lang_Long__clinit____V();
	mjava_lang_Float__clinit____V();
	mjava_lang_Void__clinit____V();
	mcava_c_CLib__clinit____V();
	mjava_lang_Boolean__clinit____V();
	mjava_lang_Byte__clinit____V();
	mjava_lang_String__clinit____V();
	mjava_lang_Character__clinit____V();
	mjava_lang_Integer__clinit____V();
	mjava_lang_Short__clinit____V();
	JVMLINE(45)
	virtual_mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(JVMGLOBALS[6]=mjava_util_ArrayList__init____V(JvmAllocObject(&java_util_ArrayList_Class)),mjava_lang_Thread_currentThread___Ljava_lang_Thread_());
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Thread_Class;
JvmClass ArrOf_java_lang_Thread_Class;
JvmClass ArrOf_ArrOf_java_lang_Thread_Class;

jbool java_lang_Thread_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Thread_Class || klass == &java_lang_Runnable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_JV(jobject,jobject,jobject);
extern jobject invoke_IV(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
extern jobject invoke_ZV(jobject,jobject,jobject);
void JvmSetup_java_lang_Thread() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_lang_Runnable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Thread_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(31 * sizeof(void*));
	_iTable[30] = (void*)&mjava_lang_Thread_run___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Thread_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmThread);
	cls->name = JvmMakeString(L"java.lang.Thread",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Thread_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Thread.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Runnable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 20, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"<init>", 6), &java_lang_Thread_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 32, 48, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=48, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"<init>", 6), &java_lang_Thread_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Runnable_Class}), &mjava_lang_Thread__init___Ljava_lang_Runnable__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 32, 52, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"target",6), .startLine=52, .endLine=52, .type=&java_lang_Runnable_Class},{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=52, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"<init>", 6), &java_lang_Thread_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Runnable_Class,&java_lang_String_Class}), &mjava_lang_Thread__init___Ljava_lang_Runnable_Ljava_lang_String__V, &invoke_OOO 
#ifdef JVM_DEBUG
 , 32, 57, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"target",6), .startLine=56, .endLine=57, .type=&java_lang_Runnable_Class},{.name=JvmMakeString(L"name",4), .startLine=57, .endLine=57, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=57, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"<init>", 6), &java_lang_Thread_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Thread__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 32, 62, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=61, .endLine=62, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=62, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"getId", 5), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_getId___J, &invoke_J 
#ifdef JVM_DEBUG
 , 66, 66, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=66, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"currentThread", 13), &java_lang_Thread_Class, 25, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_currentThread___Ljava_lang_Thread_, &invoke_O 
#ifdef JVM_DEBUG
 , 70, 70, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"getName", 7), &java_lang_String_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_getName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 74, 74, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=74, .endLine=74, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"getStackTrace", 13), &ArrOf_java_lang_StackTraceElement_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_getStackTrace____Ljava_lang_StackTraceElement_, &invoke_O 
#ifdef JVM_DEBUG
 , 78, 80, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=78, .endLine=80, .type=&java_lang_Thread_Class},{.name=JvmMakeString(L"exception",9), .startLine=78, .endLine=80, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"getPriority", 11), &I_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_getPriority___I, &invoke_I 
#ifdef JVM_DEBUG
 , 84, 84, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=84, .endLine=84, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"interrupt", 9), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_interrupt___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"isAlive", 7), &Z_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_isAlive___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 91, 91, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=91, .endLine=91, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"run", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_run___V, &invoke_V 
#ifdef JVM_DEBUG
 , 97, 97, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=97, .endLine=97, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"setPriority", 11), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_Thread_setPriority__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 101, 101, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"newPriority",11), .startLine=101, .endLine=101, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=101, .endLine=101, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"sleep", 5), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Thread_sleep__J_V, &invoke_JV 
#ifdef JVM_DEBUG
 , 105, 105, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"millis",6), .startLine=105, .endLine=105, .type=&J_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"start", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_start___V, &invoke_V 
#ifdef JVM_DEBUG
 , 109, 109, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=109, .endLine=109, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 113, 113, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=113, .endLine=113, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"yield", 5), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_yield___V, &invoke_V 
#ifdef JVM_DEBUG
 , 118, 118, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"stack_07_0",10), .startLine=118, .endLine=118, .type=&java_lang_InterruptedException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"threadProc", 10), &cava_c_VoidPtr_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread_threadProc___Lcava_c_VoidPtr_, &invoke_O 
#ifdef JVM_DEBUG
 , 123, 138, 0, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=124, .endLine=138, .type=&java_lang_Thread_Class},{.name=JvmMakeString(L"var_1_04",8), .startLine=123, .endLine=138, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"var_2_13",8), .startLine=125, .endLine=138, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"var_1_40",8), .startLine=135, .endLine=138, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"var_3_4F",8), .startLine=137, .endLine=138, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"stack_2D_0",10), .startLine=129, .endLine=138, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"setDaemon", 9), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mjava_lang_Thread_setDaemon__Z_V, &invoke_ZV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=0, .endLine=0, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Thread_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Thread_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Thread__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 45, 45, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 8, &(JvmField*[]){
	JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"target", 6), &java_lang_Runnable_Class, 2, (void*)offsetof(java_lang_Thread,fjava_lang_Thread_target))
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"alive", 5), &Z_Class, 2, (void*)offsetof(java_lang_Thread,fjava_lang_Thread_alive))
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"name", 4), &java_lang_String_Class, 2, (void*)offsetof(java_lang_Thread,fjava_lang_Thread_name))
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"priority", 8), &I_Class, 2, (void*)offsetof(java_lang_Thread,fjava_lang_Thread_priority))
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"MAX_PRIORITY", 12), &I_Class, 25, &fjava_lang_Thread_MAX_PRIORITY)
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"MIN_PRIORITY", 12), &I_Class, 25, &fjava_lang_Thread_MIN_PRIORITY)
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"NORM_PRIORITY", 13), &I_Class, 25, &fjava_lang_Thread_NORM_PRIORITY)
	,JvmMakeField(&java_lang_Thread_Class, JvmMakeString(L"THREADLIST", 10), &java_util_ArrayList_Class, 25, &JVMGLOBALS[6])
	});

	cls = &ArrOf_java_lang_Thread_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Thread",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Thread_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Thread_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Thread",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Thread_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
