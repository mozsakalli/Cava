#include "java_util_Iterator.h"


jbool interface_mjava_util_Iterator_hasNext___Z(jobject pthis) {
	return ((jbool (*)(jobject))((JvmObject*)pthis)->klass->itable[16])(pthis);
}
jobject interface_mjava_util_Iterator_next___Ljava_lang_Object_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[17])(pthis);
}
void interface_mjava_util_Iterator_remove___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->itable[15])(pthis);
}
JvmClass java_util_Iterator_Class;
JvmClass ArrOf_java_util_Iterator_Class;
JvmClass ArrOf_ArrOf_java_util_Iterator_Class;

jbool java_util_Iterator_isChildOf(JvmClass* klass) {
	return klass == &java_util_Iterator_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_util_Iterator() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_util_Iterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_Iterator);
	cls->name = JvmMakeString(L"java.util.Iterator",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_Iterator_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Iterator.java",13);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_util_Iterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.Iterator",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_Iterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_Iterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.Iterator",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_Iterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
