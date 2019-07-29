#include "cava_c_WCharPtr.h"


jobject mcava_c_WCharPtr__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_WCharPtr_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_WCharPtr_from__Ljava_lang_String__Lcava_c_WCharPtr_(jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstring,jobject,0);

	JVMMETHOD(cava_c_WCharPtr_Class,1);
	JVMLINE(34)
	{ jobject $$ret = mcava_c_WCharPtr_from___CI_Lcava_c_WCharPtr_(((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_value,((java_lang_String*)(LOCAL(pstring,jobject)))->fjava_lang_String_offset); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_WCharPtr_from___CI_Lcava_c_WCharPtr_(jobject pchars, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pchars,jobject,0);
	DEFARG(pindex,jint,1);

	JVMMETHOD(cava_c_WCharPtr_Class,2);
	JVMLINE(42)
	{ jobject $$ret = ((jchar*)(JvmArrayData(LOCAL(pchars,jobject)))) + LOCAL(pindex,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_WCharPtr_Class;
JvmClass ArrOf_cava_c_WCharPtr_Class;
JvmClass ArrOf_ArrOf_cava_c_WCharPtr_Class;

jbool cava_c_WCharPtr_isChildOf(JvmClass* klass) {
	return klass == &cava_c_WCharPtr_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_c_WCharPtr() {
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
	JvmClass* cls = &cava_c_WCharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_WCharPtr);
	cls->name = JvmMakeString(L"cava.c.WCharPtr",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_WCharPtr_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"WCharPtr.java",13);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_WCharPtr_Class, JvmMakeString(L"<init>", 6), &cava_c_WCharPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_WCharPtr__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_c_WCharPtr_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_WCharPtr_Class, JvmMakeString(L"from", 4), &cava_c_WCharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mcava_c_WCharPtr_from__Ljava_lang_String__Lcava_c_WCharPtr_, &invoke_OO 
#ifdef JVM_DEBUG
 , 34, 34, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=34, .endLine=34, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_WCharPtr_Class, JvmMakeString(L"from", 4), &cava_c_WCharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&ArrOf_C_Class,&I_Class}), &mcava_c_WCharPtr_from___CI_Lcava_c_WCharPtr_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 42, 42, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"chars",5), .startLine=42, .endLine=42, .type=&ArrOf_C_Class},{.name=JvmMakeString(L"index",5), .startLine=42, .endLine=42, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_c_WCharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.WCharPtr",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_WCharPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_WCharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.WCharPtr",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_WCharPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
