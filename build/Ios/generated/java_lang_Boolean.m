#include "java_lang_Boolean.h"
extern jobject $literal5;
extern jobject $literal4;


jobject fjava_lang_Boolean_TYPE;
jobject mjava_lang_Boolean__init___Z_V(jobject pthis, jbool pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jbool,1);

	JVMMETHOD(java_lang_Boolean_Class,0);
	JVMLINE(45)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(46)
	((java_lang_Boolean*)(LOCAL(pthis,jobject)))->fjava_lang_Boolean_value=LOCAL(pvalue,jbool);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Boolean_booleanValue___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Boolean_Class,1);
	JVMLINE(53)
	{ jbool $$ret = ((java_lang_Boolean*)(LOCAL(pthis,jobject)))->fjava_lang_Boolean_value; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Boolean_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_Boolean_Class,2);
	JVMLINE(60)
	{ jbool $$ret = ((LOCAL(pobj,jobject) != jnull) && (mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pobj,jobject)) == mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pthis,jobject)))) && (((java_lang_Boolean*)(JvmCheckCast(LOCAL(pobj,jobject),&java_lang_Boolean_Class)))->fjava_lang_Boolean_value == ((java_lang_Boolean*)(LOCAL(pthis,jobject)))->fjava_lang_Boolean_value); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Boolean_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Boolean_Class,3);
	JVMLINE(67)
	{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Boolean_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Boolean_Class,4);
	JVMLINE(75)
	if(((java_lang_Boolean*)(LOCAL(pthis,jobject)))->fjava_lang_Boolean_value){
		JVMLINE(75)
		{ jobject $$ret = $literal4; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(77)
	{ jobject $$ret = $literal5; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(jbool pb) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pb,jbool,0);

	JVMMETHOD(java_lang_Boolean_Class,5);
	JVMLINE(86)
	{ jobject $$ret = LOCAL(pb,jbool) ? JVMGLOBALS[3] : JVMGLOBALS[2]; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Boolean_valueOf__Ljava_lang_String__Ljava_lang_Boolean_(jobject pb) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pb,jobject,0);

	JVMMETHOD(java_lang_Boolean_Class,6);
	JVMLINE(90)
	{ jobject $$ret = mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(mjava_lang_Boolean_parseBoolean__Ljava_lang_String__Z(LOCAL(pb,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Boolean_parseBoolean__Ljava_lang_String__Z(jobject ps) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ps,jobject,0);

	JVMMETHOD(java_lang_Boolean_Class,7);
	JVMLINE(94)
	{ jbool $$ret = (LOCAL(ps,jobject) != jnull) && mjava_lang_String_equalsIgnoreCase__Ljava_lang_String__Z(LOCAL(ps,jobject),$literal4); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Boolean_compareTo__Ljava_lang_Boolean__I(jobject pthis, jobject pb2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pb2,jobject,1);

	JVMMETHOD(java_lang_Boolean_Class,8);
	JVMLINE(99)
	if(((java_lang_Boolean*)(LOCAL(pb2,jobject)))->fjava_lang_Boolean_value == ((java_lang_Boolean*)(LOCAL(pthis,jobject)))->fjava_lang_Boolean_value){
		JVMLINE(99)
		{ jint $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(102)
	if(((java_lang_Boolean*)(LOCAL(pb2,jobject)))->fjava_lang_Boolean_value){
		JVMLINE(102)
		{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(104)
	{ jint $$ret = 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_Boolean__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_lang_Boolean_Class,9);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	JVMLINE(30)
	JVMGLOBALS[2]=mjava_lang_Boolean__init___Z_V(JvmAllocObject(&java_lang_Boolean_Class),jfalse);
	JVMLINE(35)
	JVMGLOBALS[3]=mjava_lang_Boolean__init___Z_V(JvmAllocObject(&java_lang_Boolean_Class),jtrue);
	JVMLINE(37)
	fjava_lang_Boolean_TYPE=((java_lang_Class*)(&ArrOf_Z_Class))->fjava_lang_Class_componentType;
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Boolean_Class;
JvmClass ArrOf_java_lang_Boolean_Class;
JvmClass ArrOf_ArrOf_java_lang_Boolean_Class;

jbool java_lang_Boolean_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Boolean_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_ZO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_java_lang_Boolean() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Boolean_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Boolean_hashCode___I;
	_vTable[0] = &mjava_lang_Boolean_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Boolean_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Boolean);
	cls->name = JvmMakeString(L"java.lang.Boolean",17);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Boolean_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Boolean.java",12);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 10, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"<init>", 6), &java_lang_Boolean_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mjava_lang_Boolean__init___Z_V, &invoke_ZO 
#ifdef JVM_DEBUG
 , 45, 46, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=46, .endLine=46, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=46, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"booleanValue", 12), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Boolean_booleanValue___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 53, 53, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=53, .endLine=53, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Boolean_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 60, 60, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=60, .endLine=60, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=60, .endLine=60, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Boolean_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 67, 67, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=67, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Boolean_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 75, 77, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=75, .endLine=77, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"valueOf", 7), &java_lang_Boolean_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_, &invoke_ZO 
#ifdef JVM_DEBUG
 , 86, 86, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"b",1), .startLine=86, .endLine=86, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"valueOf", 7), &java_lang_Boolean_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Boolean_valueOf__Ljava_lang_String__Ljava_lang_Boolean_, &invoke_OO 
#ifdef JVM_DEBUG
 , 90, 90, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"b",1), .startLine=90, .endLine=90, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"parseBoolean", 12), &Z_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Boolean_parseBoolean__Ljava_lang_String__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 94, 94, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"s",1), .startLine=94, .endLine=94, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"compareTo", 9), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Boolean_Class}), &mjava_lang_Boolean_compareTo__Ljava_lang_Boolean__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 99, 104, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"b2",2), .startLine=99, .endLine=104, .type=&java_lang_Boolean_Class},{.name=JvmMakeString(L"this",4), .startLine=99, .endLine=104, .type=&java_lang_Boolean_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Boolean_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Boolean__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 30, 37, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_lang_Boolean_Class, JvmMakeString(L"value", 5), &Z_Class, 2, (void*)offsetof(java_lang_Boolean,fjava_lang_Boolean_value))
	,JvmMakeField(&java_lang_Boolean_Class, JvmMakeString(L"FALSE", 5), &java_lang_Boolean_Class, 25, &JVMGLOBALS[2])
	,JvmMakeField(&java_lang_Boolean_Class, JvmMakeString(L"TRUE", 4), &java_lang_Boolean_Class, 25, &JVMGLOBALS[3])
	,JvmMakeField(&java_lang_Boolean_Class, JvmMakeString(L"TYPE", 4), &java_lang_Class_Class, 25, &fjava_lang_Boolean_TYPE)
	});

	cls = &ArrOf_java_lang_Boolean_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Boolean",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Boolean_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Boolean_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Boolean",18);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Boolean_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
