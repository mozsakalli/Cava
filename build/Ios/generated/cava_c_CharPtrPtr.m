#include "cava_c_CharPtrPtr.h"


jobject mcava_c_CharPtrPtr__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_CharPtrPtr_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtrPtr_alloc__I_Lcava_c_CharPtrPtr_(jint psize) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(psize,jint,0);

	JVMMETHOD(cava_c_CharPtrPtr_Class,1);
	JVMLINE(30)
	{ jobject $$ret = (char**)malloc(LOCAL(psize,jint)*sizeof(char**)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_c_CharPtrPtr_set__ILjava_lang_Object__V(jobject pthis, jint pindex, jobject pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pindex,jint,1);
	DEFARG(pvalue,jobject,2);

	JVMMETHOD(cava_c_CharPtrPtr_Class,2);
	JVMLINE(34)
	((char**)LOCAL(pthis,jobject))[LOCAL(pindex,jint)] = (char*)LOCAL(pvalue,jobject);
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_CharPtrPtr_Class;
JvmClass ArrOf_cava_c_CharPtrPtr_Class;
JvmClass ArrOf_ArrOf_cava_c_CharPtrPtr_Class;

jbool cava_c_CharPtrPtr_isChildOf(JvmClass* klass) {
	return klass == &cava_c_CharPtrPtr_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_IOV(jobject,jobject,jobject);
void JvmSetup_cava_c_CharPtrPtr() {
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
	JvmClass* cls = &cava_c_CharPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_CharPtrPtr);
	cls->name = JvmMakeString(L"cava.c.CharPtrPtr",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_CharPtrPtr_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CharPtrPtr.java",15);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_CharPtrPtr_Class, JvmMakeString(L"<init>", 6), &cava_c_CharPtrPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_CharPtrPtr__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_c_CharPtrPtr_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtrPtr_Class, JvmMakeString(L"alloc", 5), &cava_c_CharPtrPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mcava_c_CharPtrPtr_alloc__I_Lcava_c_CharPtrPtr_, &invoke_IO 
#ifdef JVM_DEBUG
 , 30, 30, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"size",4), .startLine=30, .endLine=30, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtrPtr_Class, JvmMakeString(L"set", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&java_lang_Object_Class}), &mcava_c_CharPtrPtr_set__ILjava_lang_Object__V, &invoke_IOV 
#ifdef JVM_DEBUG
 , 34, 34, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"index",5), .startLine=34, .endLine=34, .type=&I_Class},{.name=JvmMakeString(L"value",5), .startLine=34, .endLine=34, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=34, .type=&cava_c_CharPtrPtr_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_c_CharPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.CharPtrPtr",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_CharPtrPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_CharPtrPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.CharPtrPtr",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_CharPtrPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
