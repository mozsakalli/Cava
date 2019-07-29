#include "java_io_PrintWriter.h"
#include "java_io_IOException.h"
extern jobject $literal39;


void mjava_io_PrintWriter_flush___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lex,jobject,1);

	JVMMETHOD(java_io_PrintWriter_Class,0);
	JVMLINE(148)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(146)
			virtual_mjava_io_Writer_flush___V(((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_out);
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(148)
			((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_error=jtrue;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lex,jobject,1);

	JVMMETHOD(java_io_PrintWriter_Class,1);
	JVMLINE(160)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(157)
			virtual_mjava_io_Writer_close___V(((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_out);
			JVMLINE(158)
			((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_closed=jtrue;
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(160)
			((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_error=jtrue;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter_print__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);

	JVMMETHOD(java_io_PrintWriter_Class,2);
	JVMLINE(171)
	virtual_mjava_io_Writer_write__Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pstr,jobject) == jnull ? $literal39 : LOCAL(pstr,jobject));
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter_write___CII_V(jobject pthis, jobject pcharArray, jint poffset, jint pcount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcharArray,jobject,1);
	DEFARG(poffset,jint,2);
	DEFARG(pcount,jint,3);
	DEFLOCAL(lex,jobject,4);

	JVMMETHOD(java_io_PrintWriter_Class,3);
	JVMLINE(454)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(452)
			virtual_mjava_io_Writer_write___CII_V(((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_out,LOCAL(pcharArray,jobject),LOCAL(poffset,jint),LOCAL(pcount,jint));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(454)
			((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_error=jtrue;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poffset, jint pcount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFARG(poffset,jint,2);
	DEFARG(pcount,jint,3);
	DEFLOCAL(lex,jobject,4);

	JVMMETHOD(java_io_PrintWriter_Class,4);
	JVMLINE(472)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(470)
			virtual_mjava_io_Writer_write__Ljava_lang_String_II_V(((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_out,LOCAL(pstr,jobject),LOCAL(poffset,jint),LOCAL(pcount,jint));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(lex,jobject)=thread->exception;
			JVMLINE(472)
			((java_io_PrintWriter*)(LOCAL(pthis,jobject)))->fjava_io_PrintWriter_error=jtrue;
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter_write__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);

	JVMMETHOD(java_io_PrintWriter_Class,5);
	JVMLINE(492)
	virtual_mjava_io_Writer_write__Ljava_lang_String_II_V(LOCAL(pthis,jobject),LOCAL(pstr,jobject),0,mjava_lang_String_length___I(LOCAL(pstr,jobject)));
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintWriter__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_io_PrintWriter_Class,6);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(271)
	JVMGLOBALS[10]=JvmInitPrimArray1(&ArrOf_C_Class,2,(jchar[]){13,10});
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_PrintWriter_Class;
JvmClass ArrOf_java_io_PrintWriter_Class;
JvmClass ArrOf_ArrOf_java_io_PrintWriter_Class;

jbool java_io_PrintWriter_isChildOf(JvmClass* klass) {
	return klass == &java_io_PrintWriter_Class || klass == &java_io_Writer_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OIIV(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_PrintWriter() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_Writer();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[22] = &mjava_io_PrintWriter_flush___V;
	_vTable[25] = &mjava_io_PrintWriter_close___V;
	_vTable[23] = &mjava_io_PrintWriter_write___CII_V;
	_vTable[21] = &mjava_io_PrintWriter_write__Ljava_lang_String_II_V;
	_vTable[24] = &mjava_io_PrintWriter_write__Ljava_lang_String__V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_PrintWriter_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_PrintWriter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_PrintWriter);
	cls->name = JvmMakeString(L"java.io.PrintWriter",19);
	cls->superClass = &java_io_Writer_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_PrintWriter_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"PrintWriter.java",16);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 7, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"flush", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintWriter_flush___V, &invoke_V 
#ifdef JVM_DEBUG
 , 146, 148, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=146, .endLine=148, .type=&java_io_PrintWriter_Class},{.name=JvmMakeString(L"ex",2), .startLine=146, .endLine=148, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintWriter_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 157, 160, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=157, .endLine=160, .type=&java_io_PrintWriter_Class},{.name=JvmMakeString(L"ex",2), .startLine=158, .endLine=160, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"print", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_PrintWriter_print__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 171, 171, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=171, .endLine=171, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=171, .endLine=171, .type=&java_io_PrintWriter_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_C_Class,&I_Class,&I_Class}), &mjava_io_PrintWriter_write___CII_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 452, 454, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"charArray",9), .startLine=452, .endLine=454, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"offset",6), .startLine=452, .endLine=454, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=452, .endLine=454, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=452, .endLine=454, .type=&java_io_PrintWriter_Class},{.name=JvmMakeString(L"ex",2), .startLine=452, .endLine=454, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&I_Class}), &mjava_io_PrintWriter_write__Ljava_lang_String_II_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 470, 472, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=470, .endLine=472, .type=&java_lang_String_Class},{.name=JvmMakeString(L"offset",6), .startLine=470, .endLine=472, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=470, .endLine=472, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=470, .endLine=472, .type=&java_io_PrintWriter_Class},{.name=JvmMakeString(L"ex",2), .startLine=470, .endLine=472, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_PrintWriter_write__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 492, 492, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=492, .endLine=492, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=492, .endLine=492, .type=&java_io_PrintWriter_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintWriter_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintWriter__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 271, 271, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_io_PrintWriter_Class, JvmMakeString(L"error", 5), &Z_Class, 2, (void*)offsetof(java_io_PrintWriter,fjava_io_PrintWriter_error))
	,JvmMakeField(&java_io_PrintWriter_Class, JvmMakeString(L"closed", 6), &Z_Class, 2, (void*)offsetof(java_io_PrintWriter,fjava_io_PrintWriter_closed))
	,JvmMakeField(&java_io_PrintWriter_Class, JvmMakeString(L"out", 3), &java_io_Writer_Class, 4, (void*)offsetof(java_io_PrintWriter,fjava_io_PrintWriter_out))
	,JvmMakeField(&java_io_PrintWriter_Class, JvmMakeString(L"line_separator", 14), &ArrOf_C_Class, 26, &JVMGLOBALS[10])
	});

	cls = &ArrOf_java_io_PrintWriter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.PrintWriter",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_PrintWriter_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_PrintWriter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.PrintWriter",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_PrintWriter_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
