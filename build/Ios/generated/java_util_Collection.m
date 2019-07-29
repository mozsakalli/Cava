#include "java_util_Collection.h"


jbool interface_mjava_util_Collection_add__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[2])(pthis,pp0);
}
jbool interface_mjava_util_Collection_equals__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[29])(pthis,pp0);
}
jint interface_mjava_util_Collection_hashCode___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->itable[28])(pthis);
}
jbool interface_mjava_util_Collection_isEmpty___Z(jobject pthis) {
	return ((jbool (*)(jobject))((JvmObject*)pthis)->klass->itable[7])(pthis);
}
jobject interface_mjava_util_Collection_iterator___Ljava_util_Iterator_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[5])(pthis);
}
jbool interface_mjava_util_Collection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[6])(pthis,pp0);
}
jint interface_mjava_util_Collection_size___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->itable[8])(pthis);
}
jobject interface_mjava_util_Collection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pp0) {
	return ((jobject (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[3])(pthis,pp0);
}
JvmClass java_util_Collection_Class;
JvmClass ArrOf_java_util_Collection_Class;
JvmClass ArrOf_ArrOf_java_util_Collection_Class;

jbool java_util_Collection_isChildOf(JvmClass* klass) {
	return klass == &java_util_Collection_Class || klass == &java_lang_Iterable_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_util_Collection() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Iterable();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_util_Collection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_Collection);
	cls->name = JvmMakeString(L"java.util.Collection",20);
	cls->superClass = &java_lang_Iterable_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_Collection_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Collection.java",15);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_util_Collection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.Collection",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_Collection_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_Collection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.Collection",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_Collection_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
