#include "java_io_FileNotFoundException.h"
#include "cava_c_CharPtr.h"
#include "java_io_FileInputStream.h"


jobject mjava_io_FileInputStream__init___Ljava_lang_String__V(jobject pthis, jobject ppath) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(ppath,jobject,1);
	DEFLOCAL(lascii,jobject,2);

	JVMMETHOD(java_io_FileInputStream_Class,0);
	JVMLINE(31)
	mjava_io_InputStream__init____V(LOCAL(pthis,jobject));
	JVMLINE(32)
	char buf[513];;
	JVMLINE(33)
	LOCAL(lascii,jobject)=mcava_c_CharPtr_asciiZ__Ljava_lang_String_Ljava_lang_Object_I_Lcava_c_CharPtr_(LOCAL(ppath,jobject),&buf,512);
	JVMLINE(34)
	((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_fd=fopen(LOCAL(lascii,jobject),"rb");
	JVMLINE(35)
	if(((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_fd == jnull){
		JvmThrow(mjava_io_FileNotFoundException__init___Ljava_lang_String__V(JvmAllocObject(&java_io_FileNotFoundException_Class),LOCAL(ppath,jobject)));
	}
	JVMLINE(36)
	((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_remaining=((jint)(mjava_io_File_length__Lcava_c_CharPtr__J(LOCAL(lascii,jobject))));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_io_FileInputStream__init___Ljava_io_File__V(jobject pthis, jobject pfile) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pfile,jobject,1);

	JVMMETHOD(java_io_FileInputStream_Class,1);
	JVMLINE(40)
	mjava_io_FileInputStream__init___Ljava_lang_String__V(LOCAL(pthis,jobject),mjava_io_File_getPath___Ljava_lang_String_(LOCAL(pfile,jobject)));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_io_FileInputStream_close___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_io_FileInputStream_Class,2);
	JVMLINE(83)
	if(((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_fd != jnull){
		JVMLINE(82)
		fclose((FILE*)((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_fd);
		JVMLINE(83)
		((java_io_FileInputStream*)(LOCAL(pthis,jobject)))->fjava_io_FileInputStream_fd=jnull;
	}
	thread->framePtr = entryFramePtr;
}

JvmClass java_io_FileInputStream_Class;
JvmClass ArrOf_java_io_FileInputStream_Class;
JvmClass ArrOf_ArrOf_java_io_FileInputStream_Class;

jbool java_io_FileInputStream_isChildOf(JvmClass* klass) {
	return klass == &java_io_FileInputStream_Class || klass == &java_io_InputStream_Class || klass == &java_io_Closeable_Class || klass == &java_lang_AutoCloseable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
void JvmSetup_java_io_FileInputStream() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_io_InputStream();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[18] = &mjava_io_FileInputStream_close___V;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(1 * sizeof(void*));
	_iTable[0] = (void*)&mjava_io_FileInputStream_close___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_io_FileInputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_io_FileInputStream);
	cls->name = JvmMakeString(L"java.io.FileInputStream",23);
	cls->superClass = &java_io_InputStream_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_io_FileInputStream_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"FileInputStream.java",20);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&java_io_FileInputStream_Class, JvmMakeString(L"<init>", 6), &java_io_FileInputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_io_FileInputStream__init___Ljava_lang_String__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 31, 36, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"path",4), .startLine=33, .endLine=36, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=31, .endLine=36, .type=&java_io_FileInputStream_Class},{.name=JvmMakeString(L"ascii",5), .startLine=33, .endLine=36, .type=&cava_c_CharPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FileInputStream_Class, JvmMakeString(L"<init>", 6), &java_io_FileInputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_io_File_Class}), &mjava_io_FileInputStream__init___Ljava_io_File__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 40, 40, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"file",4), .startLine=40, .endLine=40, .type=&java_io_File_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=40, .type=&java_io_FileInputStream_Class}}
#endif
 ),
	JvmMakeMethod(&java_io_FileInputStream_Class, JvmMakeString(L"close", 5), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_io_FileInputStream_close___V, &invoke_V 
#ifdef JVM_DEBUG
 , 82, 83, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=82, .endLine=83, .type=&java_io_FileInputStream_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_io_FileInputStream_Class, JvmMakeString(L"remaining", 9), &I_Class, 2, (void*)offsetof(java_io_FileInputStream,fjava_io_FileInputStream_remaining))
	});

	cls = &ArrOf_java_io_FileInputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.io.FileInputStream",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_io_FileInputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_io_FileInputStream_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.io.FileInputStream",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_io_FileInputStream_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
