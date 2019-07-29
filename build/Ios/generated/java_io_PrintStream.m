#include "java_lang_NullPointerException.h"
#include "java_io_IOException.h"
#include "java_lang_Throwable.h"
#include "java_io_PrintStream.h"
extern jobject $literal37;
extern jobject $literal38;
extern jobject $literal39;


jobject mjava_io_PrintStream__init___Ljava_io_OutputStream__V(jobject pthis, jobject pout) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pout,jobject,1);

	JVMMETHOD(java_io_PrintStream_Class,0);
	JVMLINE(49)
	mjava_io_FilterOutputStream__init___Ljava_io_OutputStream__V(LOCAL(pthis,jobject),LOCAL(pout,jobject));
	JVMLINE(51)
	if(LOCAL(pout,jobject) == jnull){
		JVMLINE(51)
		JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),$literal37));
	}
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(le,jobject,1);

	JVMMETHOD(java_io_PrintStream_Class,1);
	JVMLINE(223)
	virtual_mjava_io_OutputStream_flush___V(LOCAL(pthis,jobject));
	JVMLINE(229)
	if(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out != jnull){
		JVMLINE(229)
		/* try */
		jint exception0 = thread->exceptionCount++;
		thread->exceptions[exception0].framePtr = thread->framePtr;
		if(setjmp(thread->exceptions[exception0].jmp) == 0) {
			{
				JVMLINE(226)
				virtual_mjava_io_OutputStream_close___V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out);
				JVMLINE(227)
				((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out=jnull;
			}
			thread->exceptionCount = exception0;
		} else {
			thread->exceptionCount = exception0;
			/* catch */
			if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
				LOCAL(le,jobject)=thread->exception;
				JVMLINE(229)
				mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
			}
			else{
				JvmThrow(thread->exception);
			}
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_flush___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lstack_0F_0,jobject,1);

	JVMMETHOD(java_io_PrintStream_Class,2);
	JVMLINE(244)
	if(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out != jnull){
		JVMLINE(244)
		/* try */
		jint exception0 = thread->exceptionCount++;
		thread->exceptions[exception0].framePtr = thread->framePtr;
		if(setjmp(thread->exceptions[exception0].jmp) == 0) {
			{
				JVMLINE(243)
				virtual_mjava_io_OutputStream_flush___V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out);
				JVMLINE(244)
				{ thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return; };
			}
			thread->exceptionCount = exception0;
		} else {
			thread->exceptionCount = exception0;
			/* catch */
			if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
				LOCAL(lstack_0F_0,jobject)=thread->exception;
			}
			else{
				JvmThrow(thread->exception);
			}
		}
	}
	JVMLINE(249)
	mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_newline___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_PrintStream_Class,3);
	JVMLINE(256)
	virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(LOCAL(pthis,jobject),$literal38);
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFLOCAL(le,jobject,2);

	JVMMETHOD(java_io_PrintStream_Class,4);
	JVMLINE(323)
	if(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out == jnull){
		JVMLINE(322)
		mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
		JVMLINE(323)
		{ thread->framePtr = entryFramePtr; return; };
	}
	JVMLINE(327)
	if(LOCAL(pstr,jobject) == jnull){
		JVMLINE(326)
		virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(LOCAL(pthis,jobject),$literal39);
		JVMLINE(327)
		{ thread->framePtr = entryFramePtr; return; };
	}
	JVMLINE(337)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(334)
			if(((java_io_PrintStream*)(LOCAL(pthis,jobject)))->fjava_io_PrintStream_encoding == jnull){
				JVMLINE(332)
				mjava_io_OutputStream_write___B_V(LOCAL(pthis,jobject),mjava_lang_String_getBytes____B(LOCAL(pstr,jobject)));
			}
			else{
				JVMLINE(334)
				mjava_io_OutputStream_write___B_V(LOCAL(pthis,jobject),mjava_lang_String_getBytes__Ljava_lang_String___B(LOCAL(pstr,jobject),((java_io_PrintStream*)(LOCAL(pthis,jobject)))->fjava_io_PrintStream_encoding));
			}
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(337)
			mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_println__Ljava_lang_Object__V(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);

	JVMMETHOD(java_io_PrintStream_Class,5);
	JVMLINE(402)
	virtual_mjava_io_PrintStream_println__Ljava_lang_String__V(LOCAL(pthis,jobject),mjava_lang_String_valueOf__Ljava_lang_Object__Ljava_lang_String_(LOCAL(po,jobject)));
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);

	JVMMETHOD(java_io_PrintStream_Class,6);
	JVMLINE(417)
	virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pstr,jobject));
	JVMLINE(418)
	mjava_io_PrintStream_newline___V(LOCAL(pthis,jobject));
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_setError___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_PrintStream_Class,7);
	JVMLINE(432)
	((java_io_PrintStream*)(LOCAL(pthis,jobject)))->fjava_io_PrintStream_ioError=jtrue;
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_write___BII_V(jobject pthis, jobject pbuffer, jint poffset, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbuffer,jobject,1);
	DEFARG(poffset,jint,2);
	DEFARG(plength,jint,3);
	DEFLOCAL(lvar_6_38,jobject,4);
	DEFLOCAL(le,jobject,5);

	JVMMETHOD(java_io_PrintStream_Class,8);
	JVMLINE(457)
	JvmMonitorEnter(LOCAL(pthis,jobject));
	JVMLINE(470)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(460)
			if(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out == jnull){
				JVMLINE(459)
				mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
				JVMLINE(460)
				JvmMonitorExit(LOCAL(pthis,jobject));
				{ thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return; };
			}
			JVMLINE(468)
			/* try */
			jint exception1 = thread->exceptionCount++;
			thread->exceptions[exception1].framePtr = thread->framePtr;
			if(setjmp(thread->exceptions[exception1].jmp) == 0) {
				{
					JVMLINE(463)
					virtual_mjava_io_OutputStream_write___BII_V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out,LOCAL(pbuffer,jobject),LOCAL(poffset,jint),LOCAL(plength,jint));
					JVMLINE(465)
					if(((java_io_PrintStream*)(LOCAL(pthis,jobject)))->fjava_io_PrintStream_autoFlush){
						JVMLINE(465)
						virtual_mjava_io_OutputStream_flush___V(LOCAL(pthis,jobject));
					}
				}
				thread->exceptionCount = exception1;
			} else {
				thread->exceptionCount = exception1;
				/* catch */
				if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
					LOCAL(le,jobject)=thread->exception;
					JVMLINE(468)
					mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
				}
				else{
					JvmThrow(thread->exception);
				}
			}
			JVMLINE(470)
			JvmMonitorExit(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_6_38,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(pthis,jobject));
			JvmThrow(LOCAL(lvar_6_38,jobject));
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_PrintStream_write__I_V(jobject pthis, jint poneByte) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(poneByte,jint,1);
	DEFLOCAL(lb,jint,2);
	DEFLOCAL(lisNewline,jbool,3);
	DEFLOCAL(le,jobject,4);

	JVMMETHOD(java_io_PrintStream_Class,9);
	JVMLINE(489)
	if(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out == jnull){
		JVMLINE(488)
		mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
		JVMLINE(489)
		{ thread->framePtr = entryFramePtr; return; };
	}
	JVMLINE(500)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(492)
			virtual_mjava_io_OutputStream_write__I_V(((java_io_FilterOutputStream*)(LOCAL(pthis,jobject)))->fjava_io_FilterOutputStream_out,LOCAL(poneByte,jint));
			JVMLINE(493)
			LOCAL(lb,jint)=LOCAL(poneByte,jint) & 255;
			JVMLINE(495)
			LOCAL(lisNewline,jbool)=(LOCAL(lb,jint) == 10) || (LOCAL(lb,jint) == 21);
			JVMLINE(497)
			if(((java_io_PrintStream*)(LOCAL(pthis,jobject)))->fjava_io_PrintStream_autoFlush && LOCAL(lisNewline,jbool)){
				JVMLINE(497)
				virtual_mjava_io_OutputStream_flush___V(LOCAL(pthis,jobject));
			}
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_io_IOException_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(500)
			mjava_io_PrintStream_setError___V(LOCAL(pthis,jobject));
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[19])(pthis,pstr);
}
void virtual_mjava_io_PrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[20])(pthis,pstr);
}
JvmClass java_io_PrintStream_Class;
JvmClass ArrOf_java_io_PrintStream_Class;
JvmClass ArrOf_ArrOf_java_io_PrintStream_Class;

jbool java_io_PrintStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_PrintStream_Class || klass == &java_io_FilterOutputStream_Class || klass == &java_io_OutputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OIIV(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_IV(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_PrintStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_FilterOutputStream();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[11] = &mjava_io_PrintStream_close___V;
	_vTable[9] = &mjava_io_PrintStream_flush___V;
	_vTable[19] = &mjava_io_PrintStream_print__Ljava_lang_String__V;
	_vTable[20] = &mjava_io_PrintStream_println__Ljava_lang_String__V;
	_vTable[12] = &mjava_io_PrintStream_write___BII_V;
	_vTable[10] = &mjava_io_PrintStream_write__I_V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_PrintStream_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_PrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_PrintStream);
	cls->name = JvmMakeString(L"java.io.PrintStream",19);
	cls->superClass = &java_io_FilterOutputStream_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_PrintStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"PrintStream.java",16);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 10, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"<init>", 6), &java_io_PrintStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_io_OutputStream_Class}), &mjava_io_PrintStream__init___Ljava_io_OutputStream__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 49, 51, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"out",3), .startLine=49, .endLine=51, .type=&java_io_OutputStream_Class},{.name=JvmMakeString(L"this",4), .startLine=49, .endLine=51, .type=&java_io_PrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"close", 5), &V_Class, 33, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintStream_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 223, 229, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=223, .endLine=229, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"e",1), .startLine=227, .endLine=229, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"flush", 5), &V_Class, 33, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintStream_flush___V, &invoke_V 
#ifdef JVM_DEBUG
 , 243, 249, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=243, .endLine=249, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"stack_0F_0",10), .startLine=244, .endLine=249, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"newline", 7), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintStream_newline___V, &invoke_V 
#ifdef JVM_DEBUG
 , 256, 256, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=256, .endLine=256, .type=&java_io_PrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"print", 5), &V_Class, 33, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_PrintStream_print__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 322, 337, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=327, .endLine=337, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=322, .endLine=337, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"e",1), .startLine=334, .endLine=337, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"println", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_io_PrintStream_println__Ljava_lang_Object__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 402, 402, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=402, .endLine=402, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=402, .endLine=402, .type=&java_io_PrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"println", 7), &V_Class, 33, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_PrintStream_println__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 417, 418, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=417, .endLine=418, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=417, .endLine=418, .type=&java_io_PrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"setError", 8), &V_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_PrintStream_setError___V, &invoke_V 
#ifdef JVM_DEBUG
 , 432, 432, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=432, .endLine=432, .type=&java_io_PrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_B_Class,&I_Class,&I_Class}), &mjava_io_PrintStream_write___BII_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 457, 470, 3, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"buffer",6), .startLine=463, .endLine=470, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"offset",6), .startLine=463, .endLine=470, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=463, .endLine=470, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=457, .endLine=470, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"var_6_38",8), .startLine=470, .endLine=470, .type=&java_lang_Throwable_Class},{.name=JvmMakeString(L"e",1), .startLine=465, .endLine=470, .type=&java_io_IOException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_PrintStream_Class, JvmMakeString(L"write", 5), &V_Class, 33, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_io_PrintStream_write__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 488, 500, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"oneByte",7), .startLine=492, .endLine=500, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=488, .endLine=500, .type=&java_io_PrintStream_Class},{.name=JvmMakeString(L"b",1), .startLine=493, .endLine=500, .type=&I_Class},{.name=JvmMakeString(L"isNewline",9), .startLine=495, .endLine=500, .type=&Z_Class},{.name=JvmMakeString(L"e",1), .startLine=497, .endLine=500, .type=&java_io_IOException_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 3, &(JvmField*[]){
	JvmMakeField(&java_io_PrintStream_Class, JvmMakeString(L"ioError", 7), &Z_Class, 2, (void*)offsetof(java_io_PrintStream,fjava_io_PrintStream_ioError))
	,JvmMakeField(&java_io_PrintStream_Class, JvmMakeString(L"autoFlush", 9), &Z_Class, 2, (void*)offsetof(java_io_PrintStream,fjava_io_PrintStream_autoFlush))
	,JvmMakeField(&java_io_PrintStream_Class, JvmMakeString(L"encoding", 8), &java_lang_String_Class, 2, (void*)offsetof(java_io_PrintStream,fjava_io_PrintStream_encoding))
	});

	cls = &ArrOf_java_io_PrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.PrintStream",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_PrintStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_PrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.PrintStream",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_PrintStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
