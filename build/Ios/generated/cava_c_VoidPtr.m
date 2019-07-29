#include "cava_c_VoidPtr.h"


jobject mcava_c_VoidPtr__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_VoidPtr_Class,0);
	JVMLINE(28)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_VoidPtr_from__Ljava_lang_Object__Lcava_c_VoidPtr_(jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(po,jobject,0);

	JVMMETHOD(cava_c_VoidPtr_Class,1);
	JVMLINE(31)
	{ jobject $$ret = (void*)LOCAL(po,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mcava_c_VoidPtr_toInt___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_VoidPtr_Class,2);
	JVMLINE(52)
	{ jint $$ret = (jint)LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_VoidPtr_Class;
JvmClass ArrOf_cava_c_VoidPtr_Class;
JvmClass ArrOf_ArrOf_cava_c_VoidPtr_Class;

jbool cava_c_VoidPtr_isChildOf(JvmClass* klass) {
	return klass == &cava_c_VoidPtr_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_c_VoidPtr() {
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
	JvmClass* cls = &cava_c_VoidPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_VoidPtr);
	cls->name = JvmMakeString(L"cava.c.VoidPtr",14);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_VoidPtr_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"VoidPtr.java",12);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_VoidPtr_Class, JvmMakeString(L"<init>", 6), &cava_c_VoidPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_VoidPtr__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 28, 28, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=28, .endLine=28, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_VoidPtr_Class, JvmMakeString(L"from", 4), &cava_c_VoidPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mcava_c_VoidPtr_from__Ljava_lang_Object__Lcava_c_VoidPtr_, &invoke_OO 
#ifdef JVM_DEBUG
 , 31, 31, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=31, .endLine=31, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_VoidPtr_Class, JvmMakeString(L"toInt", 5), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_VoidPtr_toInt___I, &invoke_I 
#ifdef JVM_DEBUG
 , 52, 52, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=52, .endLine=52, .type=&cava_c_VoidPtr_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_c_VoidPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.VoidPtr",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_VoidPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_VoidPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.VoidPtr",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_VoidPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
