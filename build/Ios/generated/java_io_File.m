#include "java_lang_StringBuilder.h"
#include "java_lang_NullPointerException.h"
#include "java_io_File.h"
extern jobject $literal45;
extern jobject $literal46;


jchar fjava_io_File_separatorChar;
jchar fjava_io_File_pathSeparatorChar;
jobject mjava_io_File__init___Ljava_lang_String__V(jobject pthis, jobject ppath) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ppath,jobject,1);

	JVMMETHOD(java_io_File_Class,0);
	JVMLINE(49)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(51)
	if(LOCAL(ppath,jobject) == jnull){
		JVMLINE(51)
		JvmThrow(mjava_lang_NullPointerException__init____V(JvmAllocObject(&java_lang_NullPointerException_Class)));
	}
	JVMLINE(53)
	((java_io_File*)(LOCAL(pthis,jobject)))->fjava_io_File_path=mjava_io_File_normalize__Ljava_lang_String__Ljava_lang_String_(LOCAL(ppath,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_File__init___Ljava_lang_String_Ljava_lang_String__V(jobject pthis, jobject pparent, jobject pchild) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pparent,jobject,1);
	DEFARG(pchild,jobject,2);

	JVMMETHOD(java_io_File_Class,1);
	JVMLINE(57)
	mjava_io_File__init___Ljava_lang_String__V(LOCAL(pthis,jobject),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),LOCAL(pparent,jobject)),$literal45),LOCAL(pchild,jobject))));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_File_stripSeparators__Ljava_lang_String__Ljava_lang_String_(jobject pp) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pp,jobject,0);

	JVMMETHOD(java_io_File_Class,2);
	JVMLINE(66)
	while((mjava_lang_String_length___I(LOCAL(pp,jobject)) > 1) && mjava_lang_String_endsWith__Ljava_lang_String__Z(LOCAL(pp,jobject),$literal45)){
		JVMLINE(66)
		LOCAL(pp,jobject)=mjava_lang_String_substring__II_Ljava_lang_String_(LOCAL(pp,jobject),0,mjava_lang_String_length___I(LOCAL(pp,jobject)) - 1);
	}
	JVMLINE(68)
	{ jobject $$ret = LOCAL(pp,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_File_normalize__Ljava_lang_String__Ljava_lang_String_(jobject ppath) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ppath,jobject,0);

	JVMMETHOD(java_io_File_Class,3);
	JVMLINE(79)
	{ jobject $$ret = mjava_io_File_stripSeparators__Ljava_lang_String__Ljava_lang_String_(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z($literal46,$literal45) ? mjava_lang_String_replace__CC_Ljava_lang_String_(LOCAL(ppath,jobject),47,92) : LOCAL(ppath,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_File_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_File_Class,4);
	JVMLINE(152)
	{ jobject $$ret = mjava_io_File_getPath___Ljava_lang_String_(LOCAL(pthis,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_File_getPath___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_File_Class,5);
	JVMLINE(156)
	{ jobject $$ret = ((java_io_File*)(LOCAL(pthis,jobject)))->fjava_io_File_path; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jlong mjava_io_File_length__Lcava_c_CharPtr__J(jobject ppath) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(ppath,jobject,0);
	DEFLOCAL(lexists,jbool,1);

	JVMMETHOD(java_io_File_Class,6);
	JVMLINE(196)
	struct stat buf;
	JVMLINE(197)
	LOCAL(lexists,jbool)=stat(LOCAL(ppath,jobject), &buf) == 0;
	JVMLINE(198)
	if(!(LOCAL(lexists,jbool))){
		{ jlong $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(199)
	{ jlong $$ret = buf.st_size; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_File__clinit____V() {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];

	JVMMETHOD(java_io_File_Class,7);
	static int _initialized = 0;
	if(_initialized) return;
	_initialized = 1;
	mjava_lang_String__clinit____V();
	JVMLINE(38)
	fjava_io_File_separatorChar=mjava_lang_String_charAt__I_C($literal45,0);
	JVMLINE(45)
	fjava_io_File_pathSeparatorChar=mjava_lang_String_charAt__I_C($literal45,0);
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_File_Class;
JvmClass ArrOf_java_io_File_Class;
JvmClass ArrOf_ArrOf_java_io_File_Class;

jbool java_io_File_isChildOf(JvmClass* klass) {
	return klass == &java_io_File_Class || klass == &java_io_Serializable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_OJ(jobject,jobject,jobject);
void JvmSetup_java_io_File() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_io_Serializable();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_io_File_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_io_File_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_File);
	cls->name = JvmMakeString(L"java.io.File",12);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_File_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"File.java",9);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_io_Serializable_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 8, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"<init>", 6), &java_io_File_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_File__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 49, 53, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"path",4), .startLine=51, .endLine=53, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=49, .endLine=53, .type=&java_io_File_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"<init>", 6), &java_io_File_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&java_lang_String_Class}), &mjava_io_File__init___Ljava_lang_String_Ljava_lang_String__V, &invoke_OOO 
#ifdef JVM_DEBUG
 , 57, 57, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"parent",6), .startLine=57, .endLine=57, .type=&java_lang_String_Class},{.name=JvmMakeString(L"child",5), .startLine=57, .endLine=57, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=57, .endLine=57, .type=&java_io_File_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"stripSeparators", 15), &java_lang_String_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_File_stripSeparators__Ljava_lang_String__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 66, 68, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p",1), .startLine=66, .endLine=68, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"normalize", 9), &java_lang_String_Class, 10, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_File_normalize__Ljava_lang_String__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 79, 79, 1, 0, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"path",4), .startLine=79, .endLine=79, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_File_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 152, 152, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=152, .endLine=152, .type=&java_io_File_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"getPath", 7), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_File_getPath___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 156, 156, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=156, .endLine=156, .type=&java_io_File_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"length", 6), &J_Class, 12, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&cava_c_CharPtr_Class}), &mjava_io_File_length__Lcava_c_CharPtr__J, &invoke_OJ 
#ifdef JVM_DEBUG
 , 196, 199, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"path",4), .startLine=197, .endLine=199, .type=&cava_c_CharPtr_Class},{.name=JvmMakeString(L"exists",6), .startLine=197, .endLine=199, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_File_Class, JvmMakeString(L"<clinit>", 8), &V_Class, 8, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_File__clinit____V, &invoke_V 
#ifdef JVM_DEBUG
 , 38, 45, 0, 0, (JvmLocalVariableInfo[]){}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 3, &(JvmField*[]){
	JvmMakeField(&java_io_File_Class, JvmMakeString(L"path", 4), &java_lang_String_Class, 18, (void*)offsetof(java_io_File,fjava_io_File_path))
	,JvmMakeField(&java_io_File_Class, JvmMakeString(L"separatorChar", 13), &C_Class, 25, &fjava_io_File_separatorChar)
	,JvmMakeField(&java_io_File_Class, JvmMakeString(L"pathSeparatorChar", 17), &C_Class, 25, &fjava_io_File_pathSeparatorChar)
	});

	cls = &ArrOf_java_io_File_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.File",13);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_File_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_File_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.File",13);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_File_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
