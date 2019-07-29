#include "cava_c_CharPtr.h"


jobject mcava_c_CharPtr__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_CharPtr_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtr_alloc__I_Lcava_c_CharPtr_(jint psize) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(psize,jint,0);

	JVMMETHOD(cava_c_CharPtr_Class,1);
	JVMLINE(30)
	{ jobject $$ret = (char*)malloc(LOCAL(psize,jint)*sizeof(char*)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtr_allocAsciiZ__Ljava_lang_String__Lcava_c_CharPtr_(jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstr,jobject,0);
	DEFLOCAL(lresult,jobject,1);
	DEFLOCAL(li,jint,2);

	JVMMETHOD(cava_c_CharPtr_Class,2);
	JVMLINE(35)
	LOCAL(lresult,jobject)=mcava_c_CharPtr_alloc__I_Lcava_c_CharPtr_(mjava_lang_String_length___I(LOCAL(pstr,jobject)) + 1);
	JVMLINE(36)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < mjava_lang_String_length___I(LOCAL(pstr,jobject))){
		JVMLINE(37)
		mcava_c_CharPtr_set__II_V(LOCAL(lresult,jobject),LOCAL(li,jint),mjava_lang_String_charAt__I_C(LOCAL(pstr,jobject),LOCAL(li,jint)));
		JVMLINE(36)
		LOCAL(li,jint)++;
	}
	JVMLINE(38)
	mcava_c_CharPtr_set__II_V(LOCAL(lresult,jobject),mjava_lang_String_length___I(LOCAL(pstr,jobject)),0);
	JVMLINE(39)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtr_asciiZ__Ljava_lang_String_Ljava_lang_Object_I_Lcava_c_CharPtr_(jobject pstr, jobject ptarget, jint plen) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pstr,jobject,0);
	DEFARG(ptarget,jobject,1);
	DEFARG(plen,jint,2);
	DEFLOCAL(lstrlen,jint,3);
	DEFLOCAL(li,jint,4);

	JVMMETHOD(cava_c_CharPtr_Class,3);
	JVMLINE(56)
	LOCAL(lstrlen,jint)=mjava_lang_String_length___I(LOCAL(pstr,jobject));
	JVMLINE(57)
	if(LOCAL(lstrlen,jint) > LOCAL(plen,jint)){
		LOCAL(lstrlen,jint)=LOCAL(plen,jint);
	}
	JVMLINE(58)
	LOCAL(li,jint)=0;
	while(LOCAL(li,jint) < LOCAL(lstrlen,jint)){
		JVMLINE(59)
		((char*)LOCAL(ptarget,jobject))[LOCAL(li,jint)] = mjava_lang_String_charAt__I_C(LOCAL(pstr,jobject),LOCAL(li,jint));
		JVMLINE(58)
		LOCAL(li,jint)++;
	}
	JVMLINE(61)
	((char*)LOCAL(ptarget,jobject))[LOCAL(lstrlen,jint)] = 0;
	JVMLINE(62)
	{ jobject $$ret = (char*)LOCAL(ptarget,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtr_from___B_Lcava_c_CharPtr_(jobject pbytes) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pbytes,jobject,0);

	JVMMETHOD(cava_c_CharPtr_Class,4);
	JVMLINE(74)
	{ jobject $$ret = mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(LOCAL(pbytes,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(jobject parray) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(parray,jobject,0);

	JVMMETHOD(cava_c_CharPtr_Class,5);
	JVMLINE(78)
	{ jobject $$ret = (char*)JvmArrayData(LOCAL(parray,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_c_CharPtr_set__II_V(jobject pthis, jint pindex, jint pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pindex,jint,1);
	DEFARG(pvalue,jint,2);

	JVMMETHOD(cava_c_CharPtr_Class,6);
	JVMLINE(82)
	((char*)LOCAL(pthis,jobject))[LOCAL(pindex,jint)] = (char)LOCAL(pvalue,jint);
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_CharPtr_Class;
JvmClass ArrOf_cava_c_CharPtr_Class;
JvmClass ArrOf_ArrOf_cava_c_CharPtr_Class;

jbool cava_c_CharPtr_isChildOf(JvmClass* klass) {
	return klass == &cava_c_CharPtr_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OOIO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_IIV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_c_CharPtr() {
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
	JvmClass* cls = &cava_c_CharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_CharPtr);
	cls->name = JvmMakeString(L"cava.c.CharPtr",14);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_CharPtr_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CharPtr.java",12);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 7, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"<init>", 6), &cava_c_CharPtr_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_CharPtr__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_c_CharPtr_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"alloc", 5), &cava_c_CharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mcava_c_CharPtr_alloc__I_Lcava_c_CharPtr_, &invoke_IO 
#ifdef JVM_DEBUG
 , 30, 30, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"size",4), .startLine=30, .endLine=30, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"allocAsciiZ", 11), &cava_c_CharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mcava_c_CharPtr_allocAsciiZ__Ljava_lang_String__Lcava_c_CharPtr_, &invoke_OO 
#ifdef JVM_DEBUG
 , 35, 39, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=35, .endLine=39, .type=&java_lang_String_Class},{.name=JvmMakeString(L"result",6), .startLine=35, .endLine=39, .type=&cava_c_CharPtr_Class},{.name=JvmMakeString(L"i",1), .startLine=36, .endLine=39, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"asciiZ", 6), &cava_c_CharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&java_lang_String_Class,&java_lang_Object_Class,&I_Class}), &mcava_c_CharPtr_asciiZ__Ljava_lang_String_Ljava_lang_Object_I_Lcava_c_CharPtr_, &invoke_OOIO 
#ifdef JVM_DEBUG
 , 56, 62, 3, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=56, .endLine=62, .type=&java_lang_String_Class},{.name=JvmMakeString(L"target",6), .startLine=59, .endLine=62, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"len",3), .startLine=57, .endLine=62, .type=&I_Class},{.name=JvmMakeString(L"strlen",6), .startLine=56, .endLine=62, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=58, .endLine=62, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"from", 4), &cava_c_CharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_B_Class}), &mcava_c_CharPtr_from___B_Lcava_c_CharPtr_, &invoke_OO 
#ifdef JVM_DEBUG
 , 74, 74, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"bytes",5), .startLine=74, .endLine=74, .type=&ArrOf_B_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"fromAnyArray", 12), &cava_c_CharPtr_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_, &invoke_OO 
#ifdef JVM_DEBUG
 , 78, 78, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"array",5), .startLine=78, .endLine=78, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CharPtr_Class, JvmMakeString(L"set", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mcava_c_CharPtr_set__II_V, &invoke_IIV 
#ifdef JVM_DEBUG
 , 82, 82, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"index",5), .startLine=82, .endLine=82, .type=&I_Class},{.name=JvmMakeString(L"value",5), .startLine=82, .endLine=82, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=82, .endLine=82, .type=&cava_c_CharPtr_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_c_CharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.CharPtr",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_CharPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_CharPtr_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.CharPtr",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_CharPtr_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
