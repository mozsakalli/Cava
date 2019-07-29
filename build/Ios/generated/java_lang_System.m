#include "java_io_ConsolePrintStream.h"
#include "cava_c_CharPtr.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_lang_reflect_Array.h"
#include "cava_c_CLib.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_System.h"
extern jobject $literal3;


jobject mjava_lang_System__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_System_Class,0);
	JVMLINE(27)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(jobject psrc, jint psrcOffset, jobject pdst, jint pdstOffset, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(psrc,jobject,0);
	DEFARG(psrcOffset,jint,1);
	DEFARG(pdst,jobject,2);
	DEFARG(pdstOffset,jint,3);
	DEFARG(plength,jint,4);
	DEFLOCAL(lsrcIsPrim,jbool,5);
	DEFLOCAL(ldstIsPrim,jbool,6);
	DEFLOCAL(lsrcLen,jint,7);
	DEFLOCAL(ldstLen,jint,8);
	DEFLOCAL(lsize,jint,9);

	JVMMETHOD(java_lang_System_Class,1);
	JVMLINE(54)
	if((((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType == jnull) || (((java_lang_Class*)(((java_lang_Object*)(LOCAL(pdst,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType == jnull)){
		{ thread->framePtr = entryFramePtr; return; };
	}
	JVMLINE(55)
	LOCAL(lsrcIsPrim,jbool)=mjava_lang_Class_isPrimitive___Z(((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType);
	JVMLINE(56)
	LOCAL(ldstIsPrim,jbool)=mjava_lang_Class_isPrimitive___Z(((java_lang_Class*)(((java_lang_Object*)(LOCAL(pdst,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType);
	JVMLINE(57)
	if(LOCAL(lsrcIsPrim,jbool) != LOCAL(ldstIsPrim,jbool)){
		{ thread->framePtr = entryFramePtr; return; };
	}
	JVMLINE(58)
	LOCAL(lsrcLen,jint)=mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I(LOCAL(psrc,jobject));
	JVMLINE(59)
	if((LOCAL(psrcOffset,jint) + LOCAL(plength,jint)) > LOCAL(lsrcLen,jint)){
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(60)
	LOCAL(ldstLen,jint)=mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I(LOCAL(pdst,jobject));
	JVMLINE(61)
	if((LOCAL(pdstOffset,jint) + LOCAL(plength,jint)) > LOCAL(ldstLen,jint)){
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(74)
	if(LOCAL(lsrcIsPrim,jbool)){
		JVMLINE(66)
		if(((java_lang_Class*)(((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType))->fjava_lang_Class_size == ((java_lang_Class*)(((java_lang_Class*)(((java_lang_Object*)(LOCAL(pdst,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType))->fjava_lang_Class_size){
			JVMLINE(64)
			if((((java_lang_Class*)(((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType))->fjava_lang_Class_size < 0) || (((java_lang_Class*)(((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType))->fjava_lang_Class_size > 8)){
				JvmThrow(mjava_lang_RuntimeException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_RuntimeException_Class),$literal3));
			}
			JVMLINE(65)
			LOCAL(lsize,jint)=((java_lang_Class*)(((java_lang_Class*)(((java_lang_Object*)(LOCAL(psrc,jobject)))->fjava_lang_Object_klass))->fjava_lang_Class_componentType))->fjava_lang_Class_size;
			JVMLINE(66)
			mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V(mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(LOCAL(pdst,jobject)),LOCAL(pdstOffset,jint) * LOCAL(lsize,jint),mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(LOCAL(psrc,jobject)),LOCAL(psrcOffset,jint) * LOCAL(lsize,jint),LOCAL(plength,jint) * LOCAL(lsize,jint));
		}
	}
	else{
		JVMLINE(73)
		LOCAL(lsize,jint)=sizeof(jobject);
		JVMLINE(74)
		mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V(mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(LOCAL(pdst,jobject)),LOCAL(pdstOffset,jint) * LOCAL(lsize,jint),mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(LOCAL(psrc,jobject)),LOCAL(psrcOffset,jint) * LOCAL(lsize,jint),LOCAL(plength,jint) * LOCAL(lsize,jint));
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(jobject pkey) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pkey,jobject,0);

	JVMMETHOD(java_lang_System_Class,2);
	JVMLINE(132)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_System__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_System_Class,3);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	mjava_io_ConsolePrintStream__clinit____V();
	JVMLINE(32)
	JVMGLOBALS[0]=mjava_io_ConsolePrintStream__init____V(JvmAllocObject(&java_io_ConsolePrintStream_Class));
	JVMLINE(41)
	JVMGLOBALS[1]=mjava_io_ConsolePrintStream__init____V(JvmAllocObject(&java_io_ConsolePrintStream_Class));
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_System_Class;
JvmClass ArrOf_java_lang_System_Class;
JvmClass ArrOf_ArrOf_java_lang_System_Class;

jbool java_lang_System_isChildOf(JvmClass* klass) {
	return klass == &java_lang_System_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OIOIIV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_System() {
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
	JvmClass* cls = &java_lang_System_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_System);
	cls->name = JvmMakeString(L"java.lang.System",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_System_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"System.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 4, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_System_Class, JvmMakeString(L"<init>", 6), &java_lang_System_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_System__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 27, 27, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=27, .endLine=27, .type=&java_lang_System_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_System_Class, JvmMakeString(L"arraycopy", 9), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 5, &(JvmClass*[]){&java_lang_Object_Class,&I_Class,&java_lang_Object_Class,&I_Class,&I_Class}), &mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V, &invoke_OIOIIV 
#ifdef JVM_DEBUG
 , 54, 74, 5, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"src",3), .startLine=54, .endLine=74, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"srcOffset",9), .startLine=59, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"dst",3), .startLine=54, .endLine=74, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"dstOffset",9), .startLine=61, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=59, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"srcIsPrim",9), .startLine=55, .endLine=74, .type=&Z_Class},{.name=JvmMakeString(L"dstIsPrim",9), .startLine=56, .endLine=74, .type=&Z_Class},{.name=JvmMakeString(L"srcLen",6), .startLine=58, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"dstLen",6), .startLine=60, .endLine=74, .type=&I_Class},{.name=JvmMakeString(L"size",4), .startLine=65, .endLine=74, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_System_Class, JvmMakeString(L"getProperty", 11), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 132, 132, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"key",3), .startLine=0, .endLine=132, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_System_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_System__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 32, 41, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 2, &(JvmField*[]){
	JvmMakeField(&java_lang_System_Class, JvmMakeString(L"err", 3), &java_io_PrintStream_Class, 25, &JVMGLOBALS[0])
	,JvmMakeField(&java_lang_System_Class, JvmMakeString(L"out", 3), &java_io_PrintStream_Class, 25, &JVMGLOBALS[1])
	});

	cls = &ArrOf_java_lang_System_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.System",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_System_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_System_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.System",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_System_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
