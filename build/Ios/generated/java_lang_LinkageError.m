#include "java_lang_LinkageError.h"


jobject mjava_lang_LinkageError__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_LinkageError_Class,0);
	JVMLINE(35)
	mjava_lang_Error__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_LinkageError__init___Ljava_lang_String__V(jobject pthis, jobject pdetailMessage) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pdetailMessage,jobject,1);

	JVMMETHOD(java_lang_LinkageError_Class,1);
	JVMLINE(46)
	mjava_lang_Error__init___Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pdetailMessage,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_LinkageError_Class;
JvmClass ArrOf_java_lang_LinkageError_Class;
JvmClass ArrOf_ArrOf_java_lang_LinkageError_Class;

jbool java_lang_LinkageError_isChildOf(JvmClass* klass) {
	return klass == &java_lang_LinkageError_Class || klass == &java_lang_Error_Class || klass == &java_lang_Throwable_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_LinkageError() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Error();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Throwable_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_LinkageError_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_LinkageError);
	cls->name = JvmMakeString(L"java.lang.LinkageError",22);
	cls->superClass = &java_lang_Error_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_LinkageError_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"LinkageError.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_LinkageError_Class, JvmMakeString(L"<init>", 6), &java_lang_LinkageError_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_LinkageError__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 35, 35, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=35, .endLine=35, .type=&java_lang_LinkageError_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_LinkageError_Class, JvmMakeString(L"<init>", 6), &java_lang_LinkageError_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_LinkageError__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 46, 46, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"detailMessage",13), .startLine=46, .endLine=46, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=46, .type=&java_lang_LinkageError_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_LinkageError_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.LinkageError",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_LinkageError_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_LinkageError_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.LinkageError",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_LinkageError_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
