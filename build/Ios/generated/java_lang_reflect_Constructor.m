#include "java_lang_reflect_Constructor.h"


jobject mjava_lang_reflect_Constructor__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Constructor_Class,0);
	JVMLINE(27)
	mjava_lang_reflect_Method__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Constructor_newInstance___Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pinitargs) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pinitargs,jobject,1);

	JVMMETHOD(java_lang_reflect_Constructor_Class,1);
	JVMLINE(30)
	{ jobject $$ret = mjava_lang_reflect_Method_invoke__Ljava_lang_Object__Ljava_lang_Object__Ljava_lang_Object_(LOCAL(pthis,jobject),JvmAllocObject(((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_declaringClass),LOCAL(pinitargs,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_reflect_Constructor_Class;
JvmClass ArrOf_java_lang_reflect_Constructor_Class;
JvmClass ArrOf_ArrOf_java_lang_reflect_Constructor_Class;

jbool java_lang_reflect_Constructor_isChildOf(JvmClass* klass) {
	return klass == &java_lang_reflect_Constructor_Class || klass == &java_lang_reflect_Method_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_reflect_Constructor() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_reflect_Method();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_reflect_Constructor_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_reflect_Constructor);
	cls->name = JvmMakeString(L"java.lang.reflect.Constructor",29);
	cls->superClass = &java_lang_reflect_Method_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_reflect_Constructor_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Constructor.java",16);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_reflect_Constructor_Class, JvmMakeString(L"<init>", 6), &java_lang_reflect_Constructor_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Constructor__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&java_lang_reflect_Constructor_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Constructor_Class, JvmMakeString(L"newInstance", 11), &java_lang_Object_Class, 129, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Object_Class}), &mjava_lang_reflect_Constructor_newInstance___Ljava_lang_Object__Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 30, 30, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"initargs",8), .startLine=30, .endLine=30, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=30, .endLine=30, .type=&java_lang_reflect_Constructor_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_reflect_Constructor_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.reflect.Constructor",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_reflect_Constructor_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_reflect_Constructor_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.reflect.Constructor",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_reflect_Constructor_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
