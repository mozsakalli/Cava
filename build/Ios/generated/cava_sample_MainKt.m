#include "cava_sample_IOSLauncher.h"
#include "java_lang_String.h"
#include "cava_sample_MainKt.h"
#include "cava_apple_uikit_UIApplication.h"
#include "cava_apple_foundation_NSAutoreleasePool.h"


void mcava_sample_MainKt_main___V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFLOCAL(lpool,jobject,0);

	JVMMETHOD(cava_sample_MainKt_Class,0);
	JVMLINE(25)
	LOCAL(lpool,jobject)=mcava_apple_foundation_NSAutoreleasePool__init____V(JvmAllocObject(&cava_apple_foundation_NSAutoreleasePool_Class));
	JVMLINE(26)
	mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class__V(JvmAllocObjectArray1(&ArrOf_java_lang_String_Class,0),&cava_sample_IOSLauncher_Class);
	JVMLINE(27)
	mcava_apple_foundation_NSAutoreleasePool_close___V(LOCAL(lpool,jobject));
	thread->framePtr = entryFramePtr;
}

JvmClass cava_sample_MainKt_Class;
JvmClass ArrOf_cava_sample_MainKt_Class;
JvmClass ArrOf_ArrOf_cava_sample_MainKt_Class;

jbool cava_sample_MainKt_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_MainKt_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_cava_sample_MainKt() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &cava_sample_MainKt_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_MainKt);
	cls->name = JvmMakeString(L"cava.sample.MainKt",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_MainKt_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Main.kt",7);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_MainKt_Class, JvmMakeString(L"main", 4), &V_Class, 25, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_MainKt_main___V, &invoke_V 
#ifdef JVM_DEBUG
 , 25, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"pool",4), .startLine=25, .endLine=27, .type=&cava_apple_foundation_NSAutoreleasePool_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_sample_MainKt_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.MainKt",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_MainKt_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_MainKt_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.MainKt",19);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_MainKt_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
