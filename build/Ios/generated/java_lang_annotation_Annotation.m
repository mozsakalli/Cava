#include "java_lang_annotation_Annotation.h"


JvmClass java_lang_annotation_Annotation_Class;
JvmClass ArrOf_java_lang_annotation_Annotation_Class;
JvmClass ArrOf_ArrOf_java_lang_annotation_Annotation_Class;

jbool java_lang_annotation_Annotation_isChildOf(JvmClass* klass) {
	return klass == &java_lang_annotation_Annotation_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_java_lang_annotation_Annotation() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_annotation_Annotation_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_annotation_Annotation);
	cls->name = JvmMakeString(L"java.lang.annotation.Annotation",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_annotation_Annotation_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Annotation.java",15);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;

	cls = &ArrOf_java_lang_annotation_Annotation_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.annotation.Annotation",32);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_annotation_Annotation_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_annotation_Annotation_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.annotation.Annotation",32);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_annotation_Annotation_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
