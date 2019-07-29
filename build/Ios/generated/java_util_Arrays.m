#include "java_lang_Math.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_ArrayIndexOutOfBoundsException.h"
#include "java_util_Arrays.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_lang_reflect_Array.h"
#include "java_lang_IllegalArgumentException.h"
#include "java_lang_System.h"
extern jobject $literal2;
extern jobject $literal1;


void mjava_util_Arrays_checkOffsetAndCount__III_V(jint parrayLength, jint poffset, jint pcount) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(parrayLength,jint,0);
	DEFARG(poffset,jint,1);
	DEFARG(pcount,jint,2);

	JVMMETHOD(java_util_Arrays_Class,0);
	JVMLINE(39)
	if((((LOCAL(poffset,jint) | LOCAL(pcount,jint)) < 0) || (LOCAL(poffset,jint) > LOCAL(parrayLength,jint))) || ((LOCAL(parrayLength,jint) - LOCAL(poffset,jint)) < LOCAL(pcount,jint))){
		JVMLINE(39)
		JvmThrow(mjava_lang_ArrayIndexOutOfBoundsException__init___I_V(JvmAllocObject(&java_lang_ArrayIndexOutOfBoundsException_Class),LOCAL(poffset,jint)));
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_Arrays__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_Arrays_Class,1);
	JVMLINE(138)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_util_Arrays_fill___Ljava_lang_Object_IILjava_lang_Object__V(jobject parray, jint pstart, jint pend, jobject pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(parray,jobject,0);
	DEFARG(pstart,jint,1);
	DEFARG(pend,jint,2);
	DEFARG(pvalue,jobject,3);
	DEFLOCAL(li,jint,4);

	JVMMETHOD(java_util_Arrays_Class,2);
	JVMLINE(1100)
	mjava_util_Arrays_checkBounds__III_V(JvmArrayLen(LOCAL(parray,jobject)),LOCAL(pstart,jint),LOCAL(pend,jint));
	JVMLINE(1101)
	LOCAL(li,jint)=LOCAL(pstart,jint);
	while(LOCAL(li,jint) < LOCAL(pend,jint)){
		JVMLINE(1102)
		JvmArraySet_O(LOCAL(parray,jobject),LOCAL(li,jint),LOCAL(pvalue,jobject));
		JVMLINE(1101)
		LOCAL(li,jint)++;
	}
	thread->framePtr = entryFramePtr;
}

void mjava_util_Arrays_checkBounds__III_V(jint parrLength, jint pstart, jint pend) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(parrLength,jint,0);
	DEFARG(pstart,jint,1);
	DEFARG(pend,jint,2);

	JVMMETHOD(java_util_Arrays_Class,3);
	JVMLINE(1908)
	if(LOCAL(pstart,jint) > LOCAL(pend,jint)){
		JVMLINE(1908)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(pstart,jint)),$literal2),LOCAL(pend,jint)))));
	}
	JVMLINE(1912)
	if(LOCAL(pstart,jint) < 0){
		JVMLINE(1912)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(pstart,jint)))));
	}
	JVMLINE(1916)
	if(LOCAL(pend,jint) > LOCAL(parrLength,jint)){
		JVMLINE(1916)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(pend,jint)))));
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_Arrays_copyOfRange___Ljava_lang_Object_II__Ljava_lang_Object_(jobject poriginal, jint pstart, jint pend) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(poriginal,jobject,0);
	DEFARG(pstart,jint,1);
	DEFARG(pend,jint,2);
	DEFLOCAL(loriginalLength,jint,3);
	DEFLOCAL(lresultLength,jint,4);
	DEFLOCAL(lcopyLength,jint,5);
	DEFLOCAL(lresult,jobject,6);

	JVMMETHOD(java_util_Arrays_Class,4);
	JVMLINE(3920)
	LOCAL(loriginalLength,jint)=JvmArrayLen(LOCAL(poriginal,jobject));
	JVMLINE(3922)
	if(LOCAL(pstart,jint) > LOCAL(pend,jint)){
		JVMLINE(3922)
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(3925)
	if((LOCAL(pstart,jint) < 0) || (LOCAL(pstart,jint) > LOCAL(loriginalLength,jint))){
		JVMLINE(3925)
		JvmThrow(mjava_lang_ArrayIndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_ArrayIndexOutOfBoundsException_Class)));
	}
	JVMLINE(3927)
	LOCAL(lresultLength,jint)=LOCAL(pend,jint) - LOCAL(pstart,jint);
	JVMLINE(3928)
	LOCAL(lcopyLength,jint)=mjava_lang_Math_min__II_I(LOCAL(lresultLength,jint),LOCAL(loriginalLength,jint) - LOCAL(pstart,jint));
	JVMLINE(3929)
	LOCAL(lresult,jobject)=JvmCheckCast(JvmCheckCast(mjava_lang_reflect_Array_newInstance__Ljava_lang_Class_I_Ljava_lang_Object_(mjava_lang_Class_getComponentType___Ljava_lang_Class_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(poriginal,jobject))),LOCAL(lresultLength,jint)),&ArrOf_java_lang_Object_Class),&ArrOf_java_lang_Object_Class);
	JVMLINE(3930)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(LOCAL(poriginal,jobject),LOCAL(pstart,jint),LOCAL(lresult,jobject),0,LOCAL(lcopyLength,jint));
	JVMLINE(3931)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_util_Arrays_Class;
JvmClass ArrOf_java_util_Arrays_Class;
JvmClass ArrOf_ArrOf_java_util_Arrays_Class;

jbool java_util_Arrays_isChildOf(JvmClass* klass) {
	return klass == &java_util_Arrays_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OIIO(jobject,jobject,jobject);
extern jobject invoke_OIIOV(jobject,jobject,jobject);
extern jobject invoke_IIIV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_util_Arrays() {
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
	JvmClass* cls = &java_util_Arrays_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_Arrays);
	cls->name = JvmMakeString(L"java.util.Arrays",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_Arrays_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Arrays.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 5, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_Arrays_Class, JvmMakeString(L"checkOffsetAndCount", 19), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&I_Class,&I_Class,&I_Class}), &mjava_util_Arrays_checkOffsetAndCount__III_V, &invoke_IIIV 
#ifdef JVM_DEBUG
 , 39, 39, 3, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"arrayLength",11), .startLine=39, .endLine=39, .type=&I_Class},{.name=JvmMakeString(L"offset",6), .startLine=39, .endLine=39, .type=&I_Class},{.name=JvmMakeString(L"count",5), .startLine=39, .endLine=39, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_Arrays_Class, JvmMakeString(L"<init>", 6), &java_util_Arrays_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_Arrays__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 138, 138, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=138, .endLine=138, .type=&java_util_Arrays_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_Arrays_Class, JvmMakeString(L"fill", 4), &V_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&ArrOf_java_lang_Object_Class,&I_Class,&I_Class,&java_lang_Object_Class}), &mjava_util_Arrays_fill___Ljava_lang_Object_IILjava_lang_Object__V, &invoke_OIIOV 
#ifdef JVM_DEBUG
 , 1100, 1102, 4, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"array",5), .startLine=1100, .endLine=1102, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"start",5), .startLine=1100, .endLine=1102, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=1100, .endLine=1102, .type=&I_Class},{.name=JvmMakeString(L"value",5), .startLine=1102, .endLine=1102, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"i",1), .startLine=1101, .endLine=1102, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_Arrays_Class, JvmMakeString(L"checkBounds", 11), &V_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&I_Class,&I_Class,&I_Class}), &mjava_util_Arrays_checkBounds__III_V, &invoke_IIIV 
#ifdef JVM_DEBUG
 , 1908, 1916, 3, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"arrLength",9), .startLine=1916, .endLine=1916, .type=&I_Class},{.name=JvmMakeString(L"start",5), .startLine=1908, .endLine=1916, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=1908, .endLine=1916, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_Arrays_Class, JvmMakeString(L"copyOfRange", 11), &ArrOf_java_lang_Object_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 3, &(JvmClass*[]){&ArrOf_java_lang_Object_Class,&I_Class,&I_Class}), &mjava_util_Arrays_copyOfRange___Ljava_lang_Object_II__Ljava_lang_Object_, &invoke_OIIO 
#ifdef JVM_DEBUG
 , 3920, 3931, 3, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"original",8), .startLine=3920, .endLine=3931, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"start",5), .startLine=3922, .endLine=3931, .type=&I_Class},{.name=JvmMakeString(L"end",3), .startLine=3922, .endLine=3931, .type=&I_Class},{.name=JvmMakeString(L"originalLength",14), .startLine=3920, .endLine=3931, .type=&I_Class},{.name=JvmMakeString(L"resultLength",12), .startLine=3927, .endLine=3931, .type=&I_Class},{.name=JvmMakeString(L"copyLength",10), .startLine=3928, .endLine=3931, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=3929, .endLine=3931, .type=&ArrOf_java_lang_Object_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_util_Arrays_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.Arrays",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_Arrays_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_Arrays_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.Arrays",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_Arrays_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
