#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_NegativeArraySizeException.h"
#include "java_lang_Long.h"
#include "java_lang_Double.h"
#include "java_lang_System.h"
extern jobject $literal1;


jobject mjava_lang_StringBuilder__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringBuilder_Class,0);
	JVMLINE(42)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(43)
	((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value=JvmAllocPrimArray1(&ArrOf_C_Class,16);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder__init___I_V(jobject pthis, jint plength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plength,jint,1);

	JVMMETHOD(java_lang_StringBuilder_Class,1);
	JVMLINE(51)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(53)
	if(LOCAL(plength,jint) < 0){
		JVMLINE(53)
		JvmThrow(mjava_lang_NegativeArraySizeException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NegativeArraySizeException_Class),mjava_lang_Integer_toString__I_Ljava_lang_String_(LOCAL(plength,jint))));
	}
	JVMLINE(55)
	((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(plength,jint));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_StringBuilder_enlargeBuffer__I_V(jobject pthis, jint pmin) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pmin,jint,1);
	DEFLOCAL(lnewCount,jint,2);
	DEFLOCAL(lnewData,jobject,3);

	JVMMETHOD(java_lang_StringBuilder_Class,2);
	JVMLINE(70)
	LOCAL(lnewCount,jint)=(((JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value)) >> 1) + (JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value))) + 2;
	JVMLINE(71)
	LOCAL(lnewData,jobject)=JvmAllocPrimArray1(&ArrOf_C_Class,LOCAL(pmin,jint) > LOCAL(lnewCount,jint) ? LOCAL(pmin,jint) : LOCAL(lnewCount,jint));
	JVMLINE(72)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,0,LOCAL(lnewData,jobject),0,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count);
	JVMLINE(73)
	((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value=LOCAL(lnewData,jobject);
	thread->framePtr = entryFramePtr;
}

void mjava_lang_StringBuilder_appendNull___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lnewCount,jint,1);

	JVMMETHOD(java_lang_StringBuilder_Class,3);
	JVMLINE(78)
	LOCAL(lnewCount,jint)=((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count + 4;
	JVMLINE(80)
	if(LOCAL(lnewCount,jint) > (JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value))){
		JVMLINE(80)
		mjava_lang_StringBuilder_enlargeBuffer__I_V(LOCAL(pthis,jobject),LOCAL(lnewCount,jint));
	}
	JVMLINE(82)
	JvmArraySet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count++,110);
	JVMLINE(83)
	JvmArraySet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count++,117);
	JVMLINE(84)
	JvmArraySet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count++,108);
	JVMLINE(85)
	JvmArraySet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count++,108);
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(jobject pthis, jchar pc) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pc,jchar,1);

	JVMMETHOD(java_lang_StringBuilder_Class,4);
	JVMLINE(106)
	if(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count == (JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value))){
		JVMLINE(106)
		mjava_lang_StringBuilder_enlargeBuffer__I_V(LOCAL(pthis,jobject),((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count + 1);
	}
	JVMLINE(108)
	JvmArraySet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count++,LOCAL(pc,jchar));
	JVMLINE(109)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(jobject pthis, jdouble pd) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pd,jdouble,1);

	JVMMETHOD(java_lang_StringBuilder_Class,5);
	JVMLINE(143)
	{ jobject $$ret = mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(pthis,jobject),mjava_lang_Double_toString__D_Ljava_lang_String_(LOCAL(pd,jdouble))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(jobject pthis, jint pi) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pi,jint,1);

	JVMMETHOD(java_lang_StringBuilder_Class,6);
	JVMLINE(159)
	{ jobject $$ret = mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(pthis,jobject),mjava_lang_Integer_toString__I_Ljava_lang_String_(LOCAL(pi,jint))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__J_Ljava_lang_StringBuilder_(jobject pthis, jlong pl) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pl,jlong,1);

	JVMMETHOD(java_lang_StringBuilder_Class,7);
	JVMLINE(167)
	{ jobject $$ret = mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(pthis,jobject),mjava_lang_Long_toString__J_Ljava_lang_String_(LOCAL(pl,jlong))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_StringBuilder_Class,8);
	JVMLINE(177)
	if(LOCAL(pobj,jobject) == jnull){
		JVMLINE(176)
		mjava_lang_StringBuilder_appendNull___V(LOCAL(pthis,jobject));
		JVMLINE(177)
		{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(179)
	{ jobject $$ret = mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(pthis,jobject),virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(pobj,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(jobject pthis, jobject pstr) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pstr,jobject,1);
	DEFLOCAL(llength,jint,2);
	DEFLOCAL(lnewCount,jint,3);

	JVMMETHOD(java_lang_StringBuilder_Class,9);
	JVMLINE(190)
	if(LOCAL(pstr,jobject) == jnull){
		JVMLINE(189)
		mjava_lang_StringBuilder_appendNull___V(LOCAL(pthis,jobject));
		JVMLINE(190)
		{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(192)
	LOCAL(llength,jint)=mjava_lang_String_length___I(LOCAL(pstr,jobject));
	JVMLINE(193)
	LOCAL(lnewCount,jint)=((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count + LOCAL(llength,jint);
	JVMLINE(195)
	if(LOCAL(lnewCount,jint) > (JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value))){
		JVMLINE(195)
		mjava_lang_StringBuilder_enlargeBuffer__I_V(LOCAL(pthis,jobject),LOCAL(lnewCount,jint));
	}
	JVMLINE(197)
	mjava_lang_String_getChars__II_CI_V(LOCAL(pstr,jobject),0,LOCAL(llength,jint),((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count);
	JVMLINE(198)
	((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count=LOCAL(lnewCount,jint);
	JVMLINE(199)
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_StringBuilder_charAt__I_C(jobject pthis, jint pindex) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pindex,jint,1);

	JVMMETHOD(java_lang_StringBuilder_Class,10);
	JVMLINE(214)
	{ jchar $$ret = JvmArrayGet_C(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,LOCAL(pindex,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_StringBuilder_length___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringBuilder_Class,11);
	JVMLINE(405)
	{ jint $$ret = ((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_StringBuilder_setLength__I_V(jobject pthis, jint pnewLength) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pnewLength,jint,1);

	JVMMETHOD(java_lang_StringBuilder_Class,12);
	JVMLINE(509)
	if(LOCAL(pnewLength,jint) > (JvmArrayLen(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value))){
		JVMLINE(509)
		mjava_lang_StringBuilder_enlargeBuffer__I_V(LOCAL(pthis,jobject),LOCAL(pnewLength,jint));
	}
	JVMLINE(522)
	((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count=LOCAL(pnewLength,jint);
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StringBuilder_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StringBuilder_Class,13);
	JVMLINE(531)
	if(((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count == 0){
		JVMLINE(531)
		{ jobject $$ret = $literal1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(540)
	{ jobject $$ret = mjava_lang_String__init____CII_V(JvmAllocObject(&java_lang_String_Class),((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_value,0,((java_lang_StringBuilder*)(LOCAL(pthis,jobject)))->fjava_lang_StringBuilder_count); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_StringBuilder_Class;
JvmClass ArrOf_java_lang_StringBuilder_Class;
JvmClass ArrOf_ArrOf_java_lang_StringBuilder_Class;

jbool java_lang_StringBuilder_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StringBuilder_Class || klass == &java_lang_CharSequence_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_JO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_DO(jobject,jobject,jobject);
extern jobject invoke_CO(jobject,jobject,jobject);
extern jobject invoke_IV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_IC(jobject,jobject,jobject);
void JvmSetup_java_lang_StringBuilder() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_lang_CharSequence();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_StringBuilder_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(13 * sizeof(void*));
	_iTable[12] = (void*)&mjava_lang_StringBuilder_charAt__I_C;
	_iTable[11] = (void*)&mjava_lang_StringBuilder_length___I;
	_iTable[10] = (void*)&mjava_lang_StringBuilder_toString___Ljava_lang_String_;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_StringBuilder_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StringBuilder);
	cls->name = JvmMakeString(L"java.lang.StringBuilder",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StringBuilder_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StringBuilder.java",18);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_CharSequence_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 14, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"<init>", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuilder__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 42, 43, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=43, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"<init>", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuilder__init___I_V, &invoke_IO 
#ifdef JVM_DEBUG
 , 51, 55, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"length",6), .startLine=53, .endLine=55, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=51, .endLine=55, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"enlargeBuffer", 13), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuilder_enlargeBuffer__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 70, 73, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"min",3), .startLine=71, .endLine=73, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=70, .endLine=73, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"newCount",8), .startLine=70, .endLine=73, .type=&I_Class},{.name=JvmMakeString(L"newData",7), .startLine=71, .endLine=73, .type=&ArrOf_C_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"appendNull", 10), &V_Class, 16, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuilder_appendNull___V, &invoke_V 
#ifdef JVM_DEBUG
 , 78, 85, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=78, .endLine=85, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"newCount",8), .startLine=78, .endLine=85, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&C_Class}), &mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_, &invoke_CO 
#ifdef JVM_DEBUG
 , 106, 109, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"c",1), .startLine=108, .endLine=109, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=106, .endLine=109, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&D_Class}), &mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_, &invoke_DO 
#ifdef JVM_DEBUG
 , 143, 143, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"d",1), .startLine=143, .endLine=143, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=143, .endLine=143, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_, &invoke_IO 
#ifdef JVM_DEBUG
 , 159, 159, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"i",1), .startLine=159, .endLine=159, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=159, .endLine=159, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&J_Class}), &mjava_lang_StringBuilder_append__J_Ljava_lang_StringBuilder_, &invoke_JO 
#ifdef JVM_DEBUG
 , 167, 167, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"l",1), .startLine=167, .endLine=167, .type=&J_Class},{.name=JvmMakeString(L"this",4), .startLine=167, .endLine=167, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_, &invoke_OO 
#ifdef JVM_DEBUG
 , 176, 179, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=177, .endLine=179, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=176, .endLine=179, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"append", 6), &java_lang_StringBuilder_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_, &invoke_OO 
#ifdef JVM_DEBUG
 , 189, 199, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"str",3), .startLine=190, .endLine=199, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=189, .endLine=199, .type=&java_lang_StringBuilder_Class},{.name=JvmMakeString(L"length",6), .startLine=192, .endLine=199, .type=&I_Class},{.name=JvmMakeString(L"newCount",8), .startLine=193, .endLine=199, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"charAt", 6), &C_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuilder_charAt__I_C, &invoke_IC 
#ifdef JVM_DEBUG
 , 214, 214, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"index",5), .startLine=214, .endLine=214, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=214, .endLine=214, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"length", 6), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuilder_length___I, &invoke_I 
#ifdef JVM_DEBUG
 , 405, 405, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=405, .endLine=405, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"setLength", 9), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_lang_StringBuilder_setLength__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 509, 522, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"newLength",9), .startLine=509, .endLine=522, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=509, .endLine=522, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StringBuilder_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StringBuilder_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 531, 540, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=531, .endLine=540, .type=&java_lang_StringBuilder_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 2, &(JvmField*[]){
	JvmMakeField(&java_lang_StringBuilder_Class, JvmMakeString(L"value", 5), &ArrOf_C_Class, 2, (void*)offsetof(java_lang_StringBuilder,fjava_lang_StringBuilder_value))
	,JvmMakeField(&java_lang_StringBuilder_Class, JvmMakeString(L"count", 5), &I_Class, 2, (void*)offsetof(java_lang_StringBuilder,fjava_lang_StringBuilder_count))
	});

	cls = &ArrOf_java_lang_StringBuilder_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StringBuilder",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StringBuilder_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StringBuilder_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StringBuilder",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StringBuilder_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
