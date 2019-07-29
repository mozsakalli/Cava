#include "cava_sample_IOSApplication.h"
#include "cava_apple_uikit_UIView.h"
#include "cava_apple_coregraphics_CGRect.h"
#include "cava_apple_uikit_UIScreen.h"
#include "cava_apple_uikit_UIViewController.h"
#include "java_io_PrintStream.h"
#include "kotlin_jvm_internal_Intrinsics.h"
#include "java_lang_System.h"
extern jobject $literal42;


jbool mcava_sample_IOSApplication_didFinishLaunching___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lbounds,jobject,1);
	DEFLOCAL(lexpr_41,jobject,2);
	DEFLOCAL(lexpr_56,jobject,3);

	JVMMETHOD(cava_sample_IOSApplication_Class,0);
	JVMLINE(57)
	mjava_io_PrintStream_println__Ljava_lang_Object__V(JVMGLOBALS[1],$literal42);
	JVMLINE(60)
	LOCAL(lbounds,jobject)=mcava_apple_uikit_UIScreen_getBounds___Lcava_apple_coregraphics_CGRect_(mcava_apple_uikit_UIScreen_getMainScreen___Lcava_apple_uikit_UIScreen_());
	JVMLINE(61)
	((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_window=JvmCheckCast(mcava_apple_uikit_UIView_initWithFrame__Lcava_apple_coregraphics_CGRect__Lcava_apple_uikit_UIView_(mcava_apple_uikit_UIWindow__init____V(JvmAllocObject(&cava_apple_uikit_UIWindow_Class)),LOCAL(lbounds,jobject)),&cava_apple_uikit_UIWindow_Class);
	JVMLINE(62)
	((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_view=JvmCheckCast(mcava_apple_uikit_UIView_initWithFrame__Lcava_apple_coregraphics_CGRect__Lcava_apple_uikit_UIView_(mcava_sample_IOSView__init____V(JvmAllocObject(&cava_sample_IOSView_Class)),LOCAL(lbounds,jobject)),&cava_sample_IOSView_Class);
	JVMLINE(63)
	((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_controller=mcava_sample_IOSViewController__init____V(JvmAllocObject(&cava_sample_IOSViewController_Class));
	JVMLINE(64)
	LOCAL(lexpr_41,jobject)=((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_controller;
	if(LOCAL(lexpr_41,jobject) == jnull){
		mkotlin_jvm_internal_Intrinsics_throwNpe___V();
	}
	mcava_apple_uikit_UIViewController_setView__Lcava_apple_uikit_UIView__V(LOCAL(lexpr_41,jobject),JvmCheckCast(((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_view,&cava_sample_IOSView_Class));
	JVMLINE(66)
	LOCAL(lexpr_56,jobject)=((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_window;
	if(LOCAL(lexpr_56,jobject) == jnull){
		mkotlin_jvm_internal_Intrinsics_throwNpe___V();
	}
	mcava_apple_uikit_UIWindow_setRootViewController__Lcava_apple_uikit_UIViewController__V(LOCAL(lexpr_56,jobject),JvmCheckCast(((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_controller,&cava_sample_IOSViewController_Class));
	JVMLINE(68)
	((cava_sample_IOSApplication*)(LOCAL(pthis,jobject)))->fcava_sample_IOSApplication_graphics=mcava_sample_IOSGraphics__init____V(JvmAllocObject(&cava_sample_IOSGraphics_Class));
	JVMLINE(69)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_sample_IOSApplication__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_sample_IOSApplication_Class,1);
	JVMLINE(37)
	mcava_sample_Application__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_sample_IOSApplication_Class;
JvmClass ArrOf_cava_sample_IOSApplication_Class;
JvmClass ArrOf_ArrOf_cava_sample_IOSApplication_Class;

jbool cava_sample_IOSApplication_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_IOSApplication_Class || klass == &cava_sample_Application_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
void JvmSetup_cava_sample_IOSApplication() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_sample_Application();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &cava_sample_IOSApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_IOSApplication);
	cls->name = JvmMakeString(L"cava.sample.IOSApplication",26);
	cls->superClass = &cava_sample_Application_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_IOSApplication_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Application.kt",14);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_IOSApplication_Class, JvmMakeString(L"didFinishLaunching", 18), &Z_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSApplication_didFinishLaunching___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 57, 69, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=61, .endLine=69, .type=&cava_sample_IOSApplication_Class},{.name=JvmMakeString(L"bounds",6), .startLine=60, .endLine=69, .type=&cava_apple_coregraphics_CGRect_Class},{.name=JvmMakeString(L"expr_41",7), .startLine=64, .endLine=69, .type=&cava_sample_IOSViewController_Class},{.name=JvmMakeString(L"expr_56",7), .startLine=66, .endLine=69, .type=&cava_apple_uikit_UIWindow_Class}}
#endif
 ),
	JvmMakeMethod(&cava_sample_IOSApplication_Class, JvmMakeString(L"<init>", 6), &cava_sample_IOSApplication_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_IOSApplication__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 37, 37, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=37, .type=&cava_sample_IOSApplication_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&cava_sample_IOSApplication_Class, JvmMakeString(L"window", 6), &cava_apple_uikit_UIWindow_Class, 2, (void*)offsetof(cava_sample_IOSApplication,fcava_sample_IOSApplication_window))
	,JvmMakeField(&cava_sample_IOSApplication_Class, JvmMakeString(L"controller", 10), &cava_sample_IOSViewController_Class, 2, (void*)offsetof(cava_sample_IOSApplication,fcava_sample_IOSApplication_controller))
	,JvmMakeField(&cava_sample_IOSApplication_Class, JvmMakeString(L"view", 4), &cava_sample_IOSView_Class, 2, (void*)offsetof(cava_sample_IOSApplication,fcava_sample_IOSApplication_view))
	,JvmMakeField(&cava_sample_IOSApplication_Class, JvmMakeString(L"graphics", 8), &cava_sample_IOSGraphics_Class, 2, (void*)offsetof(cava_sample_IOSApplication,fcava_sample_IOSApplication_graphics))
	});

	cls = &ArrOf_cava_sample_IOSApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.IOSApplication",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_IOSApplication_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_IOSApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.IOSApplication",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_IOSApplication_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
