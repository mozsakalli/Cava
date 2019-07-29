#include "java_util_Arrays.h"
#include "java_io_FilterOutputStream.h"
#include "java_lang_Throwable.h"


jobject mjava_io_FilterOutputStream__init___Ljava_io_OutputStream__V(jobject pthis, jobject pout) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pout,jobject,1);

	JVMMETHOD(java_io_FilterOutputStream_Class,0);
	JVMLINE(45)
	mjava_io_OutputStream__init____V(LOCAL(pthis,jobject));
	JVMLINE(46)
	((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out=LOCAL(pout,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_FilterOutputStream_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lthrown,jobject,1);
	DEFLOCAL(le,jobject,2);

	JVMMETHOD(java_io_FilterOutputStream_Class,1);
	JVMLINE(57)
	LOCAL(lthrown,jobject)=jnull;
	JVMLINE(61)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(59)
			virtual_mjava_io_OutputStream_flush___V(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_Throwable_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(61)
			LOCAL(lthrown,jobject)=LOCAL(le,jobject);
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	JVMLINE(68)
	/* try */
	jint exception1 = thread->exceptionCount++;
	thread->exceptions[exception1].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception1].jmp) == 0) {
		{
			JVMLINE(65)
			virtual_mjava_io_OutputStream_close___V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out);
		}
		thread->exceptionCount = exception1;
	} else {
		thread->exceptionCount = exception1;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_Throwable_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(68)
			if(LOCAL(lthrown,jobject) == jnull){
				JVMLINE(68)
				LOCAL(lthrown,jobject)=LOCAL(le,jobject);
			}
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_FilterOutputStream_flush___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_FilterOutputStream_Class,2);
	JVMLINE(82)
	virtual_mjava_io_OutputStream_flush___V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out);
	thread->framePtr = entryFramePtr;
}

void mjava_io_FilterOutputStream_write___BII_V(jobject pthis, jobject pbuffer, jint poffset, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbuffer,jobject,1);
	DEFARG(poffset,jint,2);
	DEFARG(plength,jint,3);
	DEFLOCAL(li,jint,4);

	JVMMETHOD(java_io_FilterOutputStream_Class,3);
	JVMLINE(104)
	mjava_util_Arrays_checkOffsetAndCount__III_V(JvmArrayLen(LOCAL(pbuffer,jobject)),LOCAL(poffset,jint),LOCAL(plength,jint));
	JVMLINE(105)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < LOCAL(plength,jint)){
		JVMLINE(108)
		virtual_mjava_io_OutputStream_write__I_V(LOCAL(pthis,jobject),JvmArrayGet_B(LOCAL(pbuffer,jobject),LOCAL(poffset,jint) + LOCAL(li,jint)));
		JVMLINE(105)
		LOCAL(li,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_FilterOutputStream_write__I_V(jobject pthis, jint poneByte) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(poneByte,jint,1);

	JVMMETHOD(java_io_FilterOutputStream_Class,4);
	JVMLINE(123)
	virtual_mjava_io_OutputStream_write__I_V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out,LOCAL(poneByte,jint));
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_FilterOutputStream_Class;
JvmClass ArrOf_java_io_FilterOutputStream_Class;
JvmClass ArrOf_ArrOf_java_io_FilterOutputStream_Class;

jbool java_io_FilterOutputStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_FilterOutputStream_Class || klass == &java_io_OutputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OIIV(jobject,jobject,jobject);
extern jobject invoke_IV(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_FilterOutputStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_OutputStream();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[11] = &mjava_io_FilterOutputStream_close___V;
	_vTable[9] = &mjava_io_FilterOutputStream_flush___V;
	_vTable[12] = &mjava_io_FilterOutputStream_write___BII_V;
	_vTable[10] = &mjava_io_FilterOutputStream_write__I_V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_FilterOutputStream_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_FilterOutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_FilterOutputStream);
	cls->name = JvmMakeString(L"java.io.FilterOutputStream",26);
	cls->superClass = &java_io_OutputStream_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_FilterOutputStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"FilterOutputStream.java",23);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 5, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_FilterOutputStream_Class, JvmMakeString(L"<init>", 6), &java_io_FilterOutputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_io_OutputStream_Class}), &mjava_io_FilterOutputStream__init___Ljava_io_OutputStream__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 45, 46, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"out",3), .startLine=46, .endLine=46, .type=&java_io_OutputStream_Class},{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=46, .type=&java_io_FilterOutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FilterOutputStream_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_FilterOutputStream_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 57, 68, 0, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=59, .endLine=68, .type=&java_io_FilterOutputStream_Class},{.name=JvmMakeString(L"thrown",6), .startLine=57, .endLine=68, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"e",1), .startLine=59, .endLine=68, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FilterOutputStream_Class, JvmMakeString(L"flush", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_FilterOutputStream_flush___V, &invoke_V 
#ifdef JVM_DEBUG
 , 82, 82, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=82, .endLine=82, .type=&java_io_FilterOutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FilterOutputStream_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_B_Class,&I_Class,&I_Class}), &mjava_io_FilterOutputStream_write___BII_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 104, 108, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"buffer",6), .startLine=104, .endLine=108, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"offset",6), .startLine=104, .endLine=108, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=104, .endLine=108, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=108, .endLine=108, .type=&java_io_FilterOutputStream_Class},{.name=JvmMakeString(L"i",1), .startLine=105, .endLine=108, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FilterOutputStream_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_io_FilterOutputStream_write__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 123, 123, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"oneByte",7), .startLine=123, .endLine=123, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=123, .endLine=123, .type=&java_io_FilterOutputStream_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_io_FilterOutputStream_Class, JvmMakeString(L"out", 3), &java_io_OutputStream_Class, 4, (void*)offsetof(java_io_FilterOutputStream,fjava_io_FilterOutputStream_out))
	});

	cls = &ArrOf_java_io_FilterOutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.FilterOutputStream",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_FilterOutputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_FilterOutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.FilterOutputStream",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_FilterOutputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
