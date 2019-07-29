#include "java_lang_ClassNotFoundException.h"


jobject mjava_lang_ClassNotFoundException__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_ClassNotFoundException_Class,0);
	JVMLINE(26)
	mjava_lang_RuntimeException__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_ClassNotFoundException__init___Ljava_lang_String__V(jobject pthis, jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ps,jobject,1);

	JVMMETHOD(java_lang_ClassNotFoundException_Class,1);
	JVMLINE(34)
	mjava_lang_RuntimeException__init___Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(ps,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_ClassNotFoundException_Class;
JvmClass ArrOf_java_lang_ClassNotFoundException_Class;
JvmClass ArrOf_ArrOf_java_lang_ClassNotFoundException_Class;

jbool java_lang_ClassNotFoundException_isChildOf(JvmClass* klass) {
	return klass == &java_lang_ClassNotFoundException_Class || klass == &java_lang_RuntimeException_Class || klass == &java_lang_Exception_Class || klass == &java_lang_Throwable_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_ClassNotFoundException() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_RuntimeException();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Throwable_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_ClassNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_ClassNotFoundException);
	cls->name = JvmMakeString(L"java.lang.ClassNotFoundException",32);
	cls->superClass = &java_lang_RuntimeException_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_ClassNotFoundException_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"ClassNotFoundException.java",27);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_ClassNotFoundException_Class, JvmMakeString(L"<init>", 6), &java_lang_ClassNotFoundException_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_ClassNotFoundException__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 26, 26, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=26, .endLine=26, .type=&java_lang_ClassNotFoundException_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_ClassNotFoundException_Class, JvmMakeString(L"<init>", 6), &java_lang_ClassNotFoundException_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_ClassNotFoundException__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 34, 34, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=34, .endLine=34, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=34, .type=&java_lang_ClassNotFoundException_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_ClassNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.ClassNotFoundException",33);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_ClassNotFoundException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_ClassNotFoundException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.ClassNotFoundException",33);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_ClassNotFoundException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
