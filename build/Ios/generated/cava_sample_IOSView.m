#include "cava_sample_IOSView.h"


jobject mcava_sample_IOSView__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_sample_IOSView_ObjC */
	JVMMETHOD(cava_sample_IOSView_Class,0);
	cava_sample_IOSView_ObjC* objcPeer =((cava_sample_IOSView*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_sample_IOSView_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(23)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

@implementation cava_sample_IOSView_ObjC
@end
JvmClass cava_sample_IOSView_Class;
JvmClass ArrOf_cava_sample_IOSView_Class;
JvmClass ArrOf_ArrOf_cava_sample_IOSView_Class;

jbool cava_sample_IOSView_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_IOSView_Class || klass == &cava_apple_uikit_UIView_Class || klass == &cava_apple_uikit_UIResponder_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_sample_IOSView() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_uikit_UIView();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_sample_IOSView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_IOSView);
	cls->name = JvmMakeString(L"cava.sample.IOSView",19);
	cls->superClass = &cava_apple_uikit_UIView_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_IOSView_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Application.kt",14);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_sample_IOSView_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_IOSView_Class, JvmMakeString(L"<init>", 6), &cava_sample_IOSView_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSView__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 23, 23, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=23, .endLine=23, .type=&cava_sample_IOSView_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_sample_IOSView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.IOSView",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_IOSView_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_IOSView_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.IOSView",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_IOSView_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
