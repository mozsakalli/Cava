#include "cava_c_VoidPtrPtr.h"


jobject mcava_c_VoidPtrPtr__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_VoidPtrPtr_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_VoidPtrPtr_get__I_Ljava_lang_Object_(jobject pthis, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pindex,jint,1);

	JVMMETHOD(cava_c_VoidPtrPtr_Class,1);
	JVMLINE(42)
	{ jobject $$ret = ((void**)LOCAL(pthis,jobject))[LOCAL(pindex,jint)]; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_VoidPtrPtr_Class;
JvmClass ArrOf_cava_c_VoidPtrPtr_Class;
JvmClass ArrOf_ArrOf_cava_c_VoidPtrPtr_Class;

jbool cava_c_VoidPtrPtr_isChildOf(JvmClass* klass) {
	return klass == &cava_c_VoidPtrPtr_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_c_VoidPtrPtr() {
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
	JvmClass* cls = &cava_c_VoidPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_VoidPtrPtr);
	cls->name = JvmMakeString(L"cava.c.VoidPtrPtr",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_VoidPtrPtr_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"VoidPtrPtr.java",15);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_VoidPtrPtr_Class, JvmMakeString(L"<init>", 6), &cava_c_VoidPtrPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_VoidPtrPtr__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_c_VoidPtrPtr_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_VoidPtrPtr_Class, JvmMakeString(L"get", 3), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mcava_c_VoidPtrPtr_get__I_Ljava_lang_Object_, &invoke_IO 
#ifdef JVM_DEBUG
 , 42, 42, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"index",5), .startLine=42, .endLine=42, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=42, .type=&cava_c_VoidPtrPtr_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_c_VoidPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.VoidPtrPtr",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_VoidPtrPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_VoidPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.VoidPtrPtr",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_VoidPtrPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
