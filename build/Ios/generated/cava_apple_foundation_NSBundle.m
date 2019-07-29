#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSString.h"
#include "cava_apple_foundation_NSBundle.h"


jobject mcava_apple_foundation_NSBundle__init___Lcava_c_VoidPtr__V(jobject pthis, jobject ppeer) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ppeer,jobject,1);

	JVMMETHOD(cava_apple_foundation_NSBundle_Class,0);
	JVMLINE(32)
	mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr_Z_V(LOCAL(pthis,jobject),LOCAL(ppeer,jobject),jtrue);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSBundle_getMainBundle___Lcava_apple_foundation_NSBundle_() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(cava_apple_foundation_NSBundle_Class,1);
	JVMLINE(34)
	{ jobject $$ret = mcava_apple_foundation_NSBundle__init___Lcava_c_VoidPtr__V(JvmAllocObject(&cava_apple_foundation_NSBundle_Class),[NSBundle mainBundle]); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSBundle_getBundlePath___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSBundle_Class,2);
	JVMLINE(38)
	{ jobject $$ret = mcava_apple_foundation_NSString_createJavaString__Lcava_c_VoidPtr__Ljava_lang_String_([(NSBundle*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer bundlePath]); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_foundation_NSBundle_Class;
JvmClass ArrOf_cava_apple_foundation_NSBundle_Class;
JvmClass ArrOf_ArrOf_cava_apple_foundation_NSBundle_Class;

jbool cava_apple_foundation_NSBundle_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_foundation_NSBundle_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_foundation_NSBundle() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_foundation_NSObject();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_foundation_NSBundle_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_foundation_NSBundle);
	cls->name = JvmMakeString(L"cava.apple.foundation.NSBundle",30);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_foundation_NSBundle_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NSBundle.java",13);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"NSBundle"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_foundation_NSBundle_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSBundle_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_VoidPtr_Class}), &mcava_apple_foundation_NSBundle__init___Lcava_c_VoidPtr__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 32, 32, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"peer",4), .startLine=32, .endLine=32, .type=&cava_c_VoidPtr_Class},{.name=JvmMakeString(L"this",4), .startLine=32, .endLine=32, .type=&cava_apple_foundation_NSBundle_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSBundle_Class, JvmMakeString(L"getMainBundle", 13), &cava_apple_foundation_NSBundle_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSBundle_getMainBundle___Lcava_apple_foundation_NSBundle_, &invoke_O 
#ifdef JVM_DEBUG
 , 34, 34, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSBundle_Class, JvmMakeString(L"getBundlePath", 13), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSBundle_getBundlePath___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 38, 38, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=38, .endLine=38, .type=&cava_apple_foundation_NSBundle_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_foundation_NSBundle_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.foundation.NSBundle",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_foundation_NSBundle_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_foundation_NSBundle_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.foundation.NSBundle",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_foundation_NSBundle_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
