#include "cava_c_CLib.h"


jint fcava_c_CLib_BYTE_SIZE;
jint fcava_c_CLib_CHAR_SIZE;
jint fcava_c_CLib_SHORT_SIZE;
jint fcava_c_CLib_BOOL_SIZE;
jint fcava_c_CLib_INT_SIZE;
jint fcava_c_CLib_FLOAT_SIZE;
jint fcava_c_CLib_LONG_SIZE;
jint fcava_c_CLib_DOUBLE_SIZE;
jobject mcava_c_CLib__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_c_CLib_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V(jobject pdst, jint pdstOffset, jobject psrc, jint psrcOffset, jint psizeInBytes) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pdst,jobject,0);
	DEFARG(pdstOffset,jint,1);
	DEFARG(psrc,jobject,2);
	DEFARG(psrcOffset,jint,3);
	DEFARG(psizeInBytes,jint,4);

	JVMMETHOD(cava_c_CLib_Class,1);
	JVMLINE(59)
	memmove(((char*)LOCAL(pdst,jobject))+LOCAL(pdstOffset,jint), ((char*)LOCAL(psrc,jobject))+LOCAL(psrcOffset,jint), LOCAL(psizeInBytes,jint));
	thread->framePtr = entryFramePtr;
}

void mcava_c_CLib__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(cava_c_CLib_Class,2);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(29)
	fcava_c_CLib_BYTE_SIZE=sizeof(jbyte);
	JVMLINE(30)
	fcava_c_CLib_CHAR_SIZE=sizeof(jchar);
	JVMLINE(31)
	fcava_c_CLib_SHORT_SIZE=sizeof(jshort);
	JVMLINE(32)
	fcava_c_CLib_BOOL_SIZE=sizeof(jbool);
	JVMLINE(33)
	fcava_c_CLib_INT_SIZE=sizeof(jint);
	JVMLINE(34)
	fcava_c_CLib_FLOAT_SIZE=sizeof(jfloat);
	JVMLINE(35)
	fcava_c_CLib_LONG_SIZE=sizeof(jlong);
	JVMLINE(36)
	fcava_c_CLib_DOUBLE_SIZE=sizeof(jdouble);
	thread->framePtr = entryFramePtr;
}

JvmClass cava_c_CLib_Class;
JvmClass ArrOf_cava_c_CLib_Class;
JvmClass ArrOf_ArrOf_cava_c_CLib_Class;

jbool cava_c_CLib_isChildOf(JvmClass* klass) {
	return klass == &cava_c_CLib_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OIOIIV(jobject,jobject,jobject);
void JvmSetup_cava_c_CLib() {
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
	JvmClass* cls = &cava_c_CLib_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_c_CLib);
	cls->name = JvmMakeString(L"cava.c.CLib",11);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_c_CLib_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CLib.java",9);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_c_CLib_Class, JvmMakeString(L"<init>", 6), &cava_c_CLib_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_CLib__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&cava_c_CLib_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CLib_Class, JvmMakeString(L"memmove", 7), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 5, &(JvmClass*[]){&java_lang_Object_Class,&I_Class,&java_lang_Object_Class,&I_Class,&I_Class}), &mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V, &invoke_OIOIIV 
#ifdef JVM_DEBUG
 , 59, 59, 5, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"dst",3), .startLine=59, .endLine=59, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"dstOffset",9), .startLine=59, .endLine=59, .type=&I_Class},{.name=JvmMakeString(L"src",3), .startLine=59, .endLine=59, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"srcOffset",9), .startLine=59, .endLine=59, .type=&I_Class},{.name=JvmMakeString(L"sizeInBytes",11), .startLine=59, .endLine=59, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&cava_c_CLib_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_c_CLib__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 29, 36, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 8, &(JvmField*[]){
	JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"BYTE_SIZE", 9), &I_Class, 25, &fcava_c_CLib_BYTE_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"CHAR_SIZE", 9), &I_Class, 25, &fcava_c_CLib_CHAR_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"SHORT_SIZE", 10), &I_Class, 25, &fcava_c_CLib_SHORT_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"BOOL_SIZE", 9), &I_Class, 25, &fcava_c_CLib_BOOL_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"INT_SIZE", 8), &I_Class, 25, &fcava_c_CLib_INT_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"FLOAT_SIZE", 10), &I_Class, 25, &fcava_c_CLib_FLOAT_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"LONG_SIZE", 9), &I_Class, 25, &fcava_c_CLib_LONG_SIZE)
	,JvmMakeField(&cava_c_CLib_Class, JvmMakeString(L"DOUBLE_SIZE", 11), &I_Class, 25, &fcava_c_CLib_DOUBLE_SIZE)
	});

	cls = &ArrOf_cava_c_CLib_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.c.CLib",12);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_c_CLib_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_c_CLib_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.c.CLib",12);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_c_CLib_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
