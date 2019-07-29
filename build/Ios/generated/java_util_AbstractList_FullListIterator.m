#include "java_util_AbstractList_FullListIterator.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_util_AbstractCollection.h"


jobject mjava_util_AbstractList_FullListIterator__init___Ljava_util_AbstractList_I_V(jobject pthis, jobject pp0, jint pstart) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);
	DEFARG(pstart,jint,2);

	JVMMETHOD(java_util_AbstractList_FullListIterator_Class,0);
	JVMLINE(88)
	((java_util_AbstractList_FullListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_FullListIterator_this$0=LOCAL(pp0,jobject);
	mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList_Ljava_util_AbstractList$1__V(LOCAL(pthis,jobject),LOCAL(pp0,jobject),jnull);
	JVMLINE(90)
	if((LOCAL(pstart,jint) < 0) || (LOCAL(pstart,jint) > ((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft)){
		JVMLINE(90)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init____V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class)));
	}
	JVMLINE(92)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft=((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft - LOCAL(pstart,jint);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_util_AbstractList_FullListIterator_previousIndex___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractList_FullListIterator_Class,1);
	JVMLINE(134)
	{ jint $$ret = (virtual_mjava_util_AbstractCollection_size___I(((java_util_AbstractList_FullListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_FullListIterator_this$0) - ((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft) - 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_util_AbstractList_FullListIterator_Class;
JvmClass ArrOf_java_util_AbstractList_FullListIterator_Class;
JvmClass ArrOf_ArrOf_java_util_AbstractList_FullListIterator_Class;

jbool java_util_AbstractList_FullListIterator_isChildOf(JvmClass* klass) {
	return klass == &java_util_AbstractList_FullListIterator_Class || klass == &java_util_ListIterator_Class || klass == &java_util_Iterator_Class || klass == &java_lang_Object_Class || klass == &java_util_AbstractList_SimpleListIterator_Class;
}

extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OIO(jobject,jobject,jobject);
void JvmSetup_java_util_AbstractList_FullListIterator() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_util_AbstractList_SimpleListIterator();
	JvmSetup_java_util_ListIterator();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(34 * sizeof(void*));
	_iTable[33] = (void*)&mjava_util_AbstractList_FullListIterator_previousIndex___I;
	_iTable[16] = (void*)&mjava_util_AbstractList_SimpleListIterator_hasNext___Z;
	_iTable[17] = (void*)&mjava_util_AbstractList_SimpleListIterator_next___Ljava_lang_Object_;
	_iTable[15] = (void*)&mjava_util_AbstractList_SimpleListIterator_remove___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_util_AbstractList_FullListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_AbstractList_FullListIterator);
	cls->name = JvmMakeString(L"java.util.AbstractList$FullListIterator",39);
	cls->superClass = &java_util_AbstractList_SimpleListIterator_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_AbstractList_FullListIterator_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"AbstractList.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_util_ListIterator_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 2, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_AbstractList_FullListIterator_Class, JvmMakeString(L"<init>", 6), &java_util_AbstractList_FullListIterator_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_util_AbstractList_Class,&I_Class}), &mjava_util_AbstractList_FullListIterator__init___Ljava_util_AbstractList_I_V, &invoke_OIO 
#ifdef JVM_DEBUG
 , 88, 92, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=88, .endLine=92, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"start",5), .startLine=90, .endLine=92, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=88, .endLine=92, .type=&java_util_AbstractList_FullListIterator_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_FullListIterator_Class, JvmMakeString(L"previousIndex", 13), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_FullListIterator_previousIndex___I, &invoke_I 
#ifdef JVM_DEBUG
 , 134, 134, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=134, .endLine=134, .type=&java_util_AbstractList_FullListIterator_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_util_AbstractList_FullListIterator_Class, JvmMakeString(L"this$0", 6), &java_util_AbstractList_Class, 16, (void*)offsetof(java_util_AbstractList_FullListIterator,fjava_util_AbstractList_FullListIterator_this$0))
	});

	cls = &ArrOf_java_util_AbstractList_FullListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.AbstractList$FullListIterator",40);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_AbstractList_FullListIterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_AbstractList_FullListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.AbstractList$FullListIterator",40);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_AbstractList_FullListIterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
