#include "cava_sample_IOSLauncher.h"
#include "java_lang_System.h"
#include "java_io_PrintStream.h"
extern jobject $literal65;


jobject mcava_sample_IOSLauncher_createApplication___Lcava_sample_IOSApplication_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_sample_IOSLauncher_Class,0);
	JVMLINE(19)
	mjava_io_PrintStream_println__Ljava_lang_Object__V(JVMGLOBALS[1],$literal65);
	JVMLINE(20)
	{ jobject $$ret = mcava_sample_IOSApplication__init____V(JvmAllocObject(&cava_sample_IOSApplication_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_sample_IOSLauncher__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_sample_IOSLauncher_ObjC */
	JVMMETHOD(cava_sample_IOSLauncher_Class,1);
	cava_sample_IOSLauncher_ObjC* objcPeer =((cava_sample_IOSLauncher*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_sample_IOSLauncher_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(17)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

@implementation cava_sample_IOSLauncher_ObjC
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
JvmClass cava_sample_IOSLauncher_Class;
JvmClass ArrOf_cava_sample_IOSLauncher_Class;
JvmClass ArrOf_ArrOf_cava_sample_IOSLauncher_Class;

jbool cava_sample_IOSLauncher_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_IOSLauncher_Class || klass == &cava_sample_IOSApplication_Delegate_Class || klass == &cava_apple_uikit_UIApplicationDelegateAdapter_Class || klass == &cava_apple_uikit_UIApplicationDelegate_Class || klass == &java_lang_Object_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_sample_IOSLauncher() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_sample_IOSApplication_Delegate();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[17] = &mcava_sample_IOSLauncher_createApplication___Lcava_sample_IOSApplication_;
	_vTable[15] = &mcava_sample_IOSApplication_Delegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z;
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = (void**)malloc(28 * sizeof(void*));
	_iTable[9] = (void*)&mcava_sample_IOSApplication_Delegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z;
	_iTable[26] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_getWindow___Lcava_apple_uikit_UIWindow_;
	_iTable[27] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_setWindow__Lcava_apple_uikit_UIWindow__V;
	_iTable[23] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_didBecomeActive__Lcava_apple_uikit_UIApplication__V;
	_iTable[24] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_willResignActive__Lcava_apple_uikit_UIApplication__V;
	_iTable[25] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_didEnterBackground__Lcava_apple_uikit_UIApplication__V;
	_iTable[22] = (void*)&mcava_apple_uikit_UIApplicationDelegateAdapter_willEnterForeground__Lcava_apple_uikit_UIApplication__V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &cava_sample_IOSLauncher_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_IOSLauncher);
	cls->name = JvmMakeString(L"cava.sample.IOSLauncher",23);
	cls->superClass = &cava_sample_IOSApplication_Delegate_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_IOSLauncher_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Main.kt",7);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_sample_IOSLauncher_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_IOSLauncher_Class, JvmMakeString(L"createApplication", 17), &cava_sample_IOSApplication_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSLauncher_createApplication___Lcava_sample_IOSApplication_, &invoke_O 
#ifdef JVM_DEBUG
 , 19, 20, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=20, .type=&cava_sample_IOSLauncher_Class}}
#endif
 ),
	JvmMakeMethod(&cava_sample_IOSLauncher_Class, JvmMakeString(L"<init>", 6), &cava_sample_IOSLauncher_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSLauncher__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 17, 17, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=17, .endLine=17, .type=&cava_sample_IOSLauncher_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_sample_IOSLauncher_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.IOSLauncher",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_IOSLauncher_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_IOSLauncher_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.IOSLauncher",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_IOSLauncher_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
