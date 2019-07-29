#include "java_lang_Number.h"


jobject mjava_lang_Number__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Number_Class,0);
	JVMLINE(23)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte virtual_mjava_lang_Number_byteValue___B(jobject pthis) {
	return ((jbyte (*)(jobject))((JvmObject*)pthis)->klass->vtable[6])(pthis);
}
jshort virtual_mjava_lang_Number_shortValue___S(jobject pthis) {
	return ((jshort (*)(jobject))((JvmObject*)pthis)->klass->vtable[3])(pthis);
}
jint virtual_mjava_lang_Number_intValue___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->vtable[7])(pthis);
}
jlong virtual_mjava_lang_Number_longValue___J(jobject pthis) {
	return ((jlong (*)(jobject))((JvmObject*)pthis)->klass->vtable[4])(pthis);
}
jfloat virtual_mjava_lang_Number_floatValue___F(jobject pthis) {
	return ((jfloat (*)(jobject))((JvmObject*)pthis)->klass->vtable[5])(pthis);
}
jdouble virtual_mjava_lang_Number_doubleValue___D(jobject pthis) {
	return ((jdouble (*)(jobject))((JvmObject*)pthis)->klass->vtable[8])(pthis);
}
JvmClass java_lang_Number_Class;
JvmClass ArrOf_java_lang_Number_Class;
JvmClass ArrOf_ArrOf_java_lang_Number_Class;

jbool java_lang_Number_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_Number() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Serializable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[6] = jnull;
	_vTable[3] = jnull;
	_vTable[7] = jnull;
	_vTable[4] = jnull;
	_vTable[5] = jnull;
	_vTable[8] = jnull;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Number_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Number);
	cls->name = JvmMakeString(L"java.lang.Number",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Number_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Number.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Serializable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Number_Class, JvmMakeString(L"<init>", 6), &java_lang_Number_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Number__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 23, 23, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=23, .endLine=23, .type=&java_lang_Number_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_Number_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Number",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Number_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Number_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Number",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Number_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
