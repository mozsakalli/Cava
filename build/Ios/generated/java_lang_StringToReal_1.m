#include "java_lang_StringToReal_1.h"


JvmClass java_lang_StringToReal_1_Class;
JvmClass ArrOf_java_lang_StringToReal_1_Class;
JvmClass ArrOf_ArrOf_java_lang_StringToReal_1_Class;

jbool java_lang_StringToReal_1_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StringToReal_1_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_lang_StringToReal_1() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_StringToReal_1_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StringToReal_1);
	cls->name = JvmMakeString(L"java.lang.StringToReal$1",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StringToReal_1_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StringToReal.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 0, &(JvmMethod*[]){
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_StringToReal_1_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StringToReal$1",25);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StringToReal_1_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StringToReal_1_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StringToReal$1",25);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StringToReal_1_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
