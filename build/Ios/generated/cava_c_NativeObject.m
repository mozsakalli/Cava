#include "cava_c_NativeObject.h"


jobject mcava_c_NativeObject__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_NativeObject_Class,0);
	JVMLINE(23)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_NativeObject_Class,1);
	JVMLINE(33)
	{ jobject $$ret = ((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_c_NativeObject_setNoOwner__Z_V(jobject pthis, jbool psub) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(psub,jbool,1);

	JVMMETHOD(cava_c_NativeObject_Class,2);
	JVMLINE(41)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_noOwner=LOCAL(psub,jbool);
	thread->framePtr = entryFramePtr;
}

void mcava_c_NativeObject_finalize___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_NativeObject_Class,3);
	JVMLINE(46)
	mjava_lang_Object_finalize___V(LOCAL(pthis,jobject));
	JVMLINE(48)
	if(!(((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_noOwner)){
		JVMLINE(48)
		virtual_mcava_c_NativeObject_dispose___V(LOCAL(pthis,jobject));
	}
	thread->framePtr = entryFramePtr;
}

void virtual_mcava_c_NativeObject_dispose___V(jobject pthis) {
	((void (*)(jobject))((JvmObject*)pthis)->klass->vtable[16])(pthis);
}
JvmClass cava_c_NativeObject_Class;
JvmClass ArrOf_cava_c_NativeObject_Class;
JvmClass ArrOf_ArrOf_cava_c_NativeObject_Class;

jbool cava_c_NativeObject_isChildOf(JvmClass* klass) {
	return klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_ZV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_c_NativeObject() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = jnull;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_c_NativeObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_NativeObject);
	cls->name = JvmMakeString(L"cava.c.NativeObject",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_NativeObject_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NativeObject.java",17);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 4, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_NativeObject_Class, JvmMakeString(L"<init>", 6), &cava_c_NativeObject_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_NativeObject__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 23, 23, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=23, .endLine=23, .type=&cava_c_NativeObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_NativeObject_Class, JvmMakeString(L"getNativePeer", 13), &cava_c_VoidPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_, &invoke_O 
#ifdef JVM_DEBUG
 , 33, 33, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=33, .endLine=33, .type=&cava_c_NativeObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_NativeObject_Class, JvmMakeString(L"setNoOwner", 10), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mcava_c_NativeObject_setNoOwner__Z_V, &invoke_ZV 
#ifdef JVM_DEBUG
 , 41, 41, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"sub",3), .startLine=41, .endLine=41, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=41, .endLine=41, .type=&cava_c_NativeObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_NativeObject_Class, JvmMakeString(L"finalize", 8), &V_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_NativeObject_finalize___V, &invoke_V 
#ifdef JVM_DEBUG
 , 46, 48, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=48, .type=&cava_c_NativeObject_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&cava_c_NativeObject_Class, JvmMakeString(L"noOwner", 7), &Z_Class, 4, (void*)offsetof(cava_c_NativeObject,fcava_c_NativeObject_noOwner))
	});

	cls = &ArrOf_cava_c_NativeObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.NativeObject",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_NativeObject_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_NativeObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.NativeObject",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_NativeObject_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
