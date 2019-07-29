#include "java_lang_reflect_Array.h"
#include "java_lang_IllegalArgumentException.h"
#include "java_lang_NegativeArraySizeException.h"


jobject mjava_lang_reflect_Array__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Array_Class,0);
	JVMLINE(37)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Array_newInstance__Ljava_lang_Class_I_Ljava_lang_Object_(jobject pcomponentType, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcomponentType,jobject,0);
	DEFARG(plength,jint,1);

	JVMMETHOD(java_lang_reflect_Array_Class,1);
	JVMLINE(63)
	{ jobject $$ret = mjava_lang_reflect_Array_newArray__Ljava_lang_Class_I_Ljava_lang_Object_(LOCAL(pcomponentType,jobject),LOCAL(plength,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I(jobject parray) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(parray,jobject,0);

	JVMMETHOD(java_lang_reflect_Array_Class,2);
	JVMLINE(114)
	if(!(mjava_lang_Class_isArray___Z(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(parray,jobject))))){
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(115)
	{ jint $$ret = ((JvmArray*)LOCAL(parray,jobject))->len; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Array_newArray__Ljava_lang_Class_I_Ljava_lang_Object_(jobject pcomponentType, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcomponentType,jobject,0);
	DEFARG(plength,jint,1);

	JVMMETHOD(java_lang_reflect_Array_Class,3);
	JVMLINE(474)
	if(LOCAL(plength,jint) < 0){
		JvmThrow(mjava_lang_NegativeArraySizeException__init____V(JvmAllocObject(&java_lang_NegativeArraySizeException_Class)));
	}
	JVMLINE(476)
	if(mjava_lang_Class_isPrimitive___Z(LOCAL(pcomponentType,jobject))){
		JVMLINE(476)
		{ jobject $$ret = JvmAllocPrimArray1(mjava_lang_Class_getArrayClassFor__Ljava_lang_Class__Ljava_lang_Class_(LOCAL(pcomponentType,jobject)),LOCAL(plength,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(478)
	{ jobject $$ret = JvmAllocObjectArray1(mjava_lang_Class_getArrayClassFor__Ljava_lang_Class__Ljava_lang_Class_(LOCAL(pcomponentType,jobject)),LOCAL(plength,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_reflect_Array_Class;
JvmClass ArrOf_java_lang_reflect_Array_Class;
JvmClass ArrOf_ArrOf_java_lang_reflect_Array_Class;

jbool java_lang_reflect_Array_isChildOf(JvmClass* klass) {
	return klass == &java_lang_reflect_Array_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
void JvmSetup_java_lang_reflect_Array() {
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
	JvmClass* cls = &java_lang_reflect_Array_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_reflect_Array);
	cls->name = JvmMakeString(L"java.lang.reflect.Array",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_reflect_Array_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Array.java",10);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 4, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_reflect_Array_Class, JvmMakeString(L"<init>", 6), &java_lang_reflect_Array_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Array__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 37, 37, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=37, .type=&java_lang_reflect_Array_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Array_Class, JvmMakeString(L"newInstance", 11), &java_lang_Object_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Class_Class,&I_Class}), &mjava_lang_reflect_Array_newInstance__Ljava_lang_Class_I_Ljava_lang_Object_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 63, 63, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"componentType",13), .startLine=63, .endLine=63, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"length",6), .startLine=63, .endLine=63, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Array_Class, JvmMakeString(L"getLength", 9), &I_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 114, 115, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"array",5), .startLine=114, .endLine=115, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Array_Class, JvmMakeString(L"newArray", 8), &java_lang_Object_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Class_Class,&I_Class}), &mjava_lang_reflect_Array_newArray__Ljava_lang_Class_I_Ljava_lang_Object_, &invoke_OIO 
#ifdef JVM_DEBUG
 , 474, 478, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"componentType",13), .startLine=476, .endLine=478, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"length",6), .startLine=474, .endLine=478, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_lang_reflect_Array_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.reflect.Array",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_reflect_Array_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_reflect_Array_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.reflect.Array",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_reflect_Array_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
