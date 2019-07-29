#include "java_lang_StringBuffer.h"


jobject mjava_lang_StringBuffer__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringBuffer_Class,0);
	JVMLINE(34)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(35)
	((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal=mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuffer__init___I_V(jobject pthis, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plength,jint,1);

	JVMMETHOD(java_lang_StringBuffer_Class,1);
	JVMLINE(43)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(44)
	((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal=mjava_lang_StringBuilder__init___I_V(JvmAllocObject(&java_lang_StringBuilder_Class),LOCAL(plength,jint));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuffer_append__C_Ljava_lang_StringBuffer_(jobject pthis, jchar pc) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pc,jchar,1);

	JVMMETHOD(java_lang_StringBuffer_Class,2);
	JVMLINE(70)
	mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal,LOCAL(pc,jchar));
	JVMLINE(71)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuffer_append__Ljava_lang_Object__Ljava_lang_StringBuffer_(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_StringBuffer_Class,3);
	JVMLINE(130)
	mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal,LOCAL(pobj,jobject));
	JVMLINE(131)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuffer_append__Ljava_lang_String__Ljava_lang_StringBuffer_(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);

	JVMMETHOD(java_lang_StringBuffer_Class,4);
	JVMLINE(140)
	mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal,LOCAL(pstr,jobject));
	JVMLINE(141)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuffer_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringBuffer_Class,5);
	JVMLINE(319)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(((java_lang_StringBuffer*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuffer_internal); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_StringBuffer_Class;
JvmClass ArrOf_java_lang_StringBuffer_Class;
JvmClass ArrOf_ArrOf_java_lang_StringBuffer_Class;

jbool java_lang_StringBuffer_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StringBuffer_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_CO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_StringBuffer() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_StringBuffer_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_StringBuffer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StringBuffer);
	cls->name = JvmMakeString(L"java.lang.StringBuffer",22);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StringBuffer_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StringBuffer.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 6, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"<init>", 6), &java_lang_StringBuffer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuffer__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 34, 35, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=35, .type=&java_lang_StringBuffer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"<init>", 6), &java_lang_StringBuffer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuffer__init___I_V, &invoke_IO 
#ifdef JVM_DEBUG
 , 43, 44, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"length",6), .startLine=44, .endLine=44, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=43, .endLine=44, .type=&java_lang_StringBuffer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"append", 6), &java_lang_StringBuffer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_StringBuffer_append__C_Ljava_lang_StringBuffer_, &invoke_CO 
#ifdef JVM_DEBUG
 , 70, 71, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"c",1), .startLine=70, .endLine=71, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=70, .endLine=71, .type=&java_lang_StringBuffer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"append", 6), &java_lang_StringBuffer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_StringBuffer_append__Ljava_lang_Object__Ljava_lang_StringBuffer_, &invoke_OO 
#ifdef JVM_DEBUG
 , 130, 131, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=130, .endLine=131, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=130, .endLine=131, .type=&java_lang_StringBuffer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"append", 6), &java_lang_StringBuffer_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_StringBuffer_append__Ljava_lang_String__Ljava_lang_StringBuffer_, &invoke_OO 
#ifdef JVM_DEBUG
 , 140, 141, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=140, .endLine=141, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=140, .endLine=141, .type=&java_lang_StringBuffer_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuffer_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuffer_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 319, 319, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=319, .endLine=319, .type=&java_lang_StringBuffer_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_lang_StringBuffer_Class, JvmMakeString(L"internal", 8), &java_lang_StringBuilder_Class, 2, (void*)offsetof(java_lang_StringBuffer,fjava_lang_StringBuffer_internal))
	});

	cls = &ArrOf_java_lang_StringBuffer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StringBuffer",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StringBuffer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StringBuffer_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StringBuffer",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StringBuffer_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
