#include "java_lang_Short.h"
#include "java_lang_Long.h"


jobject fjava_lang_Short_TYPE;
jshort fjava_lang_Short_MIN_VALUE;
jshort fjava_lang_Short_MAX_VALUE;
jobject mjava_lang_Short__init___S_V(jobject pthis, jshort pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jshort,1);

	JVMMETHOD(java_lang_Short_Class,0);
	JVMLINE(31)
	mjava_lang_Number__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value=LOCAL(pvalue,jshort);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Short_valueOf__S_Ljava_lang_Short_(jshort pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pvalue,jshort,0);

	JVMMETHOD(java_lang_Short_Class,1);
	JVMLINE(36)
	{ jobject $$ret = mjava_lang_Short__init___S_V(JvmAllocObject(&java_lang_Short_Class),LOCAL(pvalue,jshort)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Short_compareTo__Ljava_lang_Short__I(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);

	JVMMETHOD(java_lang_Short_Class,2);
	JVMLINE(40)
	{ jint $$ret = ((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value - ((java_lang_Short*)(LOCAL(po,jobject)))->fjava_lang_Short_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Short_equals__Ljava_lang_Object__Z(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);

	JVMMETHOD(java_lang_Short_Class,3);
	JVMLINE(44)
	{ jbool $$ret = (JvmInstanceOf(LOCAL(po,jobject),&java_lang_Short_Class)) && (((java_lang_Short*)(JvmCheckCast(LOCAL(po,jobject),&java_lang_Short_Class)))->fjava_lang_Short_value == ((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Short_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,4);
	JVMLINE(48)
	{ jint $$ret = ((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Short_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,5);
	JVMLINE(52)
	{ jobject $$ret = mjava_lang_Short_toString__S_Ljava_lang_String_(((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Short_toString__SI_Ljava_lang_String_(jshort pv, jint pradix) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jshort,0);
	DEFARG(pradix,jint,1);

	JVMMETHOD(java_lang_Short_Class,6);
	JVMLINE(56)
	{ jobject $$ret = mjava_lang_Long_toString__JI_Ljava_lang_String_(((jlong)(LOCAL(pv,jshort))),LOCAL(pradix,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Short_toString__S_Ljava_lang_String_(jshort pv) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pv,jshort,0);

	JVMMETHOD(java_lang_Short_Class,7);
	JVMLINE(60)
	{ jobject $$ret = mjava_lang_Short_toString__SI_Ljava_lang_String_(LOCAL(pv,jshort),10); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_Short_byteValue___B(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,8);
	JVMLINE(64)
	{ jbyte $$ret = ((jbyte)(((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_Short_shortValue___S(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,9);
	JVMLINE(68)
	{ jshort $$ret = ((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Short_intValue___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,10);
	JVMLINE(72)
	{ jint $$ret = ((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_Short_longValue___J(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,11);
	JVMLINE(76)
	{ jlong $$ret = ((jlong)(((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_Short_floatValue___F(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,12);
	JVMLINE(80)
	{ jfloat $$ret = ((jfloat)(((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_Short_doubleValue___D(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Short_Class,13);
	JVMLINE(84)
	{ jdouble $$ret = ((jdouble)(((java_lang_Short*)(LOCAL(pthis,jobject)))->fjava_lang_Short_value)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Short_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_lang_Short_Class,14);
	JVMLINE(21)
	{ jint $$ret = mjava_lang_Short_compareTo__Ljava_lang_Short__I(LOCAL(pthis,jobject),JvmCheckCast(LOCAL(pp0,jobject),&java_lang_Short_Class)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Short__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Short_Class,15);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(24)
	fjava_lang_Short_TYPE=((java_lang_Class*)(&ArrOf_S_Class))->fjava_lang_Class_componentType;
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Short_Class;
JvmClass ArrOf_java_lang_Short_Class;
JvmClass ArrOf_ArrOf_java_lang_Short_Class;

jbool java_lang_Short_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Short_Class || klass == &java_lang_Comparable_Class || klass == &java_lang_Object_Class || klass == &java_lang_Number_Class || klass == &java_io_Serializable_Class;
}

extern jobject invoke_B(jobject,jobject,jobject);
extern jobject invoke_D(jobject,jobject,jobject);
extern jobject invoke_F(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_J(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_S(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_SIO(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_SO(jobject,jobject,jobject);
void JvmSetup_java_lang_Short() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Number();
	JvmSetup_java_lang_Comparable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Short_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Short_hashCode___I;
	_vTable[0] = &mjava_lang_Short_toString___Ljava_lang_String_;
	_vTable[6] = &mjava_lang_Short_byteValue___B;
	_vTable[3] = &mjava_lang_Short_shortValue___S;
	_vTable[7] = &mjava_lang_Short_intValue___I;
	_vTable[4] = &mjava_lang_Short_longValue___J;
	_vTable[5] = &mjava_lang_Short_floatValue___F;
	_vTable[8] = &mjava_lang_Short_doubleValue___D;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(2 * sizeof(void*));
	_iTable[1] = (void*)&mjava_lang_Short_compareTo__Ljava_lang_Object__I;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_lang_Short_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Short);
	cls->name = JvmMakeString(L"java.lang.Short",15);
	cls->superClass = &java_lang_Number_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Short_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Short.java",10);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_lang_Comparable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 16, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"<init>", 6), &java_lang_Short_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&S_Class}), &mjava_lang_Short__init___S_V, &invoke_SO 
#ifdef JVM_DEBUG
 , 31, 32, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=32, .endLine=32, .type=&S_Class},{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=32, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"valueOf", 7), &java_lang_Short_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&S_Class}), &mjava_lang_Short_valueOf__S_Ljava_lang_Short_, &invoke_SO 
#ifdef JVM_DEBUG
 , 36, 36, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=36, .endLine=36, .type=&S_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Short_Class}), &mjava_lang_Short_compareTo__Ljava_lang_Short__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 40, 40, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=40, .endLine=40, .type=&java_lang_Short_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=40, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Short_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 44, 44, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=44, .endLine=44, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=44, .endLine=44, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 48, 48, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=48, .endLine=48, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 52, 52, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=52, .endLine=52, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&S_Class,&I_Class}), &mjava_lang_Short_toString__SI_Ljava_lang_String_, &invoke_SIO 
#ifdef JVM_DEBUG
 , 56, 56, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=56, .endLine=56, .type=&S_Class},{.name=JvmMakeString(L"radix",5), .startLine=56, .endLine=56, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&S_Class}), &mjava_lang_Short_toString__S_Ljava_lang_String_, &invoke_SO 
#ifdef JVM_DEBUG
 , 60, 60, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"v",1), .startLine=60, .endLine=60, .type=&S_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"byteValue", 9), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_byteValue___B, &invoke_B 
#ifdef JVM_DEBUG
 , 64, 64, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=64, .endLine=64, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"shortValue", 10), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_shortValue___S, &invoke_S 
#ifdef JVM_DEBUG
 , 68, 68, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=68, .endLine=68, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"intValue", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_intValue___I, &invoke_I 
#ifdef JVM_DEBUG
 , 72, 72, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=72, .endLine=72, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"longValue", 9), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_longValue___J, &invoke_J 
#ifdef JVM_DEBUG
 , 76, 76, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=76, .endLine=76, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"floatValue", 10), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_floatValue___F, &invoke_F 
#ifdef JVM_DEBUG
 , 80, 80, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=80, .endLine=80, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"doubleValue", 11), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short_doubleValue___D, &invoke_D 
#ifdef JVM_DEBUG
 , 84, 84, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=84, .endLine=84, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"compareTo", 9), &I_Class, 65, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Short_compareTo__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 21, 21, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=21, .endLine=21, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=21, .endLine=21, .type=&java_lang_Short_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Short_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Short__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 24, 24, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_lang_Short_Class, JvmMakeString(L"value", 5), &S_Class, 18, (void*)offsetof(java_lang_Short,fjava_lang_Short_value))
	,JvmMakeField(&java_lang_Short_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Short_TYPE)
	,JvmMakeField(&java_lang_Short_Class, JvmMakeString(L"MIN_VALUE", 9), &S_Class, 25, &fjava_lang_Short_MIN_VALUE)
	,JvmMakeField(&java_lang_Short_Class, JvmMakeString(L"MAX_VALUE", 9), &S_Class, 25, &fjava_lang_Short_MAX_VALUE)
	});

	cls = &ArrOf_java_lang_Short_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Short",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Short_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Short_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Short",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Short_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
