#include "cava_apple_uikit_UIApplicationDelegate.h"


jobject interface_mcava_apple_uikit_UIApplicationDelegate_getWindow___Lcava_apple_uikit_UIWindow_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->itable[26])(pthis);
}
void interface_mcava_apple_uikit_UIApplicationDelegate_setWindow__Lcava_apple_uikit_UIWindow__V(jobject pthis, jobject pp0) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[27])(pthis,pp0);
}
jbool interface_mcava_apple_uikit_UIApplicationDelegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject pp0, jobject pp1) {
	return ((jbool (*)(jobject,jobject,jobject))((JvmObject*)pthis)->klass->itable[9])(pthis,pp0,pp1);
}
void interface_mcava_apple_uikit_UIApplicationDelegate_didBecomeActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[23])(pthis,pp0);
}
void interface_mcava_apple_uikit_UIApplicationDelegate_willResignActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[24])(pthis,pp0);
}
void interface_mcava_apple_uikit_UIApplicationDelegate_didEnterBackground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[25])(pthis,pp0);
}
void interface_mcava_apple_uikit_UIApplicationDelegate_willEnterForeground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0) {
	((void (*)(jobject,jobject))((JvmObject*)pthis)->klass->itable[22])(pthis,pp0);
}
JvmClass cava_apple_uikit_UIApplicationDelegate_Class;
JvmClass ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;

jbool cava_apple_uikit_UIApplicationDelegate_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIApplicationDelegate_Class || klass == &java_lang_Object_Class;
}

void JvmSetup_cava_apple_uikit_UIApplicationDelegate() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = java_lang_Object_Class.vtable;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_uikit_UIApplicationDelegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIApplicationDelegate);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIApplicationDelegate",38);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIApplicationDelegate_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIApplicationDelegate.java",26);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = [[NSString alloc] initWithString:@"UIApplicationDelegate"];
	cls->interfaces = jnull;

	cls = &ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIApplicationDelegate",39);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIApplicationDelegate_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIApplicationDelegate",39);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
