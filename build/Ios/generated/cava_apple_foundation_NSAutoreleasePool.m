#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSAutoreleasePool.h"


jobject mcava_apple_foundation_NSAutoreleasePool__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSAutoreleasePool_Class,0);
	NSAutoreleasePool* objcPeer =((cava_apple_foundation_NSAutoreleasePool*)pthis)->fcava_c_NativeObject_nativePeer= [[NSAutoreleasePool alloc] init];
	JVMLINE(29)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_foundation_NSAutoreleasePool_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSAutoreleasePool_Class,1);
	JVMLINE(33)
	[(NSAutoreleasePool*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer release];
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_foundation_NSAutoreleasePool_Class;
JvmClass ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
JvmClass ArrOf_ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;

jbool cava_apple_foundation_NSAutoreleasePool_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_foundation_NSAutoreleasePool_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_cava_apple_foundation_NSAutoreleasePool() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_foundation_NSObject();
	JvmSetup_java_lang_AutoCloseable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mcava_apple_foundation_NSAutoreleasePool_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &cava_apple_foundation_NSAutoreleasePool_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_foundation_NSAutoreleasePool);
	cls->name = JvmMakeString(L"cava.apple.foundation.NSAutoreleasePool",39);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_foundation_NSAutoreleasePool_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NSAutoreleasePool.java",22);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"NSAutoreleasePool"];
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_AutoCloseable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_foundation_NSAutoreleasePool_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSAutoreleasePool_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSAutoreleasePool__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 29, 29, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&cava_apple_foundation_NSAutoreleasePool_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSAutoreleasePool_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSAutoreleasePool_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 33, 33, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=33, .endLine=33, .type=&cava_apple_foundation_NSAutoreleasePool_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.foundation.NSAutoreleasePool",40);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_foundation_NSAutoreleasePool_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.foundation.NSAutoreleasePool",40);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
