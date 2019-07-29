#include "java_io_FileNotFoundException.h"


jobject mjava_io_FileNotFoundException__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_FileNotFoundException_Class,0);
	JVMLINE(29)
	mjava_io_IOException__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_FileNotFoundException__init___Ljava_lang_String__V(jobject pthis, jobject pdetailMessage) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pdetailMessage,jobject,1);

	JVMMETHOD(java_io_FileNotFoundException_Class,1);
	JVMLINE(40)
	mjava_io_IOException__init___Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pdetailMessage,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_FileNotFoundException_Class;
JvmClass ArrOf_java_io_FileNotFoundException_Class;
JvmClass ArrOf_ArrOf_java_io_FileNotFoundException_Class;

jbool java_io_FileNotFoundException_isChildOf(JvmClass* klass) {
	return klass == &java_io_FileNotFoundException_Class || klass == &java_io_IOException_Class || klass == &java_lang_Exception_Class || klass == &java_lang_Throwable_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_io_FileNotFoundException() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_IOException();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Throwable_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_io_FileNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_FileNotFoundException);
	cls->name = JvmMakeString(L"java.io.FileNotFoundException",29);
	cls->superClass = &java_io_IOException_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_FileNotFoundException_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"FileNotFoundException.java",26);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_FileNotFoundException_Class, JvmMakeString(L"<init>", 6), &java_io_FileNotFoundException_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_FileNotFoundException__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 29, 29, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&java_io_FileNotFoundException_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FileNotFoundException_Class, JvmMakeString(L"<init>", 6), &java_io_FileNotFoundException_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_FileNotFoundException__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 40, 40, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"detailMessage",13), .startLine=40, .endLine=40, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=40, .type=&java_io_FileNotFoundException_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_io_FileNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.FileNotFoundException",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_FileNotFoundException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_FileNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.FileNotFoundException",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_FileNotFoundException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
