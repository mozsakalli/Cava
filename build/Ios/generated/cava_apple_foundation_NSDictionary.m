#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSDictionary.h"


jobject mcava_apple_foundation_NSDictionary__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_foundation_NSDictionary_Class,0);
	NSDictionary* objcPeer =((cava_apple_foundation_NSDictionary*)pthis)->fcava_c_NativeObject_nativePeer= [[NSDictionary alloc] init];
	JVMLINE(30)
	;
	JVMLINE(31)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=[[NSDictionary alloc] init];
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_foundation_NSDictionary_Class;
JvmClass ArrOf_cava_apple_foundation_NSDictionary_Class;
JvmClass ArrOf_ArrOf_cava_apple_foundation_NSDictionary_Class;

jbool cava_apple_foundation_NSDictionary_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_foundation_NSDictionary_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_foundation_NSDictionary() {
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
	JvmClass* cls = &cava_apple_foundation_NSDictionary_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_foundation_NSDictionary);
	cls->name = JvmMakeString(L"cava.apple.foundation.NSDictionary",34);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_foundation_NSDictionary_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NSDictionary.java",17);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"NSDictionary"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_foundation_NSDictionary_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSDictionary_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_foundation_NSDictionary__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 30, 31, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=31, .type=&cava_apple_foundation_NSDictionary_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_foundation_NSDictionary_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.foundation.NSDictionary",35);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_foundation_NSDictionary_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_foundation_NSDictionary_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.foundation.NSDictionary",35);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_foundation_NSDictionary_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
