#include "java_lang_StringBuilder.h"
#include "java_lang_NullPointerException.h"
#include "java_lang_StackTraceElement.h"
extern jobject $literal48;


jobject mjava_lang_StackTraceElement__init___Ljava_lang_String_ILjava_lang_String_Ljava_lang_String__V(jobject pthis, jobject pfileName, jint plineNumber, jobject pclassName, jobject pmethodName) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pfileName,jobject,1);
	DEFARG(plineNumber,jint,2);
	DEFARG(pclassName,jobject,3);
	DEFARG(pmethodName,jobject,4);

	JVMMETHOD(java_lang_StackTraceElement_Class,0);
	JVMLINE(31)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_fileName=LOCAL(pfileName,jobject);
	JVMLINE(33)
	((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber=LOCAL(plineNumber,jint);
	JVMLINE(34)
	((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass=LOCAL(pclassName,jobject);
	JVMLINE(35)
	((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName=LOCAL(pmethodName,jobject);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StackTraceElement__init___Ljava_lang_String_Ljava_lang_String_Ljava_lang_String_I_V(jobject pthis, jobject pclassName, jobject pmethodName, jobject pfileName, jint plineNumber) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pclassName,jobject,1);
	DEFARG(pmethodName,jobject,2);
	DEFARG(pfileName,jobject,3);
	DEFARG(plineNumber,jint,4);

	JVMMETHOD(java_lang_StackTraceElement_Class,1);
	JVMLINE(40)
	mjava_lang_StackTraceElement__init___Ljava_lang_String_ILjava_lang_String_Ljava_lang_String__V(LOCAL(pthis,jobject),LOCAL(pfileName,jobject),LOCAL(plineNumber,jint),LOCAL(pclassName,jobject),LOCAL(pmethodName,jobject));
	JVMLINE(43)
	if((LOCAL(pclassName,jobject) == jnull) || (LOCAL(pmethodName,jobject) == jnull)){
		JVMLINE(43)
		JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),$literal48));
	}
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StackTraceElement_getFileName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,2);
	JVMLINE(48)
	{ jobject $$ret = ((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_fileName; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_StackTraceElement_getLineNumber___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,3);
	JVMLINE(52)
	{ jint $$ret = ((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StackTraceElement_getClassName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,4);
	JVMLINE(56)
	{ jobject $$ret = ((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StackTraceElement_getMethodName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,5);
	JVMLINE(60)
	{ jobject $$ret = ((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_StackTraceElement_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lsb,jobject,1);

	JVMMETHOD(java_lang_StackTraceElement_Class,6);
	JVMLINE(64)
	LOCAL(lsb,jobject)=mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class));
	JVMLINE(68)
	if(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass != jnull){
		JVMLINE(66)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lsb,jobject),((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass);
		JVMLINE(68)
		if(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName != jnull){
			JVMLINE(68)
			mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lsb,jobject),46);
		}
	}
	JVMLINE(72)
	if(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName != jnull){
		JVMLINE(72)
		mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(LOCAL(lsb,jobject),((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName);
	}
	JVMLINE(76)
	if(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber > 0){
		JVMLINE(76)
		mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(LOCAL(lsb,jobject),40),((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber),41);
	}
	JVMLINE(78)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lsb,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_StackTraceElement_equals__Ljava_lang_Object__Z(jobject pthis, jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(po,jobject,1);
	DEFLOCAL(le,jobject,2);

	JVMMETHOD(java_lang_StackTraceElement_Class,7);
	JVMLINE(83)
	if(!(JvmInstanceOf(LOCAL(po,jobject),&java_lang_StackTraceElement_Class))){
		JVMLINE(83)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(85)
	LOCAL(le,jobject)=JvmCheckCast(LOCAL(po,jobject),&java_lang_StackTraceElement_Class);
	JVMLINE(86)
	{ jbool $$ret = ((mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_fileName,((java_lang_StackTraceElement*)(LOCAL(le,jobject)))->fjava_lang_StackTraceElement_fileName) && (((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber == ((java_lang_StackTraceElement*)(LOCAL(le,jobject)))->fjava_lang_StackTraceElement_lineNumber)) && mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass,((java_lang_StackTraceElement*)(LOCAL(le,jobject)))->fjava_lang_StackTraceElement_declaringClass)) && mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName,((java_lang_StackTraceElement*)(LOCAL(le,jobject)))->fjava_lang_StackTraceElement_methodName); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_StackTraceElement_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,8);
	JVMLINE(93)
	{ jint $$ret = ((mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_fileName) ^ ((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_lineNumber) ^ mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_declaringClass)) ^ mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I(((java_lang_StackTraceElement*)(LOCAL(pthis,jobject)))->fjava_lang_StackTraceElement_methodName); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z(jobject po1, jobject po2) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(po1,jobject,0);
	DEFARG(po2,jobject,1);

	JVMMETHOD(java_lang_StackTraceElement_Class,9);
	JVMLINE(98)
	{ jbool $$ret = LOCAL(po1,jobject) == jnull ? LOCAL(po2,jobject) == jnull : virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(po1,jobject),LOCAL(po2,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I(jobject po) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(po,jobject,0);

	JVMMETHOD(java_lang_StackTraceElement_Class,10);
	JVMLINE(102)
	{ jint $$ret = LOCAL(po,jobject) == jnull ? 0 : virtual_mjava_lang_Object_hashCode___I(LOCAL(po,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_StackTraceElement_Class;
JvmClass ArrOf_java_lang_StackTraceElement_Class;
JvmClass ArrOf_ArrOf_java_lang_StackTraceElement_Class;

jbool java_lang_StackTraceElement_isChildOf(JvmClass* klass) {
	return klass == &java_lang_StackTraceElement_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OOOIO(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_OIOOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_OOZ(jobject,jobject,jobject);
void JvmSetup_java_lang_StackTraceElement() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Serializable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_StackTraceElement_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_StackTraceElement_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_StackTraceElement_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_StackTraceElement_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_StackTraceElement);
	cls->name = JvmMakeString(L"java.lang.StackTraceElement",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_StackTraceElement_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"StackTraceElement.java",22);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Serializable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 11, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"<init>", 6), &java_lang_StackTraceElement_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&java_lang_String_Class,&I_Class,&java_lang_String_Class,&java_lang_String_Class}), &mjava_lang_StackTraceElement__init___Ljava_lang_String_ILjava_lang_String_Ljava_lang_String__V, &invoke_OIOOO 
#ifdef JVM_DEBUG
 , 31, 35, 4, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"fileName",8), .startLine=32, .endLine=35, .type=&java_lang_String_Class},{.name=JvmMakeString(L"lineNumber",10), .startLine=33, .endLine=35, .type=&I_Class},{.name=JvmMakeString(L"className",9), .startLine=34, .endLine=35, .type=&java_lang_String_Class},{.name=JvmMakeString(L"methodName",10), .startLine=35, .endLine=35, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=35, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"<init>", 6), &java_lang_StackTraceElement_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 4, &(JvmClass*[]){&java_lang_String_Class,&java_lang_String_Class,&java_lang_String_Class,&I_Class}), &mjava_lang_StackTraceElement__init___Ljava_lang_String_Ljava_lang_String_Ljava_lang_String_I_V, &invoke_OOOIO 
#ifdef JVM_DEBUG
 , 40, 43, 4, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"className",9), .startLine=40, .endLine=43, .type=&java_lang_String_Class},{.name=JvmMakeString(L"methodName",10), .startLine=40, .endLine=43, .type=&java_lang_String_Class},{.name=JvmMakeString(L"fileName",8), .startLine=40, .endLine=43, .type=&java_lang_String_Class},{.name=JvmMakeString(L"lineNumber",10), .startLine=40, .endLine=43, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=43, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"getFileName", 11), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_getFileName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 48, 48, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=48, .endLine=48, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"getLineNumber", 13), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_getLineNumber___I, &invoke_I 
#ifdef JVM_DEBUG
 , 52, 52, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=52, .endLine=52, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"getClassName", 12), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_getClassName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 56, 56, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=56, .endLine=56, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"getMethodName", 13), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_getMethodName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 60, 60, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=60, .endLine=60, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 64, 78, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=78, .type=&java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"sb",2), .startLine=64, .endLine=78, .type=&java_lang_StringBuilder_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_StackTraceElement_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 83, 86, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=83, .endLine=86, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=86, .endLine=86, .type=&java_lang_StackTraceElement_Class},{.name=JvmMakeString(L"e",1), .startLine=85, .endLine=86, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_StackTraceElement_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 93, 93, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=93, .endLine=93, .type=&java_lang_StackTraceElement_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"equals", 6), &Z_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&java_lang_Object_Class}), &mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z, &invoke_OOZ 
#ifdef JVM_DEBUG
 , 98, 98, 2, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o1",2), .startLine=98, .endLine=98, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"o2",2), .startLine=98, .endLine=98, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_StackTraceElement_Class, JvmMakeString(L"hashCode", 8), &I_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 102, 102, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"o",1), .startLine=102, .endLine=102, .type=&java_lang_Object_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_lang_StackTraceElement_Class, JvmMakeString(L"fileName", 8), &java_lang_String_Class, 18, (void*)offsetof(java_lang_StackTraceElement,fjava_lang_StackTraceElement_fileName))
	,JvmMakeField(&java_lang_StackTraceElement_Class, JvmMakeString(L"lineNumber", 10), &I_Class, 18, (void*)offsetof(java_lang_StackTraceElement,fjava_lang_StackTraceElement_lineNumber))
	,JvmMakeField(&java_lang_StackTraceElement_Class, JvmMakeString(L"declaringClass", 14), &java_lang_String_Class, 18, (void*)offsetof(java_lang_StackTraceElement,fjava_lang_StackTraceElement_declaringClass))
	,JvmMakeField(&java_lang_StackTraceElement_Class, JvmMakeString(L"methodName", 10), &java_lang_String_Class, 18, (void*)offsetof(java_lang_StackTraceElement,fjava_lang_StackTraceElement_methodName))
	});

	cls = &ArrOf_java_lang_StackTraceElement_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.StackTraceElement",28);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_StackTraceElement_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_StackTraceElement_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.StackTraceElement",28);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_StackTraceElement_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
