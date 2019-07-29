#include "kotlin_KotlinNullPointerException.h"


jobject mkotlin_KotlinNullPointerException__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(kotlin_KotlinNullPointerException_Class,0);
	JVMLINE(9)
	mjava_lang_NullPointerException__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass kotlin_KotlinNullPointerException_Class;
JvmClass ArrOf_kotlin_KotlinNullPointerException_Class;
JvmClass ArrOf_ArrOf_kotlin_KotlinNullPointerException_Class;

jbool kotlin_KotlinNullPointerException_isChildOf(JvmClass* klass) {
	return klass == &kotlin_KotlinNullPointerException_Class || klass == &java_lang_NullPointerException_Class || klass == &java_lang_RuntimeException_Class || klass == &java_lang_Exception_Class || klass == &java_lang_Throwable_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_kotlin_KotlinNullPointerException() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_NullPointerException();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Throwable_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &kotlin_KotlinNullPointerException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(kotlin_KotlinNullPointerException);
	cls->name = JvmMakeString(L"kotlin.KotlinNullPointerException",33);
	cls->superClass = &java_lang_NullPointerException_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &kotlin_KotlinNullPointerException_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"KotlinNullPointerException.kt",29);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&kotlin_KotlinNullPointerException_Class, JvmMakeString(L"<init>", 6), &kotlin_KotlinNullPointerException_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mkotlin_KotlinNullPointerException__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 9, 9, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=9, .endLine=9, .type=&kotlin_KotlinNullPointerException_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_kotlin_KotlinNullPointerException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[kotlin.KotlinNullPointerException",34);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &kotlin_KotlinNullPointerException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_kotlin_KotlinNullPointerException_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[kotlin.KotlinNullPointerException",34);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_kotlin_KotlinNullPointerException_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
