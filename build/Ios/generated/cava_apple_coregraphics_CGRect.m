#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "cava_apple_coregraphics_CGRect.h"
extern jobject $literal43;


jobject mcava_apple_coregraphics_CGRect_getOrigin___Lcava_apple_coregraphics_CGPoint_(jobject thiz) {
}
void mcava_apple_coregraphics_CGRect_setOrigin__Lcava_apple_coregraphics_CGPoint__V(jobject thiz, jobject value) {
	((cava_apple_coregraphics_CGRect*)thiz)->$struct.origin = ((cava_apple_coregraphics_CGPoint*)value)->$struct;
}
jobject mcava_apple_coregraphics_CGRect_getSize___Lcava_apple_coregraphics_CGSize_(jobject thiz) {
}
void mcava_apple_coregraphics_CGRect_setSize__Lcava_apple_coregraphics_CGSize__V(jobject thiz, jobject value) {
	((cava_apple_coregraphics_CGRect*)thiz)->$struct.size = ((cava_apple_coregraphics_CGSize*)value)->$struct;
}
CGRect mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(jobject thiz) { return ((cava_apple_coregraphics_CGRect*)thiz)->$struct; }
void mcava_apple_coregraphics_CGRect_setStruct__Lcava_c_Struct__V(jobject thiz, CGRect value) { ((cava_apple_coregraphics_CGRect*)thiz)->$struct = value; }
jobject mcava_apple_coregraphics_CGRect__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,0);
	JVMLINE(43)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGRect__init___Lcava_c_Struct__V(jobject pthis, CGRect pstruct) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,1);
	JVMLINE(44)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	JVMLINE(45)
	mcava_apple_coregraphics_CGRect_setStruct__Lcava_c_Struct__V(LOCAL(pthis,jobject),pstruct);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGRect__init___Lcava_apple_coregraphics_CGPoint_Lcava_apple_coregraphics_CGSize__V(jobject pthis, jobject porigin, jobject psize) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(porigin,jobject,1);
	DEFARG(psize,jobject,2);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,2);
	JVMLINE(47)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	JVMLINE(48)
	mcava_apple_coregraphics_CGRect_setOrigin__Lcava_apple_coregraphics_CGPoint__V(LOCAL(pthis,jobject),LOCAL(porigin,jobject));
	JVMLINE(49)
	mcava_apple_coregraphics_CGRect_setSize__Lcava_apple_coregraphics_CGSize__V(LOCAL(pthis,jobject),LOCAL(psize,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGRect__init___DDDD_V(jobject pthis, jdouble px, jdouble py, jdouble pwidth, jdouble pheight) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(px,jdouble,1);
	DEFARG(py,jdouble,2);
	DEFARG(pwidth,jdouble,3);
	DEFARG(pheight,jdouble,4);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,3);
	JVMLINE(51)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	JVMLINE(52)
	mcava_apple_coregraphics_CGRect_setStruct__Lcava_c_Struct__V(LOCAL(pthis,jobject),CGRectMake(LOCAL(px,jdouble),LOCAL(py,jdouble),LOCAL(pwidth,jdouble),LOCAL(pheight,jdouble)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getWidth__Lcava_apple_coregraphics_CGRect__D(jobject prect) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(prect,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,4);
	JVMLINE(56)
	{ jdouble $$ret = CGRectGetWidth(mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(LOCAL(prect,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getWidth___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,5);
	JVMLINE(58)
	{ jdouble $$ret = mcava_apple_coregraphics_CGRect_getWidth__Lcava_apple_coregraphics_CGRect__D(LOCAL(pthis,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getHeight__Lcava_apple_coregraphics_CGRect__D(jobject prect) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(prect,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,6);
	JVMLINE(61)
	{ jdouble $$ret = CGRectGetHeight(mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(LOCAL(prect,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getHeight___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,7);
	JVMLINE(63)
	{ jdouble $$ret = mcava_apple_coregraphics_CGRect_getHeight__Lcava_apple_coregraphics_CGRect__D(LOCAL(pthis,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getMinX___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,8);
	JVMLINE(66)
	{ jdouble $$ret = CGRectGetMinX(mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(LOCAL(pthis,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mcava_apple_coregraphics_CGRect_getMinY___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,9);
	JVMLINE(69)
	{ jdouble $$ret = CGRectGetMinY(mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(LOCAL(pthis,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGRect_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGRect_Class,10);
	JVMLINE(73)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mcava_apple_coregraphics_CGRect_getOrigin___Lcava_apple_coregraphics_CGPoint_(LOCAL(pthis,jobject))),$literal43),mcava_apple_coregraphics_CGRect_getSize___Lcava_apple_coregraphics_CGSize_(LOCAL(pthis,jobject)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_coregraphics_CGRect_Class;
JvmClass ArrOf_cava_apple_coregraphics_CGRect_Class;
JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGRect_Class;

jbool cava_apple_coregraphics_CGRect_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_coregraphics_CGRect_Class || klass == &cava_c_Struct_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_DDDDO(jobject,jobject,jobject);
extern jobject invoke_OD(jobject,jobject,jobject);
void JvmSetup_cava_apple_coregraphics_CGRect() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_c_Struct();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_coregraphics_CGRect_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_coregraphics_CGRect);
	cls->name = JvmMakeString(L"cava.apple.coregraphics.CGRect",30);
	cls->superClass = &cava_c_Struct_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_coregraphics_CGRect_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CGRect.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 11, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGRect_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 43, 43, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=43, .endLine=43, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGRect_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_Struct_Class}), &mcava_apple_coregraphics_CGRect__init___Lcava_c_Struct__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 44, 45, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"struct",6), .startLine=0, .endLine=45, .type=&cava_c_Struct_Class},{.name=JvmMakeString(L"this",4), .startLine=44, .endLine=45, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGRect_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&cava_apple_coregraphics_CGPoint_Class,&cava_apple_coregraphics_CGSize_Class}), &mcava_apple_coregraphics_CGRect__init___Lcava_apple_coregraphics_CGPoint_Lcava_apple_coregraphics_CGSize__V, &invoke_OOO 
#ifdef JVM_DEBUG
 , 47, 49, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"origin",6), .startLine=48, .endLine=49, .type=&cava_apple_coregraphics_CGPoint_Class},{.name=JvmMakeString(L"size",4), .startLine=49, .endLine=49, .type=&cava_apple_coregraphics_CGSize_Class},{.name=JvmMakeString(L"this",4), .startLine=47, .endLine=49, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGRect_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&D_Class,&D_Class,&D_Class,&D_Class}), &mcava_apple_coregraphics_CGRect__init___DDDD_V, &invoke_DDDDO 
#ifdef JVM_DEBUG
 , 51, 52, 4, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"x",1), .startLine=52, .endLine=52, .type=&D_Class},{.name=JvmMakeString(L"y",1), .startLine=52, .endLine=52, .type=&D_Class},{.name=JvmMakeString(L"width",5), .startLine=52, .endLine=52, .type=&D_Class},{.name=JvmMakeString(L"height",6), .startLine=52, .endLine=52, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=51, .endLine=52, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getWidth", 8), &D_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_coregraphics_CGRect_Class}), &mcava_apple_coregraphics_CGRect_getWidth__Lcava_apple_coregraphics_CGRect__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 56, 56, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"rect",4), .startLine=56, .endLine=56, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getWidth", 8), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect_getWidth___D, &invoke_D 
#ifdef JVM_DEBUG
 , 58, 58, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=58, .endLine=58, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getHeight", 9), &D_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_apple_coregraphics_CGRect_Class}), &mcava_apple_coregraphics_CGRect_getHeight__Lcava_apple_coregraphics_CGRect__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 61, 61, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"rect",4), .startLine=61, .endLine=61, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getHeight", 9), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect_getHeight___D, &invoke_D 
#ifdef JVM_DEBUG
 , 63, 63, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=63, .endLine=63, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getMinX", 7), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect_getMinX___D, &invoke_D 
#ifdef JVM_DEBUG
 , 66, 66, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=66, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"getMinY", 7), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect_getMinY___D, &invoke_D 
#ifdef JVM_DEBUG
 , 69, 69, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=69, .endLine=69, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGRect_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGRect_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 73, 73, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=73, .endLine=73, .type=&cava_apple_coregraphics_CGRect_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_coregraphics_CGRect_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.coregraphics.CGRect",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_coregraphics_CGRect_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_coregraphics_CGRect_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.coregraphics.CGRect",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_coregraphics_CGRect_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
