#include "java_lang_StringIndexOutOfBoundsException.h"
#include "java_io_Writer.h"
#include "java_lang_Throwable.h"


jobject mjava_io_Writer__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_Writer_Class,0);
	JVMLINE(31)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_io_Writer*)(LOCAL(pthis,jobject)))->fjava_io_Writer_lock=LOCAL(pthis,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_Writer_write__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);

	JVMMETHOD(java_io_Writer_Class,1);
	JVMLINE(81)
	virtual_mjava_io_Writer_write__Ljava_lang_String_II_V(LOCAL(pthis,jobject),LOCAL(pstr,jobject),0,mjava_lang_String_length___I(LOCAL(pstr,jobject)));
	thread->framePtr = entryFramePtr;
}

void mjava_io_Writer_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poff, jint plen) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFARG(poff,jint,2);
	DEFARG(plen,jint,3);
	DEFLOCAL(lbuf,jobject,4);
	DEFLOCAL(lvar_5_21,jobject,5);
	DEFLOCAL(lvar_6_34,jobject,6);

	JVMMETHOD(java_io_Writer_Class,2);
	JVMLINE(89)
	if(LOCAL(plen,jint) < 0){
		JVMLINE(89)
		JvmThrow(mjava_lang_StringIndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_StringIndexOutOfBoundsException_Class)));
	}
	JVMLINE(91)
	LOCAL(lbuf,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(plen,jint));
	JVMLINE(92)
	mjava_lang_String_getChars__II_CI_V(LOCAL(pstr,jobject),LOCAL(poff,jint),LOCAL(poff,jint) + LOCAL(plen,jint),LOCAL(lbuf,jobject),0);
	JVMLINE(94)
	JvmMonitorEnter(LOCAL(lvar_5_21,jobject)=((java_io_Writer*)(LOCAL(pthis,jobject)))->fjava_io_Writer_lock);
	JVMLINE(96)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(95)
			virtual_mjava_io_Writer_write___CII_V(LOCAL(pthis,jobject),LOCAL(lbuf,jobject),0,JvmArrayLen(LOCAL(lbuf,jobject)));
			JVMLINE(96)
			JvmMonitorExit(LOCAL(lvar_5_21,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_6_34,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(lvar_5_21,jobject));
			JvmThrow(LOCAL(lvar_6_34,jobject));
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void virtual_mjava_io_Writer_close___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[25])(pthis);
}
void virtual_mjava_io_Writer_flush___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[22])(pthis);
}
void virtual_mjava_io_Writer_write___CII_V(jobject pthis, jobject pp0, jint pp1, jint pp2) {
	((void (*)(jobject,jobject,jint,jint))((JvmObject*)pthis)->klass->vtable[23])(pthis,pp0,pp1,pp2);
}
void virtual_mjava_io_Writer_write__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[24])(pthis,pstr);
}
void virtual_mjava_io_Writer_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poff, jint plen) {
	((void (*)(jobject,jobject,jint,jint))((JvmObject*)pthis)->klass->vtable[21])(pthis,pstr,poff,plen);
}
JvmClass java_io_Writer_Class;
JvmClass ArrOf_java_io_Writer_Class;
JvmClass ArrOf_ArrOf_java_io_Writer_Class;

jbool java_io_Writer_isChildOf(JvmClass* klass) {
	return klass == &java_io_Writer_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OIIV(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_io_Writer() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Closeable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[25] = jnull;
	_vTable[22] = jnull;
	_vTable[23] = jnull;
	_vTable[24] = &mjava_io_Writer_write__Ljava_lang_String__V;
	_vTable[21] = &mjava_io_Writer_write__Ljava_lang_String_II_V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&virtual_mjava_io_Writer_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_Writer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_Writer);
	cls->name = JvmMakeString(L"java.io.Writer",14);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_Writer_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Writer.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Closeable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_Writer_Class, JvmMakeString(L"<init>", 6), &java_io_Writer_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_Writer__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 31, 32, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=32, .type=&java_io_Writer_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_Writer_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_Writer_write__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 81, 81, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=81, .endLine=81, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=81, .endLine=81, .type=&java_io_Writer_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_Writer_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&I_Class}), &mjava_io_Writer_write__Ljava_lang_String_II_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 89, 96, 3, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=92, .endLine=96, .type=&java_lang_String_Class},{.name=JvmMakeString(L"off",3), .startLine=92, .endLine=96, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=89, .endLine=96, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=94, .endLine=96, .type=&java_io_Writer_Class},{.name=JvmMakeString(L"buf",3), .startLine=91, .endLine=96, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"var_5_21",8), .startLine=94, .endLine=96, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"var_6_34",8), .startLine=96, .endLine=96, .type=&java_lang_Throwable_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_io_Writer_Class, JvmMakeString(L"lock", 4), &java_lang_Object_Class, 4, (void*)offsetof(java_io_Writer,fjava_io_Writer_lock))
	});

	cls = &ArrOf_java_io_Writer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.Writer",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_Writer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_Writer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.Writer",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_Writer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
