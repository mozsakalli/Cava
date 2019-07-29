#include "java_io_Serializable.h"


JvmClass java_io_Serializable_Class;
JvmClass ArrOf_java_io_Serializable_Class;
JvmClass ArrOf_ArrOf_java_io_Serializable_Class;

jbool java_io_Serializable_isChildOf(JvmClass* klass) {
	return klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_io_Serializable() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_io_Serializable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_Serializable);
	cls->name = JvmMakeString(L"java.io.Serializable",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_Serializable_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Serializable.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_io_Serializable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.Serializable",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_Serializable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_Serializable_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.Serializable",21);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_Serializable_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
