#include "kotlin_jvm_internal_Intrinsics.h"
#include "cava_sample_IOSApplication_Delegate.h"
extern jobject $literal58;
extern jobject $literal59;


jbool mcava_sample_IOSApplication_Delegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject poptions) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(papplication,jobject,1);
	DEFARG(poptions,jobject,2);
	DEFLOCAL(lexpr_15,jobject,3);

	JVMMETHOD(cava_sample_IOSApplication_Delegate_Class,0);
	mkotlin_jvm_internal_Intrinsics_checkParameterIsNotNull__Ljava_lang_Object_Ljava_lang_String__V(LOCAL(papplication,jobject),$literal58);
	mkotlin_jvm_internal_Intrinsics_checkParameterIsNotNull__Ljava_lang_Object_Ljava_lang_String__V(LOCAL(poptions,jobject),$literal59);
	JVMLINE(46)
	((cava_sample_IOSApplication_Delegate*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_Delegate_app=virtual_mcava_sample_IOSApplication_Delegate_createApplication___Lcava_sample_IOSApplication_(LOCAL(pthis,jobject));
	JVMLINE(47)
	LOCAL(lexpr_15,jobject)=((cava_sample_IOSApplication_Delegate*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_Delegate_app;
	if(LOCAL(lexpr_15,jobject) == jnull){
		mkotlin_jvm_internal_Intrinsics_throwNpe___V();
	}
	{ jbool $$ret = mcava_sample_IOSApplication_didFinishLaunching___Z(LOCAL(lexpr_15,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_sample_IOSApplication_Delegate__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_sample_IOSApplication_Delegate_ObjC */
	JVMMETHOD(cava_sample_IOSApplication_Delegate_Class,1);
	cava_sample_IOSApplication_Delegate_ObjC* objcPeer =((cava_sample_IOSApplication_Delegate*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_sample_IOSApplication_Delegate_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(39)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject virtual_mcava_sample_IOSApplication_Delegate_createApplication___Lcava_sample_IOSApplication_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->vtable[17])(pthis);
}
@implementation cava_sample_IOSApplication_Delegate_ObjC
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
JvmClass cava_sample_IOSApplication_Delegate_Class;
JvmClass ArrOf_cava_sample_IOSApplication_Delegate_Class;
JvmClass ArrOf_ArrOf_cava_sample_IOSApplication_Delegate_Class;

jbool cava_sample_IOSApplication_Delegate_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_IOSApplication_Delegate_Class || klass == &cava_apple_uikit_UIApplicationDelegateAdapter_Class || klass == &cava_apple_uikit_UIApplicationDelegate_Class || klass == &java_lang_Object_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OOZ(jobject,jobject,jobject);
void JvmSetup_cava_sample_IOSApplication_Delegate() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_uikit_UIApplicationDelegateAdapter();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[17] = jnull;
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
	JvmClass* cls = &cava_sample_IOSApplication_Delegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_IOSApplication_Delegate);
	cls->name = JvmMakeString(L"cava.sample.IOSApplication$Delegate",35);
	cls->superClass = &cava_apple_uikit_UIApplicationDelegateAdapter_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_IOSApplication_Delegate_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Application.kt",14);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_sample_IOSApplication_Delegate_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_IOSApplication_Delegate_Class, JvmMakeString(L"didFinishLaunchingWithOptions", 29), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&cava_apple_uikit_UIApplication_Class,&cava_apple_foundation_NSDictionary_Class}), &mcava_sample_IOSApplication_Delegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z, &invoke_OOZ 
#ifdef JVM_DEBUG
 , 46, 47, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"application",11), .startLine=0, .endLine=47, .type=&cava_apple_uikit_UIApplication_Class},{.name=JvmMakeString(L"options",7), .startLine=0, .endLine=47, .type=&cava_apple_foundation_NSDictionary_Class},{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=47, .type=&cava_sample_IOSApplication_Delegate_Class},{.name=JvmMakeString(L"expr_15",7), .startLine=47, .endLine=47, .type=&cava_sample_IOSApplication_Class}}
#endif
 ),
	JvmMakeMethod(&cava_sample_IOSApplication_Delegate_Class, JvmMakeString(L"<init>", 6), &cava_sample_IOSApplication_Delegate_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSApplication_Delegate__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 39, 39, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=39, .endLine=39, .type=&cava_sample_IOSApplication_Delegate_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&cava_sample_IOSApplication_Delegate_Class, JvmMakeString(L"app", 3), &cava_sample_IOSApplication_Class, 2, (void*)offsetof(cava_sample_IOSApplication_Delegate,fcava_sample_IOSApplication_Delegate_app))
	});

	cls = &ArrOf_cava_sample_IOSApplication_Delegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.IOSApplication$Delegate",36);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_IOSApplication_Delegate_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_IOSApplication_Delegate_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.IOSApplication$Delegate",36);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_IOSApplication_Delegate_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
