#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_reflect_Array.h"
#include "cava_c_CLib.h"
#include "cava_c_VoidPtr.h"
#include "java_lang_System.h"
extern jobject $literal0;


jobject mjava_lang_Object__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,0);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Object_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_Object_Class,1);
	JVMLINE(34)
	{ jbool $$ret = LOCAL(pobj,jobject) == LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Object_getClass___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,2);
	JVMLINE(38)
	{ jobject $$ret = ((java_lang_Object*)(LOCAL(pthis,jobject)))->fjava_lang_Object_klass; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Object_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,3);
	JVMLINE(42)
	{ jint $$ret = mcava_c_VoidPtr_toInt___I(mcava_c_VoidPtr_from__Ljava_lang_Object__Lcava_c_VoidPtr_(LOCAL(pthis,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_notify___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,4);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_notifyAll___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,5);
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Object_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,6);
	JVMLINE(50)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_Class_getName___Ljava_lang_String_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)))),$literal0),virtual_mjava_lang_Object_hashCode___I(LOCAL(pthis,jobject)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_wait___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,7);
	JVMLINE(54)
	mjava_lang_Object_wait__J_V(LOCAL(pthis,jobject),0);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_wait__J_V(jobject pthis, jlong ptimeout) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ptimeout,jlong,1);

	JVMMETHOD(java_lang_Object_Class,8);
	JVMLINE(59)
	mjava_lang_Object_wait__JI_V(LOCAL(pthis,jobject),LOCAL(ptimeout,jlong),0);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_wait__JI_V(jobject pthis, jlong ptimeout, jint pnanos) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ptimeout,jlong,1);
	DEFARG(pnanos,jint,2);

	JVMMETHOD(java_lang_Object_Class,9);
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Object_clone___Ljava_lang_Object_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(llen,jint,1);
	DEFLOCAL(lresult,jobject,2);

	JVMMETHOD(java_lang_Object_Class,10);
	JVMLINE(69)
	if(mjava_lang_Class_isArray___Z(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)))){
		JVMLINE(66)
		LOCAL(llen,jint)=mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I(LOCAL(pthis,jobject));
		JVMLINE(67)
		LOCAL(lresult,jobject)=mjava_lang_reflect_Array_newInstance__Ljava_lang_Class_I_Ljava_lang_Object_(mjava_lang_Class_getComponentType___Ljava_lang_Class_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject))),LOCAL(llen,jint));
		JVMLINE(68)
		mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(LOCAL(pthis,jobject),0,LOCAL(lresult,jobject),0,LOCAL(llen,jint));
		JVMLINE(69)
		{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(71)
	LOCAL(lresult,jobject)=JvmAllocObject(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)));
	JVMLINE(72)
	mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V(LOCAL(lresult,jobject),0,LOCAL(pthis,jobject),0,((java_lang_Class*)(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject))))->fjava_lang_Class_size);
	JVMLINE(74)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Object_finalize___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Object_Class,11);
	thread->framePtr = entryFramePtr;
}

jbool virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[1])(pthis,pobj);
}
jint virtual_mjava_lang_Object_hashCode___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->vtable[2])(pthis);
}
jobject virtual_mjava_lang_Object_toString___Ljava_lang_String_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->vtable[0])(pthis);
}
void virtual_mjava_lang_Object_finalize___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[26])(pthis);
}
JvmClass java_lang_Object_Class;
JvmClass ArrOf_java_lang_Object_Class;
JvmClass ArrOf_ArrOf_java_lang_Object_Class;

jbool java_lang_Object_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Object_Class;
}

extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_JIV(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_JV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_Object() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Object_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Object);
	cls->name = JvmMakeString(L"java.lang.Object",16);
	cls->superClass = jnull;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Object_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Object.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 12, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"<init>", 6), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Object_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 34, 34, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=34, .endLine=34, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=34, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"getClass", 8), &java_lang_Class_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_getClass___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 38, 38, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=38, .endLine=38, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 42, 42, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=42, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"notify", 6), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_notify___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"notifyAll", 9), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_notifyAll___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 50, 50, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=50, .endLine=50, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"wait", 4), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_wait___V, &invoke_V 
#ifdef JVM_DEBUG
 , 54, 54, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=54, .endLine=54, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"wait", 4), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_Object_wait__J_V, &invoke_JV 
#ifdef JVM_DEBUG
 , 59, 59, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"timeout",7), .startLine=59, .endLine=59, .type=&J_Class},{.name=JvmMakeString(L"this",4), .startLine=59, .endLine=59, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"wait", 4), &V_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&J_Class,&I_Class}), &mjava_lang_Object_wait__JI_V, &invoke_JIV 
#ifdef JVM_DEBUG
 , -1, 0, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"timeout",7), .startLine=0, .endLine=0, .type=&J_Class},{.name=JvmMakeString(L"nanos",5), .startLine=0, .endLine=0, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"clone", 5), &java_lang_Object_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_clone___Ljava_lang_Object_, &invoke_O 
#ifdef JVM_DEBUG
 , 66, 74, 0, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=74, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"len",3), .startLine=66, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=67, .endLine=74, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Object_Class, JvmMakeString(L"finalize", 8), &V_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Object_finalize___V, &invoke_V 
#ifdef JVM_DEBUG
 , -1, 0, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_Object_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_lang_Object_Class, JvmMakeString(L"klass", 5), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_Object,fjava_lang_Object_klass))
	});

	cls = &ArrOf_java_lang_Object_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Object",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Object_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Object_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Object",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Object_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
