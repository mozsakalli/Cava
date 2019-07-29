#include "cava_sample_IOSViewController.h"


jobject mcava_sample_IOSViewController__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_sample_IOSViewController_ObjC */
	JVMMETHOD(cava_sample_IOSViewController_Class,0);
	cava_sample_IOSViewController_ObjC* objcPeer =((cava_sample_IOSViewController*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_sample_IOSViewController_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(20)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

@implementation cava_sample_IOSViewController_ObjC
@end
JvmClass cava_sample_IOSViewController_Class;
JvmClass ArrOf_cava_sample_IOSViewController_Class;
JvmClass ArrOf_ArrOf_cava_sample_IOSViewController_Class;

jbool cava_sample_IOSViewController_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_IOSViewController_Class || klass == &cava_apple_uikit_UIViewController_Class || klass == &cava_apple_uikit_UIResponder_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_sample_IOSViewController() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_uikit_UIViewController();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_sample_IOSViewController_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_IOSViewController);
	cls->name = JvmMakeString(L"cava.sample.IOSViewController",29);
	cls->superClass = &cava_apple_uikit_UIViewController_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_IOSViewController_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Application.kt",14);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_sample_IOSViewController_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_IOSViewController_Class, JvmMakeString(L"<init>", 6), &cava_sample_IOSViewController_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSViewController__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 20, 20, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=20, .endLine=20, .type=&cava_sample_IOSViewController_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_sample_IOSViewController_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.IOSViewController",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_IOSViewController_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_IOSViewController_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.IOSViewController",30);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_IOSViewController_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
