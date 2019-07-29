#include "java_lang_Runnable.h"


void interface_mjava_lang_Runnable_run___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->itable[30])(pthis);
}
JvmClass java_lang_Runnable_Class;
JvmClass ArrOf_java_lang_Runnable_Class;
JvmClass ArrOf_ArrOf_java_lang_Runnable_Class;

jbool java_lang_Runnable_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Runnable_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_lang_Runnable() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Runnable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Runnable);
	cls->name = JvmMakeString(L"java.lang.Runnable",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Runnable_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Runnable.java",13);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_lang_Runnable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Runnable",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Runnable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Runnable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Runnable",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Runnable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
