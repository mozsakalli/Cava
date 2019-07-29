#include "java_io_OutputStream.h"


jobject mjava_io_OutputStream__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_OutputStream_Class,0);
	JVMLINE(24)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_OutputStream_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_OutputStream_Class,1);
	JVMLINE(32)
	virtual_mjava_io_OutputStream_flush___V(LOCAL(pthis,jobject));
	thread->framePtr = entryFramePtr;
}

void mjava_io_OutputStream_flush___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_OutputStream_Class,2);
	thread->framePtr = entryFramePtr;
}

void mjava_io_OutputStream_write___B_V(jobject pthis, jobject pb) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pb,jobject,1);

	JVMMETHOD(java_io_OutputStream_Class,3);
	JVMLINE(46)
	virtual_mjava_io_OutputStream_write___BII_V(LOCAL(pthis,jobject),LOCAL(pb,jobject),0,JvmArrayLen(LOCAL(pb,jobject)));
	thread->framePtr = entryFramePtr;
}

void mjava_io_OutputStream_write___BII_V(jobject pthis, jobject pb, jint poff, jint plen) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pb,jobject,1);
	DEFARG(poff,jint,2);
	DEFARG(plen,jint,3);
	DEFLOCAL(liter,jint,4);

	JVMMETHOD(java_io_OutputStream_Class,4);
	JVMLINE(56)
	LOCAL(liter,jint)=LOCAL(poff,jint);
	while(LOCAL(liter,jint) < (LOCAL(plen,jint) + LOCAL(poff,jint))){
		JVMLINE(57)
		virtual_mjava_io_OutputStream_write__I_V(LOCAL(pthis,jobject),JvmArrayGet_B(LOCAL(pb,jobject),LOCAL(liter,jint)));
		JVMLINE(56)
		LOCAL(liter,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

void virtual_mjava_io_OutputStream_close___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[11])(pthis);
}
void virtual_mjava_io_OutputStream_flush___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[9])(pthis);
}
void virtual_mjava_io_OutputStream_write___BII_V(jobject pthis, jobject pb, jint poff, jint plen) {
	((void (*)(jobject,jobject,jint,jint))((JvmObject*)pthis)->klass->vtable[12])(pthis,pb,poff,plen);
}
void virtual_mjava_io_OutputStream_write__I_V(jobject pthis, jint pp0) {
	((void (*)(jobject,jint))((JvmObject*)pthis)->klass->vtable[10])(pthis,pp0);
}
JvmClass java_io_OutputStream_Class;
JvmClass ArrOf_java_io_OutputStream_Class;
JvmClass ArrOf_ArrOf_java_io_OutputStream_Class;

jbool java_io_OutputStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_OutputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OIIV(jobject,jobject,jobject);
extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_OutputStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Closeable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[11] = &mjava_io_OutputStream_close___V;
	_vTable[9] = &mjava_io_OutputStream_flush___V;
	_vTable[12] = &mjava_io_OutputStream_write___BII_V;
	_vTable[10] = jnull;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_OutputStream_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_OutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_OutputStream);
	cls->name = JvmMakeString(L"java.io.OutputStream",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_OutputStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"OutputStream.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Closeable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 5, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_OutputStream_Class, JvmMakeString(L"<init>", 6), &java_io_OutputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_OutputStream__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 24, 24, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=24, .endLine=24, .type=&java_io_OutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_OutputStream_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_OutputStream_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 32, 32, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=32, .type=&java_io_OutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_OutputStream_Class, JvmMakeString(L"flush", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_OutputStream_flush___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_io_OutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_OutputStream_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_B_Class}), &mjava_io_OutputStream_write___B_V, &invoke_OV 
#ifdef JVM_DEBUG
 , 46, 46, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"b",1), .startLine=46, .endLine=46, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=46, .type=&java_io_OutputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_OutputStream_Class, JvmMakeString(L"write", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_B_Class,&I_Class,&I_Class}), &mjava_io_OutputStream_write___BII_V, &invoke_OIIV 
#ifdef JVM_DEBUG
 , 56, 57, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"b",1), .startLine=57, .endLine=57, .type=&ArrOf_B_Class},{.name=JvmMakeString(L"off",3), .startLine=56, .endLine=57, .type=&I_Class},{.name=JvmMakeString(L"len",3), .startLine=56, .endLine=57, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=57, .endLine=57, .type=&java_io_OutputStream_Class},{.name=JvmMakeString(L"iter",4), .startLine=56, .endLine=57, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_io_OutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.OutputStream",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_OutputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_OutputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.OutputStream",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_OutputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
