#include "java_lang_reflect_Modifier.h"


jobject mjava_lang_reflect_Modifier__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Modifier_Class,0);
	JVMLINE(19)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_reflect_Modifier_isStatic__I_Z(jint pmod) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pmod,jint,0);

	JVMMETHOD(java_lang_reflect_Modifier_Class,1);
	JVMLINE(34)
	{ jbool $$ret = (LOCAL(pmod,jint) & 8) != 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_reflect_Modifier_Class;
JvmClass ArrOf_java_lang_reflect_Modifier_Class;
JvmClass ArrOf_ArrOf_java_lang_reflect_Modifier_Class;

jbool java_lang_reflect_Modifier_isChildOf(JvmClass* klass) {
	return klass == &java_lang_reflect_Modifier_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_IZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_reflect_Modifier() {
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
	JvmClass* cls = &java_lang_reflect_Modifier_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_reflect_Modifier);
	cls->name = JvmMakeString(L"java.lang.reflect.Modifier",26);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_reflect_Modifier_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Modifier.java",13);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_reflect_Modifier_Class, JvmMakeString(L"<init>", 6), &java_lang_reflect_Modifier_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Modifier__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 19, 19, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=19, .endLine=19, .type=&java_lang_reflect_Modifier_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Modifier_Class, JvmMakeString(L"isStatic", 8), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_reflect_Modifier_isStatic__I_Z, &invoke_IZ 
#ifdef JVM_DEBUG
 , 34, 34, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"mod",3), .startLine=34, .endLine=34, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_reflect_Modifier_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.reflect.Modifier",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_reflect_Modifier_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_reflect_Modifier_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.reflect.Modifier",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_reflect_Modifier_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
