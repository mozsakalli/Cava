#include "java_lang_UnsupportedOperationException.h"
#include "java_lang_StringBuffer.h"
#include "java_util_AbstractCollection.h"
extern jobject $literal61;
extern jobject $literal62;
extern jobject $literal60;


jobject mjava_util_AbstractCollection__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractCollection_Class,0);
	JVMLINE(34)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_util_AbstractCollection_Class,1);
	JVMLINE(38)
	JvmThrow(mjava_lang_UnsupportedOperationException__init____V(JvmAllocObject(&java_lang_UnsupportedOperationException_Class)));
	thread->framePtr = entryFramePtr;
	return 0;
}

jbool mjava_util_AbstractCollection_isEmpty___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_AbstractCollection_Class,2);
	JVMLINE(182)
	{ jbool $$ret = virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)) == 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);
	DEFLOCAL(lit,jobject,2);

	JVMMETHOD(java_util_AbstractCollection_Class,3);
	JVMLINE(223)
	LOCAL(lit,jobject)=virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(LOCAL(pthis,jobject));
	JVMLINE(235)
	if(LOCAL(pobject,jobject) != jnull){
		JVMLINE(228)
		while(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit,jobject))){
			JVMLINE(228)
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pobject,jobject),interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit,jobject)))){
				JVMLINE(227)
				interface_mjava_util_Iterator_remove___V(LOCAL(lit,jobject));
				JVMLINE(228)
				{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
	}
	else{
		JVMLINE(235)
		while(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit,jobject))){
			JVMLINE(235)
			if(interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit,jobject)) == jnull){
				JVMLINE(234)
				interface_mjava_util_Iterator_remove___V(LOCAL(lit,jobject));
				JVMLINE(235)
				{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
	}
	JVMLINE(239)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractCollection_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lbuffer,jobject,1);
	DEFLOCAL(lit,jobject,2);
	DEFLOCAL(lnext,jobject,3);

	JVMMETHOD(java_util_AbstractCollection_Class,4);
	JVMLINE(346)
	if(virtual_mjava_util_AbstractCollection_isEmpty___Z(LOCAL(pthis,jobject))){
		JVMLINE(346)
		{ jobject $$ret = $literal60; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(349)
	LOCAL(lbuffer,jobject)=mjava_lang_StringBuffer__init___I_V(JvmAllocObject(&java_lang_StringBuffer_Class),virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)) * 16);
	JVMLINE(350)
	mjava_lang_StringBuffer_append__C_Ljava_lang_StringBuffer_(LOCAL(lbuffer,jobject),91);
	JVMLINE(351)
	LOCAL(lit,jobject)=virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(LOCAL(pthis,jobject));
	JVMLINE(360)
	while(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit,jobject))){
		JVMLINE(353)
		LOCAL(lnext,jobject)=interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit,jobject));
		JVMLINE(357)
		if(LOCAL(lnext,jobject) != LOCAL(pthis,jobject)){
			JVMLINE(355)
			mjava_lang_StringBuffer_append__Ljava_lang_Object__Ljava_lang_StringBuffer_(LOCAL(lbuffer,jobject),LOCAL(lnext,jobject));
		}
		else{
			JVMLINE(357)
			mjava_lang_StringBuffer_append__Ljava_lang_String__Ljava_lang_StringBuffer_(LOCAL(lbuffer,jobject),$literal61);
		}
		JVMLINE(360)
		if(interface_mjava_util_Iterator_hasNext___Z(LOCAL(lit,jobject))){
			JVMLINE(360)
			mjava_lang_StringBuffer_append__Ljava_lang_String__Ljava_lang_StringBuffer_(LOCAL(lbuffer,jobject),$literal62);
		}
	}
	JVMLINE(363)
	mjava_lang_StringBuffer_append__C_Ljava_lang_StringBuffer_(LOCAL(lbuffer,jobject),93);
	JVMLINE(364)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(LOCAL(lbuffer,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcontents,jobject,1);
	DEFLOCAL(larr,jobject,2);
	DEFLOCAL(lit,jobject,3);
	DEFLOCAL(liter,jint,4);

	JVMMETHOD(java_util_AbstractCollection_Class,5);
	JVMLINE(397)
	LOCAL(larr,jobject)=LOCAL(pcontents,jobject);
	JVMLINE(399)
	if(virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)) > (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(399)
		LOCAL(larr,jobject)=JvmAllocObjectArray1(&ArrOf_java_lang_Object_Class,virtual_mjava_util_AbstractCollection_size___I(LOCAL(pthis,jobject)));
	}
	JVMLINE(401)
	LOCAL(lit,jobject)=virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(LOCAL(pthis,jobject));
	JVMLINE(402)
	LOCAL(liter,jint)=0;
	while(LOCAL(liter,jint) < (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(403)
		JvmArraySet_O(LOCAL(larr,jobject),LOCAL(liter,jint),interface_mjava_util_Iterator_next___Ljava_lang_Object_(LOCAL(lit,jobject)));
		JVMLINE(402)
		LOCAL(liter,jint)++;
	}
	JVMLINE(405)
	{ jobject $$ret = JvmCheckCast(LOCAL(larr,jobject),&ArrOf_java_lang_Object_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool virtual_mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[14])(pthis,pobject);
}
jbool virtual_mjava_util_AbstractCollection_isEmpty___Z(jobject pthis) {
	return ((jbool (*)(jobject))((JvmObject*)pthis)->klass->vtable[28])(pthis);
}
jobject virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(jobject pthis) {
	return ((jobject (*)(jobject))((JvmObject*)pthis)->klass->vtable[29])(pthis);
}
jbool virtual_mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	return ((jbool (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[30])(pthis,pobject);
}
jint virtual_mjava_util_AbstractCollection_size___I(jobject pthis) {
	return ((jint (*)(jobject))((JvmObject*)pthis)->klass->vtable[27])(pthis);
}
jobject virtual_mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents) {
	return ((jobject (*)(jobject,jobject))((JvmObject*)pthis)->klass->vtable[13])(pthis,pcontents);
}
JvmClass java_util_AbstractCollection_Class;
JvmClass ArrOf_java_util_AbstractCollection_Class;
JvmClass ArrOf_ArrOf_java_util_AbstractCollection_Class;

jbool java_util_AbstractCollection_isChildOf(JvmClass* klass) {
	return klass == &java_util_AbstractCollection_Class || klass == &java_util_Collection_Class || klass == &java_lang_Iterable_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
void JvmSetup_java_util_AbstractCollection() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	JvmSetup_java_util_Collection();
	void** _vTable = malloc(sizeof(void*) * 31);
	_vTable[14] = &mjava_util_AbstractCollection_add__Ljava_lang_Object__Z;
	_vTable[28] = &mjava_util_AbstractCollection_isEmpty___Z;
	_vTable[29] = jnull;
	_vTable[30] = &mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z;
	_vTable[27] = jnull;
	_vTable[0] = &mjava_util_AbstractCollection_toString___Ljava_lang_String_;
	_vTable[13] = &mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(9 * sizeof(void*));
	_iTable[2] = (void*)&mjava_util_AbstractCollection_add__Ljava_lang_Object__Z;
	_iTable[7] = (void*)&mjava_util_AbstractCollection_isEmpty___Z;
	_iTable[4] = (void*)&virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_;
	_iTable[6] = (void*)&mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z;
	_iTable[8] = (void*)&virtual_mjava_util_AbstractCollection_size___I;
	_iTable[3] = (void*)&mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_iTable[29] = (void*)&mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_lang_Object_hashCode___I;
	JvmClass* cls = &java_util_AbstractCollection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_AbstractCollection);
	cls->name = JvmMakeString(L"java.util.AbstractCollection",28);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_AbstractCollection_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"AbstractCollection.java",23);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,1,&(JvmClass*[]){&java_util_Collection_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 6, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"<init>", 6), &java_util_AbstractCollection_Class, 4, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractCollection__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 34, 34, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=34, .endLine=34, .type=&java_util_AbstractCollection_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"add", 3), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_AbstractCollection_add__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 38, 38, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=0, .endLine=38, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=38, .type=&java_util_AbstractCollection_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"isEmpty", 7), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractCollection_isEmpty___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 182, 182, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=182, .endLine=182, .type=&java_util_AbstractCollection_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"remove", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 223, 239, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=228, .endLine=239, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=223, .endLine=239, .type=&java_util_AbstractCollection_Class},{.name=JvmMakeString(L"it",2), .startLine=223, .endLine=239, .type=&java_util_Iterator_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_AbstractCollection_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 346, 364, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=346, .endLine=364, .type=&java_util_AbstractCollection_Class},{.name=JvmMakeString(L"buffer",6), .startLine=349, .endLine=364, .type=&java_lang_StringBuffer_Class},{.name=JvmMakeString(L"it",2), .startLine=351, .endLine=364, .type=&java_util_Iterator_Class},{.name=JvmMakeString(L"next",4), .startLine=353, .endLine=364, .type=&java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_AbstractCollection_Class, JvmMakeString(L"toArray", 7), &ArrOf_java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Object_Class}), &mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 397, 405, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"contents",8), .startLine=397, .endLine=405, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=399, .endLine=405, .type=&java_util_AbstractCollection_Class},{.name=JvmMakeString(L"arr",3), .startLine=397, .endLine=405, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"it",2), .startLine=401, .endLine=405, .type=&java_util_Iterator_Class},{.name=JvmMakeString(L"iter",4), .startLine=402, .endLine=405, .type=&I_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_java_util_AbstractCollection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.AbstractCollection",29);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_AbstractCollection_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_AbstractCollection_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.AbstractCollection",29);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_AbstractCollection_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
