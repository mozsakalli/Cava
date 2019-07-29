#include "java_io_InputStream.h"


jobject mjava_io_InputStream__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_InputStream_Class,0);
	JVMLINE(24)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_InputStream_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_InputStream_Class,1);
	thread->framePtr = entryFramePtr;
}

void virtual_mjava_io_InputStream_close___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[18])(pthis);
}
JvmClass java_io_InputStream_Class;
JvmClass ArrOf_java_io_InputStream_Class;
JvmClass ArrOf_ArrOf_java_io_InputStream_Class;

jbool java_io_InputStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_InputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_InputStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Closeable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[18] = &mjava_io_InputStream_close___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_InputStream_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_InputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_InputStream);
	cls->name = JvmMakeString(L"java.io.InputStream",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_InputStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"InputStream.java",16);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Closeable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_InputStream_Class, JvmMakeString(L"<init>", 6), &java_io_InputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_InputStream__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 24, 24, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=24, .endLine=24, .type=&java_io_InputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_InputStream_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_InputStream_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_io_InputStream_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_io_InputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.InputStream",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_InputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_InputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.InputStream",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_InputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
