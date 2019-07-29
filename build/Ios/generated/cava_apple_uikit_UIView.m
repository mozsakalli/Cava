#include "cava_apple_uikit_UIView.h"
#include "cava_c_NativeObject.h"


jobject mcava_apple_uikit_UIView__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_apple_uikit_UIView_ObjC */
	JVMMETHOD(cava_apple_uikit_UIView_Class,0);
	cava_apple_uikit_UIView_ObjC* objcPeer =((cava_apple_uikit_UIView*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_apple_uikit_UIView_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(31)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_uikit_UIView_initWithFrame__Lcava_apple_coregraphics_CGRect__Lcava_apple_uikit_UIView_(jobject pthis, jobject pframe) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pframe,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIView_Class,1);
	JVMLINE(43)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=[(UIView*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer initWithFrame:mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(LOCAL(pframe,jobject))];
	JVMLINE(44)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

@implementation cava_apple_uikit_UIView_ObjC
@end
JvmClass cava_apple_uikit_UIView_Class;
JvmClass ArrOf_cava_apple_uikit_UIView_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIView_Class;

jbool cava_apple_uikit_UIView_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIView_Class || klass == &cava_apple_uikit_UIResponder_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_uikit_UIView() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_uikit_UIResponder();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_uikit_UIView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIView);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIView",23);
	cls->superClass = &cava_apple_uikit_UIResponder_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIView_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIView.java",11);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_apple_uikit_UIView_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_uikit_UIView_Class, JvmMakeString(L"<init>", 6), &cava_apple_uikit_UIView_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIView__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 31, 31, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=31, .type=&cava_apple_uikit_UIView_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIView_Class, JvmMakeString(L"initWithFrame", 13), &cava_apple_uikit_UIView_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_coregraphics_CGRect_Class}), &mcava_apple_uikit_UIView_initWithFrame__Lcava_apple_coregraphics_CGRect__Lcava_apple_uikit_UIView_, &invoke_OO 
#ifdef JVM_DEBUG
 , 43, 44, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"frame",5), .startLine=43, .endLine=44, .type=&cava_apple_coregraphics_CGRect_Class},{.name=JvmMakeString(L"this",4), .startLine=43, .endLine=44, .type=&cava_apple_uikit_UIView_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_uikit_UIView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIView",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIView_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIView",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIView_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
