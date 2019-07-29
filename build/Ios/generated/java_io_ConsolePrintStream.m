#include "java_io_ConsolePrintStream_1.h"
#include "java_lang_Object.h"
#include "java_io_ConsolePrintStream.h"
#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSString.h"
#include "java_lang_Throwable.h"


jobject mjava_io_ConsolePrintStream__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_ConsolePrintStream_Class,0);
	JVMLINE(36)
	mjava_io_PrintStream__init___Ljava_io_OutputStream__V(LOCAL(pthis,jobject),JVMGLOBALS[7]);
	JVMLINE(28)
	((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer=mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_ConsolePrintStream_printImpl__Ljava_lang_StringBuilder__V(jobject pthis, jobject pbuffer) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbuffer,jobject,1);

	JVMMETHOD(java_io_ConsolePrintStream_Class,1);
	JVMLINE(40)
	NSLog(@"%@",mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(mcava_apple_foundation_NSString__init___Ljava_lang_String__V(JvmAllocObject(&cava_apple_foundation_NSString_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(pbuffer,jobject)))));
	thread->framePtr = entryFramePtr;
}

void mjava_io_ConsolePrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFLOCAL(lvar_3_12,jobject,2);

	JVMMETHOD(java_io_ConsolePrintStream_Class,2);
	JVMLINE(45)
	JvmMonitorEnter(LOCAL(pthis,jobject));
	JVMLINE(47)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(46)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer,LOCAL(pstr,jobject));
			JVMLINE(47)
			JvmMonitorExit(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_3_12,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(pthis,jobject));
			JvmThrow(LOCAL(lvar_3_12,jobject));
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_ConsolePrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFLOCAL(lvar_3_22,jobject,2);

	JVMMETHOD(java_io_ConsolePrintStream_Class,3);
	JVMLINE(52)
	JvmMonitorEnter(LOCAL(pthis,jobject));
	JVMLINE(56)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(53)
			mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer,LOCAL(pstr,jobject));
			JVMLINE(54)
			mjava_io_ConsolePrintStream_printImpl__Ljava_lang_StringBuilder__V(LOCAL(pthis,jobject),((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer);
			JVMLINE(55)
			mjava_lang_StringBuilder_setLength__I_V(((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer,0);
			JVMLINE(56)
			JvmMonitorExit(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_3_22,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(pthis,jobject));
			JvmThrow(LOCAL(lvar_3_22,jobject));
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_ConsolePrintStream_flush___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lvar_2_23,jobject,1);

	JVMMETHOD(java_io_ConsolePrintStream_Class,4);
	JVMLINE(61)
	JvmMonitorEnter(LOCAL(pthis,jobject));
	JVMLINE(65)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(63)
			if(mjava_lang_StringBuilder_length___I(((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer) > 0){
				JVMLINE(63)
				mjava_io_ConsolePrintStream_printImpl__Ljava_lang_StringBuilder__V(LOCAL(pthis,jobject),((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer);
			}
			JVMLINE(64)
			mjava_lang_StringBuilder_setLength__I_V(((java_io_ConsolePrintStream*)(LOCAL(pthis,jobject)))->fjava_io_ConsolePrintStream_buffer,0);
			JVMLINE(65)
			JvmMonitorExit(LOCAL(pthis,jobject));
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		{
			LOCAL(lvar_2_23,jobject)=thread->exception;
			JvmMonitorExit(LOCAL(pthis,jobject));
			JvmThrow(LOCAL(lvar_2_23,jobject));
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
}

void mjava_io_ConsolePrintStream__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_io_ConsolePrintStream_Class,5);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(29)
	JVMGLOBALS[7]=mjava_io_ConsolePrintStream_1__init____V(JvmAllocObject(&java_io_ConsolePrintStream_1_Class));
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_ConsolePrintStream_Class;
JvmClass ArrOf_java_io_ConsolePrintStream_Class;
JvmClass ArrOf_ArrOf_java_io_ConsolePrintStream_Class;

jbool java_io_ConsolePrintStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_ConsolePrintStream_Class || klass == &java_io_PrintStream_Class || klass == &java_io_FilterOutputStream_Class || klass == &java_io_OutputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_ConsolePrintStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_PrintStream();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[19] = &mjava_io_ConsolePrintStream_print__Ljava_lang_String__V;
	_vTable[20] = &mjava_io_ConsolePrintStream_println__Ljava_lang_String__V;
	_vTable[9] = &mjava_io_ConsolePrintStream_flush___V;
	_vTable[11] = &mjava_io_PrintStream_close___V;
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
	JvmClass* cls = &java_io_ConsolePrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_ConsolePrintStream);
	cls->name = JvmMakeString(L"java.io.ConsolePrintStream",26);
	cls->superClass = &java_io_PrintStream_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_ConsolePrintStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"ConsolePrintStream.java",23);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 6, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"<init>", 6), &java_io_ConsolePrintStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_ConsolePrintStream__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 28, 36, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=28, .endLine=36, .type=&java_io_ConsolePrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"printImpl", 9), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_StringBuilder_Class}), &mjava_io_ConsolePrintStream_printImpl__Ljava_lang_StringBuilder__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 40, 40, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"buffer",6), .startLine=40, .endLine=40, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=40, .type=&java_io_ConsolePrintStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"print", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_ConsolePrintStream_print__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 45, 47, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=46, .endLine=47, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=47, .type=&java_io_ConsolePrintStream_Class},{.name=JvmMakeString(L"var_3_12",8), .startLine=47, .endLine=47, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"println", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_ConsolePrintStream_println__Ljava_lang_String__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 52, 56, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=53, .endLine=56, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=52, .endLine=56, .type=&java_io_ConsolePrintStream_Class},{.name=JvmMakeString(L"var_3_22",8), .startLine=56, .endLine=56, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"flush", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_ConsolePrintStream_flush___V, &invoke_V 
#ifdef JVM_DEBUG
 , 61, 65, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=61, .endLine=65, .type=&java_io_ConsolePrintStream_Class},{.name=JvmMakeString(L"var_2_23",8), .startLine=65, .endLine=65, .type=&java_lang_Throwable_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_ConsolePrintStream_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_ConsolePrintStream__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 29, 29, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 2, &(JvmField*[]){
	JvmMakeField(&java_io_ConsolePrintStream_Class, JvmMakeString(L"buffer", 6), &java_lang_StringBuilder_Class, 0, (void*)offsetof(java_io_ConsolePrintStream,fjava_io_ConsolePrintStream_buffer))
	,JvmMakeField(&java_io_ConsolePrintStream_Class, JvmMakeString(L"EMPTYSTREAM", 11), &java_io_OutputStream_Class, 24, &JVMGLOBALS[7])
	});

	cls = &ArrOf_java_io_ConsolePrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.ConsolePrintStream",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_ConsolePrintStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_ConsolePrintStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.ConsolePrintStream",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_ConsolePrintStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
