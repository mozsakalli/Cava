#include "cava_apple_uikit_UIWindow.h"
#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "cava_c_NativeObject.h"
#include "java_lang_System.h"
#include "java_io_PrintStream.h"
extern jobject $literal63;
extern jobject $literal64;


jobject mcava_apple_uikit_UIWindow__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_apple_uikit_UIWindow_ObjC */
	JVMMETHOD(cava_apple_uikit_UIWindow_Class,0);
	cava_apple_uikit_UIWindow_ObjC* objcPeer =((cava_apple_uikit_UIWindow*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_apple_uikit_UIWindow_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(29)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIWindow_setRootViewController__Lcava_apple_uikit_UIViewController__V(jobject pthis, jobject pcontroller) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcontroller,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIWindow_Class,1);
	JVMLINE(32)
	virtual_mjava_io_PrintStream_println__Ljava_lang_String__V(JVMGLOBALS[1],virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__J_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal63),mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pcontroller,jobject))),$literal64),(jlong)mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(LOCAL(pcontroller,jobject)))));
	JVMLINE(33)
	((UIWindow*)mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(LOCAL(pthis,jobject))).rootViewController = mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(LOCAL(pcontroller,jobject));
	thread->framePtr = entryFramePtr;
}

@implementation cava_apple_uikit_UIWindow_ObjC
@end
JvmClass cava_apple_uikit_UIWindow_Class;
JvmClass ArrOf_cava_apple_uikit_UIWindow_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIWindow_Class;

jbool cava_apple_uikit_UIWindow_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIWindow_Class || klass == &cava_apple_uikit_UIView_Class || klass == &cava_apple_uikit_UIResponder_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_uikit_UIWindow() {
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
	JvmClass* cls = &cava_apple_uikit_UIWindow_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIWindow);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIWindow",25);
	cls->superClass = &cava_apple_uikit_UIView_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIWindow_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIWindow.java",13);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_apple_uikit_UIWindow_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_uikit_UIWindow_Class, JvmMakeString(L"<init>", 6), &cava_apple_uikit_UIWindow_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIWindow__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 29, 29, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&cava_apple_uikit_UIWindow_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIWindow_Class, JvmMakeString(L"setRootViewController", 21), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIViewController_Class}), &mcava_apple_uikit_UIWindow_setRootViewController__Lcava_apple_uikit_UIViewController__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 32, 33, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"controller",10), .startLine=32, .endLine=33, .type=&cava_apple_uikit_UIViewController_Class},{.name=JvmMakeString(L"this",4), .startLine=33, .endLine=33, .type=&cava_apple_uikit_UIWindow_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_uikit_UIWindow_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIWindow",26);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIWindow_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIWindow_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIWindow",26);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIWindow_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
