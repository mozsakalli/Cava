#include "cava_c_NativeObject.h"
#include "cava_apple_foundation_NSString.h"


jobject mcava_apple_foundation_NSString__init___Ljava_lang_String__V(jobject pthis, jobject pstring) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstring,jobject,1);

	JVMMETHOD(cava_apple_foundation_NSString_Class,0);
	NSString* objcPeer =((cava_apple_foundation_NSString*)pthis)->fcava_c_NativeObject_nativePeer= [NSString alloc];
	JVMLINE(34)
	;
	JVMLINE(35)
	mcava_apple_foundation_NSString_initWithCharacters__Lcava_c_WCharPtr_I_Lcava_apple_foundation_NSString_(LOCAL(pthis,jobject),mcava_c_WCharPtr_from__Ljava_lang_String__Lcava_c_WCharPtr_(LOCAL(pstring,jobject)),mjava_lang_String_length___I(LOCAL(pstring,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSString_initWithCharacters__Lcava_c_WCharPtr_I_Lcava_apple_foundation_NSString_(jobject pthis, jobject pchars, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pchars,jobject,1);
	DEFARG(plength,jint,2);

	JVMMETHOD(cava_apple_foundation_NSString_Class,1);
	JVMLINE(39)
	((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer=(void*)[(NSString*)((cava_c_NativeObject*)(LOCAL(pthis,jobject)))->fcava_c_NativeObject_nativePeer initWithCharacters:(unichar*)LOCAL(pchars,jobject) length:LOCAL(plength,jint)];
	JVMLINE(40)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_foundation_NSString_createJavaString__Lcava_c_VoidPtr__Ljava_lang_String_(jobject pnativePeer) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pnativePeer,jobject,0);
	DEFLOCAL(llen,jint,1);
	DEFLOCAL(lchars,jobject,2);

	JVMMETHOD(cava_apple_foundation_NSString_Class,2);
	JVMLINE(44)
	LOCAL(llen,jint)=[(NSString*)LOCAL(pnativePeer,jobject) length];
	JVMLINE(45)
	LOCAL(lchars,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(llen,jint));
	JVMLINE(46)
	[(NSString*)LOCAL(pnativePeer,jobject) getCharacters:(unichar*)JvmArrayData(LOCAL(lchars,jobject))];
	JVMLINE(47)
	{ jobject $$ret = mjava_lang_String__init____C_V(JvmAllocObject(&java_lang_String_Class),LOCAL(lchars,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_foundation_NSString_Class;
JvmClass ArrOf_cava_apple_foundation_NSString_Class;
JvmClass ArrOf_ArrOf_cava_apple_foundation_NSString_Class;

jbool cava_apple_foundation_NSString_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_foundation_NSString_Class || klass == &cava_apple_foundation_NSObject_Class || klass == &cava_c_NativeObject_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
void JvmSetup_cava_apple_foundation_NSString() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_apple_foundation_NSObject();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[16] = &mcava_apple_foundation_NSObject_dispose___V;
	_vTable[26] = &mcava_c_NativeObject_finalize___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_foundation_NSString_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_foundation_NSString);
	cls->name = JvmMakeString(L"cava.apple.foundation.NSString",30);
	cls->superClass = &cava_apple_foundation_NSObject_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_foundation_NSString_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"NSString.java",13);
	#endif
	cls->finalizeFunction = &mcava_c_NativeObject_finalize___V;
	cls->objcClass = [[NSString alloc] initWithString:@"NSString"];
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_foundation_NSString_Class, JvmMakeString(L"<init>", 6), &cava_apple_foundation_NSString_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mcava_apple_foundation_NSString__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 34, 35, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"string",6), .startLine=35, .endLine=35, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=35, .endLine=35, .type=&cava_apple_foundation_NSString_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSString_Class, JvmMakeString(L"initWithCharacters", 18), &cava_apple_foundation_NSString_Class, 17, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&cava_c_WCharPtr_Class,&I_Class}), &mcava_apple_foundation_NSString_initWithCharacters__Lcava_c_WCharPtr_I_Lcava_apple_foundation_NSString_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 39, 40, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"chars",5), .startLine=39, .endLine=40, .type=&cava_c_WCharPtr_Class},{.name=JvmMakeString(L"length",6), .startLine=39, .endLine=40, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=39, .endLine=40, .type=&cava_apple_foundation_NSString_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_foundation_NSString_Class, JvmMakeString(L"createJavaString", 16), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_VoidPtr_Class}), &mcava_apple_foundation_NSString_createJavaString__Lcava_c_VoidPtr__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 44, 47, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"nativePeer",10), .startLine=44, .endLine=47, .type=&cava_c_VoidPtr_Class},{.name=JvmMakeString(L"len",3), .startLine=44, .endLine=47, .type=&I_Class},{.name=JvmMakeString(L"chars",5), .startLine=45, .endLine=47, .type=&ArrOf_C_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_foundation_NSString_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.foundation.NSString",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_foundation_NSString_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_foundation_NSString_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.foundation.NSString",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_foundation_NSString_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
