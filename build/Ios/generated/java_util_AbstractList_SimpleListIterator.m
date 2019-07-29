#include "java_util_NoSuchElementException.h"
#include "java_util_ConcurrentModificationException.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_lang_IllegalStateException.h"
#include "java_util_AbstractList_SimpleListIterator.h"
#include "java_util_AbstractCollection.h"


jobject mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList__V(jobject pthis, jobject pp0) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pp0,jobject,1);

	JVMMETHOD(java_util_AbstractList_SimpleListIterator_Class,0);
	JVMLINE(39)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0=LOCAL(pp0,jobject);
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	JVMLINE(40)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft=virtual_mjava_util_AbstractCollection_size___I(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0);
	JVMLINE(41)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_expectedModCount=((java_util_AbstractList*)(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0))->fjava_util_AbstractList_modCount;
	JVMLINE(42)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition=-1;
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_AbstractList_SimpleListIterator_hasNext___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractList_SimpleListIterator_Class,1);
	JVMLINE(45)
	{ jbool $$ret = ((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft > 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_SimpleListIterator_next___Ljava_lang_Object_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lindex,jint,1);
	DEFLOCAL(lresult,jobject,2);
	DEFLOCAL(le,jobject,3);

	JVMMETHOD(java_util_AbstractList_SimpleListIterator_Class,2);
	JVMLINE(50)
	if(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_expectedModCount != ((java_util_AbstractList*)(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0))->fjava_util_AbstractList_modCount){
		JVMLINE(50)
		JvmThrow(mjava_util_ConcurrentModificationException__init____V(JvmAllocObject(&java_util_ConcurrentModificationException_Class)));
	}
	JVMLINE(60)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(54)
			LOCAL(lindex,jint)=virtual_mjava_util_AbstractCollection_size___I(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0) - ((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft;
			JVMLINE(55)
			LOCAL(lresult,jobject)=virtual_mjava_util_AbstractList_get__I_Ljava_lang_Object_(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0,LOCAL(lindex,jint));
			JVMLINE(56)
			((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition=LOCAL(lindex,jint);
			JVMLINE(57)
			((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft=((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft - 1;
			JVMLINE(58)
			{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; thread->exceptionCount = exception0; return $$ret; };
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_IndexOutOfBoundsException_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(60)
			JvmThrow(mjava_util_NoSuchElementException__init____V(JvmAllocObject(&java_util_NoSuchElementException_Class)));
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

void mjava_util_AbstractList_SimpleListIterator_remove___V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(le,jobject,1);

	JVMMETHOD(java_util_AbstractList_SimpleListIterator_Class,3);
	JVMLINE(66)
	if(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition == -1){
		JVMLINE(66)
		JvmThrow(mjava_lang_IllegalStateException__init____V(JvmAllocObject(&java_lang_IllegalStateException_Class)));
	}
	JVMLINE(69)
	if(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_expectedModCount != ((java_util_AbstractList*)(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0))->fjava_util_AbstractList_modCount){
		JVMLINE(69)
		JvmThrow(mjava_util_ConcurrentModificationException__init____V(JvmAllocObject(&java_util_ConcurrentModificationException_Class)));
	}
	JVMLINE(78)
	/* try */
	jint exception0 = thread->exceptionCount++;
	thread->exceptions[exception0].framePtr = thread->framePtr;
	if(setjmp(thread->exceptions[exception0].jmp) == 0) {
		{
			JVMLINE(74)
			if(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition == (virtual_mjava_util_AbstractCollection_size___I(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0) - ((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft)){
				JVMLINE(74)
				((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft=((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_numLeft - 1;
			}
			JVMLINE(76)
			virtual_mjava_util_AbstractList_remove__I_Ljava_lang_Object_(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0,((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition);
		}
		thread->exceptionCount = exception0;
	} else {
		thread->exceptionCount = exception0;
		/* catch */
		if(JvmInstanceOf(thread->exception,&java_lang_IndexOutOfBoundsException_Class)){
			LOCAL(le,jobject)=thread->exception;
			JVMLINE(78)
			JvmThrow(mjava_util_ConcurrentModificationException__init____V(JvmAllocObject(&java_util_ConcurrentModificationException_Class)));
		}
		else{
			JvmThrow(thread->exception);
		}
	}
	JVMLINE(81)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_expectedModCount=((java_util_AbstractList*)(((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_this$0))->fjava_util_AbstractList_modCount;
	JVMLINE(82)
	((java_util_AbstractList_SimpleListIterator*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_SimpleListIterator_lastPosition=-1;
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList_Ljava_util_AbstractList$1__V(jobject pthis, jobject px0, jobject px1) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(px0,jobject,1);
	DEFARG(px1,jobject,2);

	JVMMETHOD(java_util_AbstractList_SimpleListIterator_Class,4);
	JVMLINE(39)
	mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList__V(LOCAL(pthis,jobject),LOCAL(px0,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_util_AbstractList_SimpleListIterator_Class;
JvmClass ArrOf_java_util_AbstractList_SimpleListIterator_Class;
JvmClass ArrOf_ArrOf_java_util_AbstractList_SimpleListIterator_Class;

jbool java_util_AbstractList_SimpleListIterator_isChildOf(JvmClass* klass) {
	return klass == &java_util_AbstractList_SimpleListIterator_Class || klass == &java_util_Iterator_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_V(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
void JvmSetup_java_util_AbstractList_SimpleListIterator() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_util_Iterator();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(18 * sizeof(void*));
	_iTable[16] = (void*)&mjava_util_AbstractList_SimpleListIterator_hasNext___Z;
	_iTable[17] = (void*)&mjava_util_AbstractList_SimpleListIterator_next___Ljava_lang_Object_;
	_iTable[15] = (void*)&mjava_util_AbstractList_SimpleListIterator_remove___V;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_util_AbstractList_SimpleListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_AbstractList_SimpleListIterator);
	cls->name = JvmMakeString(L"java.util.AbstractList$SimpleListIterator",41);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_AbstractList_SimpleListIterator_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"AbstractList.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_util_Iterator_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 5, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"<init>", 6), &java_util_AbstractList_SimpleListIterator_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_util_AbstractList_Class}), &mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList__V, &invoke_OO 
#ifdef JVM_DEBUG
 , 39, 42, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"p0",2), .startLine=39, .endLine=42, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"this",4), .startLine=39, .endLine=42, .type=&java_util_AbstractList_SimpleListIterator_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"hasNext", 7), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_SimpleListIterator_hasNext___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 45, 45, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=45, .type=&java_util_AbstractList_SimpleListIterator_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"next", 4), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_SimpleListIterator_next___Ljava_lang_Object_, &invoke_O 
#ifdef JVM_DEBUG
 , 50, 60, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=50, .endLine=60, .type=&java_util_AbstractList_SimpleListIterator_Class},{.name=JvmMakeString(L"index",5), .startLine=54, .endLine=60, .type=&I_Class},{.name=JvmMakeString(L"result",6), .startLine=55, .endLine=60, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"e",1), .startLine=58, .endLine=60, .type=&java_lang_IndexOutOfBoundsException_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"remove", 6), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_SimpleListIterator_remove___V, &invoke_V 
#ifdef JVM_DEBUG
 , 66, 82, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=66, .endLine=82, .type=&java_util_AbstractList_SimpleListIterator_Class},{.name=JvmMakeString(L"e",1), .startLine=76, .endLine=82, .type=&java_lang_IndexOutOfBoundsException_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"<init>", 6), &java_util_AbstractList_SimpleListIterator_Class, 0, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_util_AbstractList_Class,&java_util_AbstractList_1_Class}), &mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList_Ljava_util_AbstractList$1__V, &invoke_OOO 
#ifdef JVM_DEBUG
 , 39, 39, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"x0",2), .startLine=39, .endLine=39, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"x1",2), .startLine=0, .endLine=39, .type=&java_util_AbstractList_1_Class},{.name=JvmMakeString(L"this",4), .startLine=39, .endLine=39, .type=&java_util_AbstractList_SimpleListIterator_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"numLeft", 7), &I_Class, 0, (void*)offsetof(java_util_AbstractList_SimpleListIterator,fjava_util_AbstractList_SimpleListIterator_numLeft))
	,JvmMakeField(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"expectedModCount", 16), &I_Class, 0, (void*)offsetof(java_util_AbstractList_SimpleListIterator,fjava_util_AbstractList_SimpleListIterator_expectedModCount))
	,JvmMakeField(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"lastPosition", 12), &I_Class, 0, (void*)offsetof(java_util_AbstractList_SimpleListIterator,fjava_util_AbstractList_SimpleListIterator_lastPosition))
	,JvmMakeField(&java_util_AbstractList_SimpleListIterator_Class, JvmMakeString(L"this$0", 6), &java_util_AbstractList_Class, 16, (void*)offsetof(java_util_AbstractList_SimpleListIterator,fjava_util_AbstractList_SimpleListIterator_this$0))
	});

	cls = &ArrOf_java_util_AbstractList_SimpleListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.AbstractList$SimpleListIterator",42);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_AbstractList_SimpleListIterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_AbstractList_SimpleListIterator_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.AbstractList$SimpleListIterator",42);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_AbstractList_SimpleListIterator_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
