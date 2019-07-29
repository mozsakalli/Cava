#include "cava_c_CharPtr.h"
#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSString.h"
#include "cava_apple_uikit_UIApplication.h"
#include "cava_apple_foundation_NSObject.h"


jobject mcava_apple_uikit_UIApplication__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	/* create objc: cava_apple_uikit_UIApplication_ObjC */
	JVMMETHOD(cava_apple_uikit_UIApplication_Class,0);
	cava_apple_uikit_UIApplication_ObjC* objcPeer =((cava_apple_uikit_UIApplication*)pthis)->fcava_c_NativeObject_nativePeer= [[cava_apple_uikit_UIApplication_ObjC alloc] init];
	objcPeer->javaPeer = pthis;
	JVMLINE(34)
	;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class__V(jobject pargs, jobject pdelegateClass) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pargs,jobject,0);
	DEFARG(pdelegateClass,jobject,1);

	JVMMETHOD(cava_apple_uikit_UIApplication_Class,1);
	JVMLINE(41)
	mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class_Ljava_lang_Class__V(LOCAL(pargs,jobject),jnull,LOCAL(pdelegateClass,jobject));
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class_Ljava_lang_Class__V(jobject pargs, jobject pprincipalClass, jobject pdelegateClass) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pargs,jobject,0);
	DEFARG(pprincipalClass,jobject,1);
	DEFARG(pdelegateClass,jobject,2);
	DEFLOCAL(largc,jint,3);
	DEFLOCAL(largv,jobject,4);
	DEFLOCAL(lprincipalClassName,jobject,5);
	DEFLOCAL(ldelegateClassName,jobject,6);
	DEFLOCAL(li,jint,7);

	JVMMETHOD(cava_apple_uikit_UIApplication_Class,2);
	JVMLINE(46)
	LOCAL(largc,jint)=0;
	JVMLINE(47)
	LOCAL(largv,jobject)=jnull;
	JVMLINE(49)
	LOCAL(lprincipalClassName,jobject)=LOCAL(pprincipalClass,jobject) != jnull ? mcava_apple_foundation_NSObject_getObjectiveCName__Ljava_lang_Class__Ljava_lang_String_(LOCAL(pprincipalClass,jobject)) : jnull;
	JVMLINE(53)
	LOCAL(ldelegateClassName,jobject)=LOCAL(pdelegateClass,jobject) != jnull ? mcava_apple_foundation_NSObject_getObjectiveCName__Ljava_lang_Class__Ljava_lang_String_(LOCAL(pdelegateClass,jobject)) : jnull;
	JVMLINE(57)
	if((LOCAL(pargs,jobject) != jnull) && ((JvmArrayLen(LOCAL(pargs,jobject))) > 0)){
		JVMLINE(56)
		LOCAL(largv,jobject)=mcava_c_CharPtrPtr_alloc__I_Lcava_c_CharPtrPtr_(JvmArrayLen(LOCAL(pargs,jobject)));
		JVMLINE(57)
		LOCAL(li,jint)=0;
		while(LOCAL(li,jint) < (JvmArrayLen(LOCAL(pargs,jobject)))){
			JVMLINE(58)
			mcava_c_CharPtrPtr_set__ILjava_lang_Object__V(LOCAL(largv,jobject),LOCAL(li,jint),mcava_c_CharPtr_allocAsciiZ__Ljava_lang_String__Lcava_c_CharPtr_(JvmArrayGet_O(LOCAL(pargs,jobject),LOCAL(li,jint))));
			JVMLINE(57)
			LOCAL(li,jint)++;
		}
	}
	JVMLINE(62)
	JVMGLOBALS[4]=JvmCheckCast(mjava_lang_Class_newInstance___Ljava_lang_Object_(LOCAL(pdelegateClass,jobject)),&cava_apple_uikit_UIApplicationDelegate_Class);
	JVMLINE(63)
	mcava_apple_uikit_UIApplication_main__ILcava_c_CharPtrPtr_Ljava_lang_String_Ljava_lang_String__V(LOCAL(largc,jint),LOCAL(largv,jobject),LOCAL(lprincipalClassName,jobject),LOCAL(ldelegateClassName,jobject));
	thread->framePtr = entryFramePtr;
}

void mcava_apple_uikit_UIApplication_main__ILcava_c_CharPtrPtr_Ljava_lang_String_Ljava_lang_String__V(jint pargc, jobject pargv, jobject pprincipal, jobject pdelegate) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pargc,jint,0);
	DEFARG(pargv,jobject,1);
	DEFARG(pprincipal,jobject,2);
	DEFARG(pdelegate,jobject,3);

	JVMMETHOD(cava_apple_uikit_UIApplication_Class,3);
	JVMLINE(67)
	UIApplicationMain(LOCAL(pargc,jint), LOCAL(pargv,jobject), LOCAL(pprincipal,jobject) != jnull ? mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(mcava_apple_foundation_NSString__init___Ljava_lang_String__V(JvmAllocObject(&cava_apple_foundation_NSString_Class),LOCAL(pprincipal,jobject))) : jnull, LOCAL(pdelegate,jobject) != jnull ? mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(mcava_apple_foundation_NSString__init___Ljava_lang_String__V(JvmAllocObject(&cava_apple_foundation_NSString_Class),LOCAL(pdelegate,jobject))) : jnull);
	thread->framePtr = entryFramePtr;
}

@implementation cava_apple_uikit_UIApplication_ObjC
@end
JvmClass cava_apple_uikit_UIApplication_Class;
JvmClass ArrOf_cava_apple_uikit_UIApplication_Class;
JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplication_Class;

jbool cava_apple_uikit_UIApplication_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_uikit_UIApplication_Class || klass == &cava_apple_uikit_UIResponder_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OOOV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OOV(jobject,jobject,jobject);
extern jobject invoke_IOOOV(jobject,jobject,jobject);
void JvmSetup_cava_apple_uikit_UIApplication() {
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
	JvmClass* cls = &cava_apple_uikit_UIApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_uikit_UIApplication);
	cls->name = JvmMakeString(L"cava.apple.uikit.UIApplication",30);
	cls->superClass = &cava_apple_uikit_UIResponder_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_uikit_UIApplication_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"UIApplication.java",18);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"cava_apple_uikit_UIApplication_ObjC"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 4, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"<init>", 6), &cava_apple_uikit_UIApplication_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_uikit_UIApplication__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 34, 34, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=34, .type=&cava_apple_uikit_UIApplication_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"main", 4), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&ArrOf_java_lang_String_Class,&java_lang_Class_Class}), &mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class__V, &invoke_OOV 
#ifdef JVM_DEBUG
 , 41, 41, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"args",4), .startLine=41, .endLine=41, .type=&ArrOf_java_lang_String_Class},{.name=JvmMakeString(L"delegateClass",13), .startLine=41, .endLine=41, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"main", 4), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_java_lang_String_Class,&java_lang_Class_Class,&java_lang_Class_Class}), &mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class_Ljava_lang_Class__V, &invoke_OOOV 
#ifdef JVM_DEBUG
 , 46, 63, 3, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"args",4), .startLine=56, .endLine=63, .type=&ArrOf_java_lang_String_Class},{.name=JvmMakeString(L"principalClass",14), .startLine=49, .endLine=63, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"delegateClass",13), .startLine=53, .endLine=63, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"argc",4), .startLine=46, .endLine=63, .type=&I_Class},{.name=JvmMakeString(L"argv",4), .startLine=47, .endLine=63, .type=&cava_c_CharPtrPtr_Class},{.name=JvmMakeString(L"principalClassName",18), .startLine=49, .endLine=63, .type=&java_lang_String_Class},{.name=JvmMakeString(L"delegateClassName",17), .startLine=53, .endLine=63, .type=&java_lang_String_Class},{.name=JvmMakeString(L"i",1), .startLine=57, .endLine=63, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"main", 4), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&I_Class,&cava_c_CharPtrPtr_Class,&java_lang_String_Class,&java_lang_String_Class}), &mcava_apple_uikit_UIApplication_main__ILcava_c_CharPtrPtr_Ljava_lang_String_Ljava_lang_String__V, &invoke_IOOOV 
#ifdef JVM_DEBUG
 , 67, 67, 4, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"argc",4), .startLine=67, .endLine=67, .type=&I_Class},{.name=JvmMakeString(L"argv",4), .startLine=67, .endLine=67, .type=&cava_c_CharPtrPtr_Class},{.name=JvmMakeString(L"principal",9), .startLine=67, .endLine=67, .type=&java_lang_String_Class},{.name=JvmMakeString(L"delegate",8), .startLine=67, .endLine=67, .type=&java_lang_String_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 2, &(JvmField*[]){
	JvmMakeField(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"currentDelegate", 15), &cava_apple_uikit_UIApplicationDelegate_Class, 10, &JVMGLOBALS[4])
	,JvmMakeField(&cava_apple_uikit_UIApplication_Class, JvmMakeString(L"currentApplication", 18), &cava_apple_uikit_UIApplication_Class, 10, &JVMGLOBALS[5])
	});

	cls = &ArrOf_cava_apple_uikit_UIApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.uikit.UIApplication",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_uikit_UIApplication_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_uikit_UIApplication_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.uikit.UIApplication",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_uikit_UIApplication_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
