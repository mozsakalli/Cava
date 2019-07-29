#include "java_lang_Math.h"


jobject mjava_lang_Math__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Math_Class,0);
	JVMLINE(46)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Math_max__II_I(jint pi1, jint pi2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi1,jint,0);
	DEFARG(pi2,jint,1);

	JVMMETHOD(java_lang_Math_Class,1);
	JVMLINE(524)
	{ jint $$ret = LOCAL(pi1,jint) > LOCAL(pi2,jint) ? LOCAL(pi1,jint) : LOCAL(pi2,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Math_min__II_I(jint pi1, jint pi2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pi1,jint,0);
	DEFARG(pi2,jint,1);

	JVMMETHOD(java_lang_Math_Class,2);
	JVMLINE(602)
	{ jint $$ret = LOCAL(pi1,jint) < LOCAL(pi2,jint) ? LOCAL(pi1,jint) : LOCAL(pi2,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Math_Class;
JvmClass ArrOf_java_lang_Math_Class;
JvmClass ArrOf_ArrOf_java_lang_Math_Class;

jbool java_lang_Math_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Math_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_III(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_Math() {
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
	JvmClass* cls = &java_lang_Math_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Math);
	cls->name = JvmMakeString(L"java.lang.Math",14);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Math_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Math.java",9);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Math_Class, JvmMakeString(L"<init>", 6), &java_lang_Math_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Math__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 46, 46, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=46, .type=&java_lang_Math_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Math_Class, JvmMakeString(L"max", 3), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Math_max__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 524, 524, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i1",2), .startLine=524, .endLine=524, .type=&I_Class},{.name=JvmMakeString(L"i2",2), .startLine=524, .endLine=524, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Math_Class, JvmMakeString(L"min", 3), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_lang_Math_min__II_I, &invoke_III 
#ifdef JVM_DEBUG
 , 602, 602, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i1",2), .startLine=602, .endLine=602, .type=&I_Class},{.name=JvmMakeString(L"i2",2), .startLine=602, .endLine=602, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_Math_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Math",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Math_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Math_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Math",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Math_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
