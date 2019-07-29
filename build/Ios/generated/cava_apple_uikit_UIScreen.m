#include "cava_c_NativeObject.h"
#include "cava_apple_uikit_UIScreen.h"


jobject mcava_apple_uikit_UIScreen__init___Lcava_c_VoidPtr__V(jobject pthis, jobject phandle) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(phandle,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIScreen_Class,0);
	JVMLINE(34)
	;
	JVMLINE(35)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=LOCAL(phandle,jobject);
	JVMLINE(36)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_noOwner=jtrue;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_uikit_UIScreen_getMainScreen___Lcava_apple_uikit_UIScreen_() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(cava_apple_uikit_UIScreen_Class,1);
	JVMLINE(40)
	{ jobject $$ret = mcava_apple_uikit_UIScreen__init___Lcava_c_VoidPtr__V(JvmAllocObject(&cava_apple_uikit_UIScreen_Class),[UIScreen mainScreen]); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_uikit_UIScreen_getBounds___Lcava_apple_coregraphics_CGRect_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_uikit_UIScreen_Class,2);
	JVMLINE(44)
	{ jobject $$ret = mcava_apple_coregraphics_CGRect__init___Lcava_c_Struct__V(JvmAllocObject(&cava_apple_coregraphics_CGRect_Class),[(UIScreen*)mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(LOCAL(pthis,jobject)) bounds]); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_uikit_UIScreen_Class;
JvmClass ArrOf_cava_apple_uikit_UIScreen_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIScreen_Class;

jbool cava_apple_uikit_UIScreen_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIScreen_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_uikit_UIScreen() {
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
	JvmClass* cls = &cava_apple_uikit_UIScreen_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIScreen);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIScreen",25);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIScreen_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIScreen.java",13);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"UIScreen"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_uikit_UIScreen_Class, JvmMakeString(L"<init>", 6), &cava_apple_uikit_UIScreen_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_VoidPtr_Class}), &mcava_apple_uikit_UIScreen__init___Lcava_c_VoidPtr__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 34, 36, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"handle",6), .startLine=35, .endLine=36, .type=&cava_c_VoidPtr_Class},{.name=JvmMakeString(L"this",4), .startLine=35, .endLine=36, .type=&cava_apple_uikit_UIScreen_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIScreen_Class, JvmMakeString(L"getMainScreen", 13), &cava_apple_uikit_UIScreen_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIScreen_getMainScreen___Lcava_apple_uikit_UIScreen_, &invoke_O 
#ifdef JVM_DEBUG
 , 40, 40, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIScreen_Class, JvmMakeString(L"getBounds", 9), &cava_apple_coregraphics_CGRect_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIScreen_getBounds___Lcava_apple_coregraphics_CGRect_, &invoke_O 
#ifdef JVM_DEBUG
 , 44, 44, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=44, .endLine=44, .type=&cava_apple_uikit_UIScreen_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_uikit_UIScreen_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIScreen",26);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIScreen_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIScreen_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIScreen",26);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIScreen_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
