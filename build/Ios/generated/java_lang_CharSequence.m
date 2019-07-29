#include "java_lang_CharSequence.h"


jint interface_mjava_lang_CharSequence_length___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->itable[11])(pthis);
}
jchar interface_mjava_lang_CharSequence_charAt__I_C(jobject pthis, jint pp0) {
	return ((jchar (*)(jobject,jint))((JvmObject*)pthis)->klass->itable[12])(pthis,pp0);
}
jobject interface_mjava_lang_CharSequence_toString___Ljava_lang_String_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[10])(pthis);
}
JvmClass java_lang_CharSequence_Class;
JvmClass ArrOf_java_lang_CharSequence_Class;
JvmClass ArrOf_ArrOf_java_lang_CharSequence_Class;

jbool java_lang_CharSequence_isChildOf(JvmClass* klass) {
	return klass == &java_lang_CharSequence_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_lang_CharSequence() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_CharSequence_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_CharSequence);
	cls->name = JvmMakeString(L"java.lang.CharSequence",22);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_CharSequence_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CharSequence.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_lang_CharSequence_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.CharSequence",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_CharSequence_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_CharSequence_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.CharSequence",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_CharSequence_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
