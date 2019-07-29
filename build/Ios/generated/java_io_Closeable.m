#include "java_io_Closeable.h"


void interface_mjava_io_Closeable_close___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->itable[0])(pthis);
}
JvmClass java_io_Closeable_Class;
JvmClass ArrOf_java_io_Closeable_Class;
JvmClass ArrOf_ArrOf_java_io_Closeable_Class;

jbool java_io_Closeable_isChildOf(JvmClass* klass) {
	return klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_io_Closeable() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_AutoCloseable();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_io_Closeable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_Closeable);
	cls->name = JvmMakeString(L"java.io.Closeable",17);
	cls->superClass = &java_lang_AutoCloseable_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_Closeable_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Closeable.java",14);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_io_Closeable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.Closeable",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_Closeable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_Closeable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.Closeable",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_Closeable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
