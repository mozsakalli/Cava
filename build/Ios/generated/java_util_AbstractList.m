#include "java_util_AbstractList_FullListIterator.h"
#include "java_lang_UnsupportedOperationException.h"
#include "java_util_AbstractList_SimpleListIterator.h"
#include "java_util_AbstractList.h"


jobject mjava_util_AbstractList__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractList_Class,0);
	JVMLINE(376)
	mjava_util_AbstractCollection__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_util_AbstractList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);
	DEFARG(pobject,jobject,2);

	JVMMETHOD(java_util_AbstractList_Class,1);
	JVMLINE(404)
	JvmThrow(mjava_lang_UnsupportedOperationException__init____V(JvmAllocObject(&java_lang_UnsupportedOperationException_Class)));
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_AbstractList_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_util_AbstractList_Class,2);
	JVMLINE(425)
	virtual_mjava_util_AbstractList_add__ILjava_lang_Object__V(LOCAL(pthis,jobject),virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)),LOCAL(pobject,jobject));
	JVMLINE(426)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_AbstractList_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);
	DEFLOCAL(llist,jobject,2);
	DEFLOCAL(lit1,jobject,3);
	DEFLOCAL(lit2,jobject,4);
	DEFLOCAL(le1,jobject,5);
	DEFLOCAL(le2,jobject,6);

	JVMMETHOD(java_util_AbstractList_Class,3);
	JVMLINE(483)
	if(LOCAL(pthis,jobject) == LOCAL(pobject,jobject)){
		JVMLINE(483)
		{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(500)
	if(!(JvmInstanceOf(LOCAL(pobject,jobject),&java_util_List_Class))){
		JVMLINE(500)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(486)
	LOCAL(llist,jobject)=JvmCheckCast(LOCAL(pobject,jobject),&java_util_List_Class);
	JVMLINE(488)
	if(interface_mjava_util_List_size___I(LOCAL(llist,jobject)) != virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject))){
		JVMLINE(488)
		{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(491)
	LOCAL(lit1,jobject)=virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(LOCAL(pthis,jobject));
	LOCAL(lit2,jobject)=interface_mjava_util_List_iterator___Ljava_util_Iterator_(LOCAL(llist,jobject));
	while(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit1,jobject))){
		JVMLINE(493)
		LOCAL(le1,jobject)=interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit1,jobject));
		LOCAL(le2,jobject)=interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit2,jobject));
		JVMLINE(491)
		if(LOCAL(le1,jobject) == jnull){
			if(LOCAL(le2,jobject) == jnull){
				continue;
			}
			JVMLINE(491)
			{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
		}
		else{
			if(!(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(le1,jobject),LOCAL(le2,jobject)))){
				JVMLINE(491)
				{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
			}
			continue;
		}
	}
	JVMLINE(498)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_util_AbstractList_hashCode___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lresult,jint,1);
	DEFLOCAL(lit,jobject,2);
	DEFLOCAL(lobject,jobject,3);

	JVMMETHOD(java_util_AbstractList_Class,4);
	JVMLINE(524)
	LOCAL(lresult,jint)=1;
	JVMLINE(525)
	LOCAL(lit,jobject)=virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(LOCAL(pthis,jobject));
	JVMLINE(528)
	while(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit,jobject))){
		JVMLINE(527)
		LOCAL(lobject,jobject)=interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit,jobject));
		JVMLINE(528)
		LOCAL(lresult,jint)=(31 * LOCAL(lresult,jint)) + (LOCAL(lobject,jobject) == jnull ? 0 : virtual_mjava_lang_Object_hashCode___I(LOCAL(lobject,jobject)));
	}
	JVMLINE(530)
	{ jint $$ret = LOCAL(lresult,jint); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_util_AbstractList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);
	DEFLOCAL(lit,jobject,2);

	JVMMETHOD(java_util_AbstractList_Class,5);
	JVMLINE(543)
	LOCAL(lit,jobject)=mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_(LOCAL(pthis,jobject));
	JVMLINE(553)
	if(LOCAL(pobject,jobject) != jnull){
		JVMLINE(547)
		while(interface_mjava_util_ListIterator_hasNext___Z(LOCAL(lit,jobject))){
			JVMLINE(547)
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pobject,jobject),interface_mjava_util_ListIterator_next___Ljava_lang_Object_(LOCAL(lit,jobject)))){
				JVMLINE(547)
				{ jint $$ret = interface_mjava_util_ListIterator_previousIndex___I(LOCAL(lit,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
	}
	else{
		JVMLINE(553)
		while(interface_mjava_util_ListIterator_hasNext___Z(LOCAL(lit,jobject))){
			JVMLINE(553)
			if(interface_mjava_util_ListIterator_next___Ljava_lang_Object_(LOCAL(lit,jobject)) == jnull){
				JVMLINE(553)
				{ jint $$ret = interface_mjava_util_ListIterator_previousIndex___I(LOCAL(lit,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
	}
	JVMLINE(557)
	{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_iterator___Ljava_util_Iterator_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractList_Class,6);
	JVMLINE(569)
	{ jobject $$ret = mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList_Ljava_util_AbstractList$1__V(JvmAllocObject(&java_util_AbstractList_SimpleListIterator_Class),LOCAL(pthis,jobject),jnull); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractList_Class,7);
	JVMLINE(607)
	{ jobject $$ret = mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_(LOCAL(pthis,jobject),0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_(jobject pthis, jint plocation) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);

	JVMMETHOD(java_util_AbstractList_Class,8);
	JVMLINE(623)
	{ jobject $$ret = mjava_util_AbstractList_FullListIterator__init___Ljava_util_AbstractList_I_V(JvmAllocObject(&java_util_AbstractList_FullListIterator_Class),LOCAL(pthis,jobject),LOCAL(plocation,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);

	JVMMETHOD(java_util_AbstractList_Class,9);
	JVMLINE(638)
	JvmThrow(mjava_lang_UnsupportedOperationException__init____V(JvmAllocObject(&java_lang_UnsupportedOperationException_Class)));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_util_AbstractList_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcontents,jobject,1);
	DEFLOCAL(larr,jobject,2);
	DEFLOCAL(liter,jint,3);

	JVMMETHOD(java_util_AbstractList_Class,10);
	JVMLINE(774)
	LOCAL(larr,jobject)=LOCAL(pcontents,jobject);
	JVMLINE(776)
	if(virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)) > (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(776)
		LOCAL(larr,jobject)=JvmAllocObjectArray1(&ArrOf_java_lang_Object_Class,virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)));
	}
	JVMLINE(778)
	LOCAL(liter,jint)=0;
	while(LOCAL(liter,jint) < (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(779)
		JvmArraySet_O(LOCAL(larr,jobject),LOCAL(liter,jint),virtual_mjava_util_AbstractList_get__I_Ljava_lang_Object_(LOCAL(pthis,jobject),LOCAL(liter,jint)));
		JVMLINE(778)
		LOCAL(liter,jint)++;
	}
	JVMLINE(781)
	{ jobject $$ret = JvmCheckCast(LOCAL(larr,jobject),&ArrOf_java_lang_Object_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void virtual_mjava_util_AbstractList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject) {
	((void (*)(jobject,jint,jobject))((JvmObject*)pthis)->klass->vtable[34])(pthis,plocation,pobject);
}
jobject virtual_mjava_util_AbstractList_get__I_Ljava_lang_Object_(jobject pthis, jint pp0) {
	return ((jobject (*)(jobject,jint))((JvmObject*)pthis)->klass->vtable[32])(pthis,pp0);
}
jint virtual_mjava_util_AbstractList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject) {
	return ((jint (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[33])(pthis,pobject);
}
jobject virtual_mjava_util_AbstractList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation) {
	return ((jobject (*)(jobject,jint))((JvmObject*)pthis)->klass->vtable[31])(pthis,plocation);
}
JvmClass java_util_AbstractList_Class;
JvmClass ArrOf_java_util_AbstractList_Class;
JvmClass ArrOf_ArrOf_java_util_AbstractList_Class;

jbool java_util_AbstractList_isChildOf(JvmClass* klass) {
	return klass == &java_util_AbstractList_Class || klass == &java_util_List_Class || klass == &java_util_Collection_Class || klass == &java_lang_Iterable_Class || klass == &java_lang_Object_Class || klass == &java_util_AbstractCollection_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_IOV(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
void JvmSetup_java_util_AbstractList() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_util_AbstractCollection();
	JvmSetup_java_util_List();
	void** _vTable = malloc(sizeof(void*) * 35);
	_vTable[34] = &mjava_util_AbstractList_add__ILjava_lang_Object__V;
	_vTable[14] = &mjava_util_AbstractList_add__Ljava_lang_Object__Z;
	_vTable[1] = &mjava_util_AbstractList_equals__Ljava_lang_Object__Z;
	_vTable[32] = jnull;
	_vTable[2] = &mjava_util_AbstractList_hashCode___I;
	_vTable[33] = &mjava_util_AbstractList_indexOf__Ljava_lang_Object__I;
	_vTable[29] = &mjava_util_AbstractList_iterator___Ljava_util_Iterator_;
	_vTable[31] = &mjava_util_AbstractList_remove__I_Ljava_lang_Object_;
	_vTable[13] = &mjava_util_AbstractList_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_vTable[28] = &mjava_util_AbstractCollection_isEmpty___Z;
	_vTable[30] = &mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z;
	_vTable[27] = jnull;
	_vTable[0] = &mjava_util_AbstractCollection_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(33 * sizeof(void*));
	_iTable[21] = (void*)&mjava_util_AbstractList_add__ILjava_lang_Object__V;
	_iTable[2] = (void*)&mjava_util_AbstractList_add__Ljava_lang_Object__Z;
	_iTable[29] = (void*)&mjava_util_AbstractList_equals__Ljava_lang_Object__Z;
	_iTable[19] = (void*)&virtual_mjava_util_AbstractList_get__I_Ljava_lang_Object_;
	_iTable[28] = (void*)&mjava_util_AbstractList_hashCode___I;
	_iTable[18] = (void*)&mjava_util_AbstractList_indexOf__Ljava_lang_Object__I;
	_iTable[5] = (void*)&mjava_util_AbstractList_iterator___Ljava_util_Iterator_;
	_iTable[32] = (void*)&mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_;
	_iTable[31] = (void*)&mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_;
	_iTable[20] = (void*)&mjava_util_AbstractList_remove__I_Ljava_lang_Object_;
	_iTable[3] = (void*)&mjava_util_AbstractList_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_iTable[7] = (void*)&mjava_util_AbstractCollection_isEmpty___Z;
	_iTable[4] = (void*)&virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_;
	_iTable[6] = (void*)&mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z;
	_iTable[8] = (void*)&virtual_mjava_util_AbstractCollection_size___I;
	JvmClass* cls = &java_util_AbstractList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_AbstractList);
	cls->name = JvmMakeString(L"java.util.AbstractList",22);
	cls->superClass = &java_util_AbstractCollection_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_AbstractList_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"AbstractList.java",17);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_util_List_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 11, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"<init>", 6), &java_util_AbstractList_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 376, 376, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=376, .endLine=376, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"add", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&java_lang_Object_Class}), &mjava_util_AbstractList_add__ILjava_lang_Object__V, &invoke_IOV 
#ifdef JVM_DEBUG
 , 404, 404, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=0, .endLine=404, .type=&I_Class},{.name=JvmMakeString(L"object",6), .startLine=0, .endLine=404, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=404, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"add", 3), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_AbstractList_add__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 425, 426, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=425, .endLine=426, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=425, .endLine=426, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_AbstractList_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 483, 500, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=483, .endLine=500, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=483, .endLine=500, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"list",4), .startLine=486, .endLine=500, .type=&java_util_List_Class},{.name=JvmMakeString(L"it1",3), .startLine=491, .endLine=500, .type=&java_util_Iterator_Class},{.name=JvmMakeString(L"it2",3), .startLine=491, .endLine=500, .type=&java_util_Iterator_Class},{.name=JvmMakeString(L"e1",2), .startLine=491, .endLine=500, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"e2",2), .startLine=491, .endLine=500, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"hashCode", 8), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_hashCode___I, &invoke_I 
#ifdef JVM_DEBUG
 , 524, 530, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=525, .endLine=530, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"result",6), .startLine=524, .endLine=530, .type=&I_Class},{.name=JvmMakeString(L"it",2), .startLine=525, .endLine=530, .type=&java_util_Iterator_Class},{.name=JvmMakeString(L"object",6), .startLine=527, .endLine=530, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"indexOf", 7), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_AbstractList_indexOf__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 543, 557, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=547, .endLine=557, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=543, .endLine=557, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"it",2), .startLine=543, .endLine=557, .type=&java_util_ListIterator_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"iterator", 8), &java_util_Iterator_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_iterator___Ljava_util_Iterator_, &invoke_O 
#ifdef JVM_DEBUG
 , 569, 569, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=569, .endLine=569, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"listIterator", 12), &java_util_ListIterator_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_, &invoke_O 
#ifdef JVM_DEBUG
 , 607, 607, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=607, .endLine=607, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"listIterator", 12), &java_util_ListIterator_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_, &invoke_IO 
#ifdef JVM_DEBUG
 , 623, 623, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=623, .endLine=623, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=623, .endLine=623, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"remove", 6), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_AbstractList_remove__I_Ljava_lang_Object_, &invoke_IO 
#ifdef JVM_DEBUG
 , 638, 638, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=0, .endLine=638, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=638, .type=&java_util_AbstractList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractList_Class, JvmMakeString(L"toArray", 7), &ArrOf_java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Object_Class}), &mjava_util_AbstractList_toArray___Ljava_lang_Object___Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 774, 781, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"contents",8), .startLine=774, .endLine=781, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=776, .endLine=781, .type=&java_util_AbstractList_Class},{.name=JvmMakeString(L"arr",3), .startLine=774, .endLine=781, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"iter",4), .startLine=778, .endLine=781, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 1, &(JvmField*[]){
	JvmMakeField(&java_util_AbstractList_Class, JvmMakeString(L"modCount", 8), &I_Class, 132, (void*)offsetof(java_util_AbstractList,fjava_util_AbstractList_modCount))
	});

	cls = &ArrOf_java_util_AbstractList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.AbstractList",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_AbstractList_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_AbstractList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.AbstractList",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_AbstractList_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
