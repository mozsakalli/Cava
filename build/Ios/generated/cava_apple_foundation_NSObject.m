#include "java_lang_StringBuilder.h"
#include "cava_apple_foundation_NSObject.h"
extern jobject $literal44;


jobject mcava_apple_foundation_NSObject__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,0);
	NSObject* objcPeer =((cava_apple_foundation_NSObject*)pthis)->fcava_c_NativeObject_nativePeer= [[NSObject alloc] init];
	JVMLINE(36)
	;
	JVMLINE(37)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=[mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject))) alloc];
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject_init___Ljava_lang_Object_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,1);
	JVMLINE(41)
	[(NSObject*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer init];
	JVMLINE(42)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr__V(jobject pthis, jobject phandle) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(phandle,jobject,1);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,2);
	JVMLINE(45)
	mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr_Z_V(LOCAL(pthis,jobject),LOCAL(phandle,jobject),jfalse);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr_Z_V(jobject pthis, jobject phandle, jbool psub) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(phandle,jobject,1);
	DEFARG(psub,jbool,2);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,3);
	JVMLINE(46)
	;
	JVMLINE(47)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=LOCAL(phandle,jobject);
	JVMLINE(48)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_noOwner=LOCAL(psub,jbool);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_foundation_NSObject_dispose___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,4);
	JVMLINE(57)
	if(((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer != jnull){
		JVMLINE(56)
		[(NSObject*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer dealloc];
		JVMLINE(57)
		((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=jnull;
	}
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject_getObjectiveCName__Ljava_lang_Class__Ljava_lang_String_(jobject pcls) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcls,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,5);
	JVMLINE(62)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_String_replace__CC_Ljava_lang_String_(mjava_lang_String_replace__CC_Ljava_lang_String_(mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pcls,jobject)),46,95),36,95)),$literal44)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject_getObjCClass___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,6);
	JVMLINE(66)
	{ jobject $$ret = mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_(jobject pcls) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcls,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,7);
	JVMLINE(72)
	{ jobject $$ret = NSClassFromString((NSString*)((JvmClass*)LOCAL(pcls,jobject))->objcClass); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSObject_alloc__Ljava_lang_Class__Lcava_apple_foundation_NSObject_(jobject pcls) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcls,jobject,0);
	DEFLOCAL(lresult,jobject,1);

	JVMMETHOD(cava_apple_foundation_NSObject_Class,8);
	JVMLINE(76)
	LOCAL(lresult,jobject)=JvmCheckCast(mjava_lang_Class_newInstance___Ljava_lang_Object_(LOCAL(pcls,jobject)),&cava_apple_foundation_NSObject_Class);
	JVMLINE(77)
	((cava_c_NativeObject*)(LOCAL(lresult,jobject)))->fcava_c_NativeObject_nativePeer=[mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_(LOCAL(pcls,jobject)) alloc];
	JVMLINE(78)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_foundation_NSObject_Class;
JvmClass ArrOf_cava_apple_foundation_NSObject_Class;
JvmClass ArrOf_ArrOf_cava_apple_foundation_NSObject_Class;

jbool cava_apple_foundation_NSObject_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OZO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_cava_apple_foundation_NSObject() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_c_NativeObject();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_foundation_NSObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_foundation_NSObject);
	cls->name = JvmMakeString(L"cava.apple.foundation.NSObject",30);
	cls->superClass = &cava_c_NativeObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_foundation_NSObject_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NSObject.java",13);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"NSObject"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 9, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSObject_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSObject__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 36, 37, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=37, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"init", 4), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSObject_init___Ljava_lang_Object_, &invoke_O 
#ifdef JVM_DEBUG
 , 41, 42, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=41, .endLine=42, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSObject_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_VoidPtr_Class}), &mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 45, 45, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"handle",6), .startLine=45, .endLine=45, .type=&cava_c_VoidPtr_Class},{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=45, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSObject_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&cava_c_VoidPtr_Class,&Z_Class}), &mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr_Z_V, &invoke_OZO 
#ifdef JVM_DEBUG
 , 46, 48, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"handle",6), .startLine=47, .endLine=48, .type=&cava_c_VoidPtr_Class},{.name=JvmMakeString(L"sub",3), .startLine=48, .endLine=48, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=47, .endLine=48, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"dispose", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSObject_dispose___V, &invoke_V 
#ifdef JVM_DEBUG
 , 56, 57, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=56, .endLine=57, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"getObjectiveCName", 17), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mcava_apple_foundation_NSObject_getObjectiveCName__Ljava_lang_Class__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 62, 62, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cls",3), .startLine=62, .endLine=62, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"getObjCClass", 12), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSObject_getObjCClass___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 66, 66, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=66, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"getObjCClass", 12), &java_lang_Class_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_, &invoke_OO 
#ifdef JVM_DEBUG
 , 72, 72, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cls",3), .startLine=72, .endLine=72, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSObject_Class, JvmMakeString(L"alloc", 5), &cava_apple_foundation_NSObject_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mcava_apple_foundation_NSObject_alloc__Ljava_lang_Class__Lcava_apple_foundation_NSObject_, &invoke_OO 
#ifdef JVM_DEBUG
 , 76, 78, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cls",3), .startLine=76, .endLine=78, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=76, .endLine=78, .type=&cava_apple_foundation_NSObject_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_foundation_NSObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.foundation.NSObject",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_foundation_NSObject_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_foundation_NSObject_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.foundation.NSObject",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_foundation_NSObject_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
