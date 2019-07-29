#include "java_util_List.h"


void interface_mjava_util_List_add__ILjava_lang_Object__V(jobject pthis, jint pp0, jobject pp1) {
	((void (*)(jobject,jint,jobject))((JvmObject*)pthis)->klass->itable[21])(pthis,pp0,pp1);
}
jbool interface_mjava_util_List_add__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[2])(pthis,pp0);
}
jbool interface_mjava_util_List_equals__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[13])(pthis,pp0);
}
jobject interface_mjava_util_List_get__I_Ljava_lang_Object_(jobject pthis, jint pp0) {
	return ((jobject (*)(jobject,jint))((JvmObject*)pthis)->klass->itable[19])(pthis,pp0);
}
jint interface_mjava_util_List_hashCode___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->itable[14])(pthis);
}
jint interface_mjava_util_List_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	return ((jint (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[18])(pthis,pp0);
}
jbool interface_mjava_util_List_isEmpty___Z(jobject pthis) {
	return ((jbool (*)(jobject))((JvmObject*)pthis)->klass->itable[7])(pthis);
}
jobject interface_mjava_util_List_iterator___Ljava_util_Iterator_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[5])(pthis);
}
jobject interface_mjava_util_List_listIterator___Ljava_util_ListIterator_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[32])(pthis);
}
jobject interface_mjava_util_List_listIterator__I_Ljava_util_ListIterator_(jobject pthis, jint pp0) {
	return ((jobject (*)(jobject,jint))((JvmObject*)pthis)->klass->itable[31])(pthis,pp0);
}
jobject interface_mjava_util_List_remove__I_Ljava_lang_Object_(jobject pthis, jint pp0) {
	return ((jobject (*)(jobject,jint))((JvmObject*)pthis)->klass->itable[20])(pthis,pp0);
}
jbool interface_mjava_util_List_remove__Ljava_lang_Object__Z(jobject pthis, jobject pp0) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[6])(pthis,pp0);
}
jint interface_mjava_util_List_size___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->itable[8])(pthis);
}
jobject interface_mjava_util_List_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pp0) {
	return ((jobject (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[3])(pthis,pp0);
}
JvmClass java_util_List_Class;
JvmClass ArrOf_java_util_List_Class;
JvmClass ArrOf_ArrOf_java_util_List_Class;

jbool java_util_List_isChildOf(JvmClass* klass) {
	return klass == &java_util_List_Class || klass == &java_util_Collection_Class || klass == &java_lang_Iterable_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_util_List() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_util_Collection();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_util_List_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_List);
	cls->name = JvmMakeString(L"java.util.List",14);
	cls->superClass = &java_util_Collection_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_List_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"List.java",9);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_util_List_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.List",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_List_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_List_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.List",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_List_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
