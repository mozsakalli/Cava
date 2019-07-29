#include "java_lang_reflect_Method.h"


jobject mjava_lang_reflect_Method__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,0);
	JVMLINE(28)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Method_getName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,1);
	JVMLINE(38)
	{ jobject $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_name; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_reflect_Method_getModifiers___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,2);
	JVMLINE(42)
	{ jint $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_modifiers; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_reflect_Method_getParameterCount___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,3);
	JVMLINE(46)
	{ jint $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_parameters != jnull ? JvmArrayLen(((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_parameters) : 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Method_getReturnType___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,4);
	JVMLINE(50)
	{ jobject $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_type; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Method_getParameterTypes____Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,5);
	JVMLINE(54)
	{ jobject $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_parameters; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Method_invoke__Ljava_lang_Object__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pbase, jobject pparams) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pparams,jobject,2);

	JVMMETHOD(java_lang_reflect_Method_Class,6);
	JVMLINE(58)
	{ jobject $$ret = ((JvmMethod*)LOCAL(pthis,jobject))->invoke(LOCAL(pthis,jobject),LOCAL(pbase,jobject),LOCAL(pparams,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Method_getDeclaringClass___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Method_Class,7);
	JVMLINE(62)
	{ jobject $$ret = ((java_lang_reflect_Method*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Method_declaringClass; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Method_setAccessible__Z_V(jobject pthis, jbool pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jbool,1);

	JVMMETHOD(java_lang_reflect_Method_Class,8);
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_reflect_Method_Class;
JvmClass ArrOf_java_lang_reflect_Method_Class;
JvmClass ArrOf_ArrOf_java_lang_reflect_Method_Class;

jbool java_lang_reflect_Method_isChildOf(JvmClass* klass) {
	return klass == &java_lang_reflect_Method_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_ZV(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_reflect_Method() {
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
	JvmClass* cls = &java_lang_reflect_Method_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_reflect_Method);
	cls->name = JvmMakeString(L"java.lang.reflect.Method",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_reflect_Method_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Method.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 9, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"<init>", 6), &java_lang_reflect_Method_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 28, 28, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=28, .endLine=28, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getName", 7), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 38, 38, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=38, .endLine=38, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getModifiers", 12), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getModifiers___I, &invoke_I 
#ifdef JVM_DEBUG
 , 42, 42, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=42, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getParameterCount", 17), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getParameterCount___I, &invoke_I 
#ifdef JVM_DEBUG
 , 46, 46, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=46, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getReturnType", 13), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getReturnType___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 50, 50, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=50, .endLine=50, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getParameterTypes", 17), &ArrOf_java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getParameterTypes____Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 54, 54, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=54, .endLine=54, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"invoke", 6), &java_lang_Object_Class, 129, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&ArrOf_java_lang_Object_Class}), &mjava_lang_reflect_Method_invoke__Ljava_lang_Object__Ljava_lang_Object__Ljava_lang_Object_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 58, 58, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=58, .endLine=58, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"params",6), .startLine=58, .endLine=58, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=58, .endLine=58, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"getDeclaringClass", 17), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Method_getDeclaringClass___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 62, 62, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=62, .endLine=62, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Method_Class, JvmMakeString(L"setAccessible", 13), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mjava_lang_reflect_Method_setAccessible__Z_V, &invoke_ZV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=0, .endLine=0, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_reflect_Method_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 5, &(JvmField*[]){
	JvmMakeField(&java_lang_reflect_Method_Class, JvmMakeString(L"declaringClass", 14), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_reflect_Method,fjava_lang_reflect_Method_declaringClass))
	,JvmMakeField(&java_lang_reflect_Method_Class, JvmMakeString(L"name", 4), &java_lang_String_Class, 1, (void*)offsetof(java_lang_reflect_Method,fjava_lang_reflect_Method_name))
	,JvmMakeField(&java_lang_reflect_Method_Class, JvmMakeString(L"type", 4), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_reflect_Method,fjava_lang_reflect_Method_type))
	,JvmMakeField(&java_lang_reflect_Method_Class, JvmMakeString(L"modifiers", 9), &I_Class, 1, (void*)offsetof(java_lang_reflect_Method,fjava_lang_reflect_Method_modifiers))
	,JvmMakeField(&java_lang_reflect_Method_Class, JvmMakeString(L"parameters", 10), &ArrOf_java_lang_Class_Class, 1, (void*)offsetof(java_lang_reflect_Method,fjava_lang_reflect_Method_parameters))
	});

	cls = &ArrOf_java_lang_reflect_Method_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.reflect.Method",25);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_reflect_Method_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_reflect_Method_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.reflect.Method",25);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_reflect_Method_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
