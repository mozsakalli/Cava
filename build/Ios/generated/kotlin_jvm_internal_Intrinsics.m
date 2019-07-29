#include "java_lang_StringBuilder.h"
#include "java_lang_StackTraceElement.h"
#include "kotlin_jvm_internal_Intrinsics.h"
#include "java_util_Arrays.h"
#include "java_lang_IllegalArgumentException.h"
#include "kotlin_KotlinNullPointerException.h"
#include "java_lang_Thread.h"
extern jobject $literal10;
extern jobject $literal9;
extern jobject $literal8;


jobject mkotlin_jvm_internal_Intrinsics__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,0);
	JVMLINE(17)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mkotlin_jvm_internal_Intrinsics_throwNpe___V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,1);
	JVMLINE(37)
	JvmThrow(JvmCheckCast(mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable__Ljava_lang_Throwable_(mkotlin_KotlinNullPointerException__init____V(JvmAllocObject(&kotlin_KotlinNullPointerException_Class))),&kotlin_KotlinNullPointerException_Class));
	thread->framePtr = entryFramePtr;
}

void mkotlin_jvm_internal_Intrinsics_checkParameterIsNotNull__Ljava_lang_Object_Ljava_lang_String__V(jobject pvalue, jobject pparamName) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jobject,0);
	DEFARG(pparamName,jobject,1);

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,2);
	JVMLINE(116)
	if(LOCAL(pvalue,jobject) == jnull){
		JVMLINE(116)
		mkotlin_jvm_internal_Intrinsics_throwParameterIsNullException__Ljava_lang_String__V(LOCAL(pparamName,jobject));
	}
	thread->framePtr = entryFramePtr;
}

void mkotlin_jvm_internal_Intrinsics_throwParameterIsNullException__Ljava_lang_String__V(jobject pparamName) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pparamName,jobject,0);
	DEFLOCAL(lstackTraceElements,jobject,1);
	DEFLOCAL(lcaller,jobject,2);
	DEFLOCAL(lclassName,jobject,3);
	DEFLOCAL(lmethodName,jobject,4);
	DEFLOCAL(lexception,jobject,5);

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,3);
	JVMLINE(127)
	LOCAL(lstackTraceElements,jobject)=mjava_lang_Thread_getStackTrace____Ljava_lang_StackTraceElement_(mjava_lang_Thread_currentThread___Ljava_lang_Thread_());
	JVMLINE(133)
	LOCAL(lcaller,jobject)=JvmArrayGet_O(LOCAL(lstackTraceElements,jobject),3);
	JVMLINE(134)
	LOCAL(lclassName,jobject)=mjava_lang_StackTraceElement_getClassName___Ljava_lang_String_(LOCAL(lcaller,jobject));
	JVMLINE(135)
	LOCAL(lmethodName,jobject)=mjava_lang_StackTraceElement_getMethodName___Ljava_lang_String_(LOCAL(lcaller,jobject));
	JVMLINE(137)
	LOCAL(lexception,jobject)=mjava_lang_IllegalArgumentException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IllegalArgumentException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal8),LOCAL(lclassName,jobject)),$literal9),LOCAL(lmethodName,jobject)),$literal10),LOCAL(pparamName,jobject))));
	JVMLINE(141)
	JvmThrow(JvmCheckCast(mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable__Ljava_lang_Throwable_(LOCAL(lexception,jobject)),&java_lang_IllegalArgumentException_Class));
	thread->framePtr = entryFramePtr;
}

jobject mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable__Ljava_lang_Throwable_(jobject pthrowable) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthrowable,jobject,0);

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,4);
	JVMLINE(237)
	{ jobject $$ret = mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable_Ljava_lang_String__Ljava_lang_Throwable_(LOCAL(pthrowable,jobject),mjava_lang_Class_getName___Ljava_lang_String_(&kotlin_jvm_internal_Intrinsics_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable_Ljava_lang_String__Ljava_lang_Throwable_(jobject pthrowable, jobject pclassNameToDrop) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthrowable,jobject,0);
	DEFARG(pclassNameToDrop,jobject,1);
	DEFLOCAL(lstackTrace,jobject,2);
	DEFLOCAL(lsize,jint,3);
	DEFLOCAL(llastIntrinsic,jint,4);
	DEFLOCAL(li,jint,5);
	DEFLOCAL(lnewStackTrace,jobject,6);

	JVMMETHOD(kotlin_jvm_internal_Intrinsics_Class,5);
	JVMLINE(241)
	LOCAL(lstackTrace,jobject)=mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(LOCAL(pthrowable,jobject));
	JVMLINE(242)
	LOCAL(lsize,jint)=JvmArrayLen(LOCAL(lstackTrace,jobject));
	JVMLINE(244)
	LOCAL(llastIntrinsic,jint)=-1;
	JVMLINE(245)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < LOCAL(lsize,jint)){
		JVMLINE(247)
		if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pclassNameToDrop,jobject),mjava_lang_StackTraceElement_getClassName___Ljava_lang_String_(JvmArrayGet_O(LOCAL(lstackTrace,jobject),LOCAL(li,jint))))){
			JVMLINE(247)
			LOCAL(llastIntrinsic,jint)=LOCAL(li,jint);
		}
		JVMLINE(245)
		LOCAL(li,jint)++;
	}
	JVMLINE(251)
	LOCAL(lnewStackTrace,jobject)=JvmCheckCast(mjava_util_Arrays_copyOfRange___Ljava_lang_Object_II__Ljava_lang_Object_(LOCAL(lstackTrace,jobject),LOCAL(llastIntrinsic,jint) + 1,LOCAL(lsize,jint)),&ArrOf_java_lang_StackTraceElement_Class);
	JVMLINE(252)
	mjava_lang_Throwable_setStackTrace___Ljava_lang_StackTraceElement__V(LOCAL(pthrowable,jobject),LOCAL(lnewStackTrace,jobject));
	JVMLINE(253)
	{ jobject $$ret = LOCAL(pthrowable,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass kotlin_jvm_internal_Intrinsics_Class;
JvmClass ArrOf_kotlin_jvm_internal_Intrinsics_Class;
JvmClass ArrOf_ArrOf_kotlin_jvm_internal_Intrinsics_Class;

jbool kotlin_jvm_internal_Intrinsics_isChildOf(JvmClass* klass) {
	return klass == &kotlin_jvm_internal_Intrinsics_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OOV(jobject,jobject,jobject);
void JvmSetup_kotlin_jvm_internal_Intrinsics() {
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
	JvmClass* cls = &kotlin_jvm_internal_Intrinsics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(kotlin_jvm_internal_Intrinsics);
	cls->name = JvmMakeString(L"kotlin.jvm.internal.Intrinsics",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &kotlin_jvm_internal_Intrinsics_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Intrinsics.java",15);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 6, &(JvmMethod*[]){
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"<init>", 6), &kotlin_jvm_internal_Intrinsics_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mkotlin_jvm_internal_Intrinsics__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 17, 17, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=17, .endLine=17, .type=&kotlin_jvm_internal_Intrinsics_Class}}
#endif
 ),
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"throwNpe", 8), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mkotlin_jvm_internal_Intrinsics_throwNpe___V, &invoke_V 
#ifdef JVM_DEBUG
 , 37, 37, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 ),
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"checkParameterIsNotNull", 23), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&java_lang_String_Class}), &mkotlin_jvm_internal_Intrinsics_checkParameterIsNotNull__Ljava_lang_Object_Ljava_lang_String__V, &invoke_OOV 
#ifdef JVM_DEBUG
 , 116, 116, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=116, .endLine=116, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"paramName",9), .startLine=116, .endLine=116, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"throwParameterIsNullException", 29), &V_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mkotlin_jvm_internal_Intrinsics_throwParameterIsNullException__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 127, 141, 1, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"paramName",9), .startLine=137, .endLine=141, .type=&java_lang_String_Class},{.name=JvmMakeString(L"stackTraceElements",18), .startLine=127, .endLine=141, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"caller",6), .startLine=133, .endLine=141, .type=&java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"className",9), .startLine=134, .endLine=141, .type=&java_lang_String_Class},{.name=JvmMakeString(L"methodName",10), .startLine=135, .endLine=141, .type=&java_lang_String_Class},{.name=JvmMakeString(L"exception",9), .startLine=137, .endLine=141, .type=&java_lang_IllegalArgumentException_Class}}
#endif
 ),
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"sanitizeStackTrace", 18), &java_lang_Throwable_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Throwable_Class}), &mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable__Ljava_lang_Throwable_, &invoke_OO 
#ifdef JVM_DEBUG
 , 237, 237, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"throwable",9), .startLine=237, .endLine=237, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&kotlin_jvm_internal_Intrinsics_Class, JvmMakeString(L"sanitizeStackTrace", 18), &java_lang_Throwable_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Throwable_Class,&java_lang_String_Class}), &mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable_Ljava_lang_String__Ljava_lang_Throwable_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 241, 253, 2, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"throwable",9), .startLine=241, .endLine=253, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"classNameToDrop",15), .startLine=247, .endLine=253, .type=&java_lang_String_Class},{.name=JvmMakeString(L"stackTrace",10), .startLine=241, .endLine=253, .type=&ArrOf_java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"size",4), .startLine=242, .endLine=253, .type=&I_Class},{.name=JvmMakeString(L"lastIntrinsic",13), .startLine=244, .endLine=253, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=245, .endLine=253, .type=&I_Class},{.name=JvmMakeString(L"newStackTrace",13), .startLine=251, .endLine=253, .type=&ArrOf_java_lang_StackTraceElement_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_kotlin_jvm_internal_Intrinsics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[kotlin.jvm.internal.Intrinsics",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &kotlin_jvm_internal_Intrinsics_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_kotlin_jvm_internal_Intrinsics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[kotlin.jvm.internal.Intrinsics",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_kotlin_jvm_internal_Intrinsics_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
