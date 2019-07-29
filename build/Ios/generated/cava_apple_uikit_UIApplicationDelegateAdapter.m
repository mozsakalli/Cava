#include "cava_apple_uikit_UIApplicationDelegateAdapter.h"
#include "cava_c_NativeObject.h"


jobject mcava_apple_uikit_UIApplicationDelegateAdapter__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_apple_uikit_UIApplicationDelegateAdapter_ObjC */
	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,0);
	cava_apple_uikit_UIApplicationDelegateAdapter_ObjC* objcPeer =((cava_apple_uikit_UIApplicationDelegateAdapter*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_apple_uikit_UIApplicationDelegateAdapter_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(27)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_uikit_UIApplicationDelegateAdapter_getWindow___Lcava_apple_uikit_UIWindow_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,1);
	JVMLINE(33)
	{ jobject $$ret = ((cava_apple_uikit_UIApplicationDelegateAdapter*)(LOCAL(pthis,jobject)))->fcava_apple_uikit_UIApplicationDelegateAdapter_window; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplicationDelegateAdapter_setWindow__Lcava_apple_uikit_UIWindow__V(jobject pthis, jobject pwindow) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pwindow,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,2);
	JVMLINE(38)
	((cava_apple_uikit_UIApplicationDelegateAdapter*)(LOCAL(pthis,jobject)))->fcava_apple_uikit_UIApplicationDelegateAdapter_window=LOCAL(pwindow,jobject);
	JVMLINE(39)
	((cava_apple_uikit_UIApplicationDelegateAdapter_ObjC*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer).window = mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(LOCAL(pwindow,jobject));
	thread->framePtr = entryFramePtr;
}

jbool mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject plaunchOptions) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);
	DEFARG(plaunchOptions,jobject,2);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,3);
	JVMLINE(44)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplicationDelegateAdapter_didBecomeActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,4);
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplicationDelegateAdapter_willResignActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,5);
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplicationDelegateAdapter_didEnterBackground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,6);
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplicationDelegateAdapter_willEnterForeground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplicationDelegateAdapter_Class,7);
	thread->framePtr = entryFramePtr;
}

jbool virtual_mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject plaunchOptions) {
	return ((jbool (*)(jobject,jobject,jobject))((JvmObject*)pthis)->klass->vtable[15])(pthis,papplication,plaunchOptions);
}
@implementation cava_apple_uikit_UIApplicationDelegateAdapter_ObjC
-(void) applicationDidEnterBackground:(UIApplication*) application{
	cava_apple_uikit_UIApplication arg_application;
	arg_application.fjava_lang_Object_klass = &cava_apple_uikit_UIApplication_Class;
	arg_application.fcava_c_NativeObject_nativePeer = application;
	arg_application.fcava_c_NativeObject_noOwner = jtrue;
	interface_mcava_apple_uikit_UIApplicationDelegate_didEnterBackground__Lcava_apple_uikit_UIApplication__V(javaPeer,&arg_application);
}
-(BOOL) application:(UIApplication*) application didFinishLaunchingWithOptions:(NSDictionary*) launchOptions{
	JvmStartDebugger();
	javaPeer = JVMGLOBALS[4];
	JVMGLOBALS[5] = mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr__V(JvmAllocObject(&cava_apple_uikit_UIApplication_Class),application);
	cava_apple_uikit_UIApplication arg_application;
	arg_application.fjava_lang_Object_klass = &cava_apple_uikit_UIApplication_Class;
	arg_application.fcava_c_NativeObject_nativePeer = application;
	arg_application.fcava_c_NativeObject_noOwner = jtrue;
	cava_apple_foundation_NSDictionary arg_launchOptions;
	arg_launchOptions.fjava_lang_Object_klass = &cava_apple_foundation_NSDictionary_Class;
	arg_launchOptions.fcava_c_NativeObject_nativePeer = launchOptions;
	arg_launchOptions.fcava_c_NativeObject_noOwner = jtrue;
	return interface_mcava_apple_uikit_UIApplicationDelegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(javaPeer,&arg_application,&arg_launchOptions) ? YES : NO;
}
-(void) applicationDidBecomeActive:(UIApplication*) application{
	cava_apple_uikit_UIApplication arg_application;
	arg_application.fjava_lang_Object_klass = &cava_apple_uikit_UIApplication_Class;
	arg_application.fcava_c_NativeObject_nativePeer = application;
	arg_application.fcava_c_NativeObject_noOwner = jtrue;
	interface_mcava_apple_uikit_UIApplicationDelegate_didBecomeActive__Lcava_apple_uikit_UIApplication__V(javaPeer,&arg_application);
}
-(void) applicationWillEnterForeground:(UIApplication*) application{
	cava_apple_uikit_UIApplication arg_application;
	arg_application.fjava_lang_Object_klass = &cava_apple_uikit_UIApplication_Class;
	arg_application.fcava_c_NativeObject_nativePeer = application;
	arg_application.fcava_c_NativeObject_noOwner = jtrue;
	interface_mcava_apple_uikit_UIApplicationDelegate_willEnterForeground__Lcava_apple_uikit_UIApplication__V(javaPeer,&arg_application);
}
-(void) applicationWillResignActive:(UIApplication*) application{
	cava_apple_uikit_UIApplication arg_application;
	arg_application.fjava_lang_Object_klass = &cava_apple_uikit_UIApplication_Class;
	arg_application.fcava_c_NativeObject_nativePeer = application;
	arg_application.fcava_c_NativeObject_noOwner = jtrue;
	interface_mcava_apple_uikit_UIApplicationDelegate_willResignActive__Lcava_apple_uikit_UIApplication__V(javaPeer,&arg_application);
}
@end
JvmClass cava_apple_uikit_UIApplicationDelegateAdapter_Class;
JvmClass ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;

jbool cava_apple_uikit_UIApplicationDelegateAdapter_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIApplicationDelegateAdapter_Class || klass == &cava_apple_uikit_UIApplicationDelegate_Class || klass == &java_lang_Object_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class;
}

extern jobject invoke_OV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OOZ(jobject,jobject,jobject);
void JvmSetup_cava_apple_uikit_UIApplicationDelegateAdapter() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_foundation_NSObject();
	JvmSetup_cava_apple_uikit_UIApplicationDelegate();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[15] = &mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z;
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = (void**)malloc(28 * sizeof(void*));
	_iTable[26] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_getWindow___Lcava_apple_uikit_UIWindow_;
	_iTable[27] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_setWindow__Lcava_apple_uikit_UIWindow__V;
	_iTable[9] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z;
	_iTable[23] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_didBecomeActive__Lcava_apple_uikit_UIApplication__V;
	_iTable[24] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_willResignActive__Lcava_apple_uikit_UIApplication__V;
	_iTable[25] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_didEnterBackground__Lcava_apple_uikit_UIApplication__V;
	_iTable[22] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_willEnterForeground__Lcava_apple_uikit_UIApplication__V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIApplicationDelegateAdapter);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIApplicationDelegateAdapter",45);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIApplicationDelegateAdapter_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIApplicationDelegateAdapter.java",33);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_apple_uikit_UIApplicationDelegateAdapter_ObjC"];
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&cava_apple_uikit_UIApplicationDelegate_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 8, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"<init>", 6), &cava_apple_uikit_UIApplicationDelegateAdapter_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIApplicationDelegateAdapter__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"getWindow", 9), &cava_apple_uikit_UIWindow_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIApplicationDelegateAdapter_getWindow___Lcava_apple_uikit_UIWindow_, &invoke_O 
#ifdef JVM_DEBUG
 , 33, 33, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=33, .endLine=33, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"setWindow", 9), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIWindow_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_setWindow__Lcava_apple_uikit_UIWindow__V, &invoke_OV 
#ifdef JVM_DEBUG
 , 38, 39, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"window",6), .startLine=38, .endLine=39, .type=&cava_apple_uikit_UIWindow_Class},{.name=JvmMakeString(L"this",4), .startLine=38, .endLine=39, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"didFinishLaunchingWithOptions", 29), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class,&cava_apple_foundation_NSDictionary_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z, &invoke_OOZ 
#ifdef JVM_DEBUG
 , 44, 44, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=44, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"launchOptions",13), .startLine=0, .endLine=44, .type=&cava_apple_foundation_NSDictionary_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=44, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"didBecomeActive", 15), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_didBecomeActive__Lcava_apple_uikit_UIApplication__V, &invoke_OV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"willResignActive", 16), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_willResignActive__Lcava_apple_uikit_UIApplication__V, &invoke_OV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"didEnterBackground", 18), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_didEnterBackground__Lcava_apple_uikit_UIApplication__V, &invoke_OV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"willEnterForeground", 19), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class}), &mcava_apple_uikit_UIApplicationDelegateAdapter_willEnterForeground__Lcava_apple_uikit_UIApplication__V, &invoke_OV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&cava_apple_uikit_UIApplicationDelegateAdapter_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&cava_apple_uikit_UIApplicationDelegateAdapter_Class, JvmMakeString(L"window", 6), &cava_apple_uikit_UIWindow_Class, 2, (void*)offsetof(cava_apple_uikit_UIApplicationDelegateAdapter,fcava_apple_uikit_UIApplicationDelegateAdapter_window))
	});

	cls = &ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIApplicationDelegateAdapter",46);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIApplicationDelegateAdapter",46);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
