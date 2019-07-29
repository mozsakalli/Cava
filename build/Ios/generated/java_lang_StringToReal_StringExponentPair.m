#include "java_lang_StringToReal_StringExponentPair.h"


jobject mjava_lang_StringToReal_StringExponentPair__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringToReal_StringExponentPair_Class,0);
	JVMLINE(26)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_StringToReal_StringExponentPair_specialValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringToReal_StringExponentPair_Class,1);
	JVMLINE(37)
	if(((java_lang_StringToReal_StringExponentPair*)(LOCAL(pthis,jobject)))->fjava_lang_StringToReal_StringExponentPair_infinity){
		JVMLINE(37)
		{ jfloat $$ret = ((java_lang_StringToReal_StringExponentPair*)(LOCAL(pthis,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative ? -Infinity : Infinity; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(39)
	{ jfloat $$ret = ((java_lang_StringToReal_StringExponentPair*)(LOCAL(pthis,jobject)))->fjava_lang_StringToReal_StringExponentPair_negative ? -0.0f : 0.0f; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringToReal_StringExponentPair__init___Ljava_lang_StringToReal$1__V(jobject pthis, jobject px0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(px0,jobject,1);

	JVMMETHOD(java_lang_StringToReal_StringExponentPair_Class,2);
	JVMLINE(26)
	mjava_lang_StringToReal_StringExponentPair__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_StringToReal_StringExponentPair_Class;
JvmClass ArrOf_java_lang_StringToReal_StringExponentPair_Class;
JvmClass ArrOf_ArrOf_java_lang_StringToReal_StringExponentPair_Class;

jbool java_lang_StringToReal_StringExponentPair_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StringToReal_StringExponentPair_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_StringToReal_StringExponentPair() {
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
	JvmClass* cls = &java_lang_StringToReal_StringExponentPair_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StringToReal_StringExponentPair);
	cls->name = JvmMakeString(L"java.lang.StringToReal$StringExponentPair",41);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StringToReal_StringExponentPair_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StringToReal.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"<init>", 6), &java_lang_StringToReal_StringExponentPair_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringToReal_StringExponentPair__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 26, 26, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=26, .endLine=26, .type=&java_lang_StringToReal_StringExponentPair_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"specialValue", 12), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringToReal_StringExponentPair_specialValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 37, 39, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=39, .type=&java_lang_StringToReal_StringExponentPair_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"<init>", 6), &java_lang_StringToReal_StringExponentPair_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_StringToReal_1_Class}), &mjava_lang_StringToReal_StringExponentPair__init___Ljava_lang_StringToReal$1__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 26, 26, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"x0",2), .startLine=0, .endLine=26, .type=&java_lang_StringToReal_1_Class},{.name=JvmMakeString(L"this",4), .startLine=26, .endLine=26, .type=&java_lang_StringToReal_StringExponentPair_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 5, &(JvmField*[]){
	JvmMakeField(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"s", 1), &java_lang_String_Class, 0, (void*)offsetof(java_lang_StringToReal_StringExponentPair,fjava_lang_StringToReal_StringExponentPair_s))
	,JvmMakeField(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"e", 1), &J_Class, 0, (void*)offsetof(java_lang_StringToReal_StringExponentPair,fjava_lang_StringToReal_StringExponentPair_e))
	,JvmMakeField(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"negative", 8), &Z_Class, 0, (void*)offsetof(java_lang_StringToReal_StringExponentPair,fjava_lang_StringToReal_StringExponentPair_negative))
	,JvmMakeField(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"infinity", 8), &Z_Class, 0, (void*)offsetof(java_lang_StringToReal_StringExponentPair,fjava_lang_StringToReal_StringExponentPair_infinity))
	,JvmMakeField(&java_lang_StringToReal_StringExponentPair_Class, JvmMakeString(L"zero", 4), &Z_Class, 0, (void*)offsetof(java_lang_StringToReal_StringExponentPair,fjava_lang_StringToReal_StringExponentPair_zero))
	});

	cls = &ArrOf_java_lang_StringToReal_StringExponentPair_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StringToReal$StringExponentPair",42);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StringToReal_StringExponentPair_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StringToReal_StringExponentPair_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StringToReal$StringExponentPair",42);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StringToReal_StringExponentPair_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
