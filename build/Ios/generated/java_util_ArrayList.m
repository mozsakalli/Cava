#include "java_lang_StringBuilder.h"
#include "java_util_Arrays.h"
#include "java_lang_IndexOutOfBoundsException.h"
#include "java_lang_IllegalArgumentException.h"
#include "java_util_ArrayList.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_System.h"
extern jobject $literal2;
extern jobject $literal1;
extern jobject $literal83;


jobject mjava_util_ArrayList__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_ArrayList_Class,0);
	JVMLINE(42)
	mjava_util_ArrayList__init___I_V(LOCAL(pthis,jobject),10);
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_ArrayList__init___I_V(jobject pthis, jint pcapacity) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcapacity,jint,1);
	DEFLOCAL(lexpr_12,jbool,2);

	JVMMETHOD(java_util_ArrayList_Class,1);
	JVMLINE(59)
	mjava_util_AbstractList__init____V(LOCAL(pthis,jobject));
	JVMLINE(61)
	if(LOCAL(pcapacity,jint) < 0){
		JVMLINE(61)
		JvmThrow(mjava_lang_IllegalArgumentException__init____V(JvmAllocObject(&java_lang_IllegalArgumentException_Class)));
	}
	JVMLINE(63)
	LOCAL(lexpr_12,jbool)=jfalse;
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size=LOCAL(lexpr_12,jbool);
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=LOCAL(lexpr_12,jbool);
	JVMLINE(64)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array=mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(LOCAL(pthis,jobject),LOCAL(pcapacity,jint));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(jobject pthis, jint psize) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(psize,jint,1);

	JVMMETHOD(java_util_ArrayList_Class,2);
	JVMLINE(103)
	{ jobject $$ret = JvmCheckCast(JvmAllocObjectArray1(&ArrOf_java_lang_Object_Class,LOCAL(psize,jint)),&ArrOf_java_lang_Object_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_util_ArrayList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);
	DEFARG(pobject,jobject,2);
	DEFLOCAL(lindex,jint,3);

	JVMMETHOD(java_util_ArrayList_Class,3);
	JVMLINE(122)
	if((LOCAL(plocation,jint) < 0) || (LOCAL(plocation,jint) > ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size)){
		JVMLINE(122)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(plocation,jint)),$literal2),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size))));
	}
	JVMLINE(146)
	if(LOCAL(plocation,jint) == 0){
		JVMLINE(126)
		if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex == 0){
			JVMLINE(126)
			mjava_util_ArrayList_growAtFront__I_V(LOCAL(pthis,jobject),1);
		}
		JVMLINE(128)
		JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex - 1,LOCAL(pobject,jobject));
	}
	else{
		JVMLINE(146)
		if(LOCAL(plocation,jint) == ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size){
			JVMLINE(131)
			if((((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) == (JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array))){
				JVMLINE(131)
				mjava_util_ArrayList_growAtEnd__I_V(LOCAL(pthis,jobject),1);
			}
			JVMLINE(133)
			JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size,LOCAL(pobject,jobject));
		}
		else{
			JVMLINE(143)
			if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size == (JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array))){
				JVMLINE(136)
				mjava_util_ArrayList_growForInsert__II_V(LOCAL(pthis,jobject),LOCAL(plocation,jint),1);
			}
			else{
				JVMLINE(143)
				if(((((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) == (JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array))) || ((((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex > 0) && (LOCAL(plocation,jint) < (((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size / 2)))){
					JVMLINE(139)
					mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex - 1,LOCAL(plocation,jint));
				}
				else{
					JVMLINE(142)
					LOCAL(lindex,jint)=LOCAL(plocation,jint) + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex;
					JVMLINE(143)
					mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lindex,jint),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lindex,jint) + 1,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size - LOCAL(plocation,jint));
				}
			}
			JVMLINE(146)
			JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(plocation,jint) + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(pobject,jobject));
		}
	}
	JVMLINE(149)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size + 1;
	JVMLINE(150)
	((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount=((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount + 1;
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_ArrayList_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_util_ArrayList_Class,4);
	JVMLINE(163)
	if((((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) == (JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array))){
		JVMLINE(163)
		mjava_util_ArrayList_growAtEnd__I_V(LOCAL(pthis,jobject),1);
	}
	JVMLINE(165)
	JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size,LOCAL(pobject,jobject));
	JVMLINE(166)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size + 1;
	JVMLINE(167)
	((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount=((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount + 1;
	JVMLINE(168)
	{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_ArrayList_get__I_Ljava_lang_Object_(jobject pthis, jint plocation) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);

	JVMMETHOD(java_util_ArrayList_Class,5);
	JVMLINE(328)
	if((LOCAL(plocation,jint) < 0) || (LOCAL(plocation,jint) >= ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size)){
		JVMLINE(328)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(plocation,jint)),$literal2),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size))));
	}
	JVMLINE(330)
	{ jobject $$ret = JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + LOCAL(plocation,jint)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_util_ArrayList_growAtEnd__I_V(jobject pthis, jint prequired) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(prequired,jint,1);
	DEFLOCAL(lstart,jint,2);
	DEFLOCAL(lincrement,jint,3);
	DEFLOCAL(lnewArray,jobject,4);

	JVMMETHOD(java_util_ArrayList_Class,6);
	JVMLINE(360)
	if(((JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array)) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) >= LOCAL(prequired,jint)){
		JVMLINE(342)
		if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size != 0){
			JVMLINE(338)
			mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,0,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size);
			JVMLINE(339)
			LOCAL(lstart,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size < ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex ? ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex : ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size;
			JVMLINE(342)
			mjava_util_Arrays_fill___Ljava_lang_Object_IILjava_lang_Object__V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lstart,jint),JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array),jnull);
		}
		JVMLINE(344)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=0;
	}
	else{
		JVMLINE(348)
		LOCAL(lincrement,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size / 2;
		JVMLINE(350)
		if(LOCAL(prequired,jint) > LOCAL(lincrement,jint)){
			JVMLINE(350)
			LOCAL(lincrement,jint)=LOCAL(prequired,jint);
		}
		JVMLINE(353)
		if(LOCAL(lincrement,jint) < 12){
			JVMLINE(353)
			LOCAL(lincrement,jint)=12;
		}
		JVMLINE(355)
		LOCAL(lnewArray,jobject)=mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(LOCAL(pthis,jobject),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size + LOCAL(lincrement,jint));
		JVMLINE(358)
		if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size != 0){
			JVMLINE(357)
			mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(lnewArray,jobject),0,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size);
			JVMLINE(358)
			((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=0;
		}
		JVMLINE(360)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array=LOCAL(lnewArray,jobject);
	}
	thread->framePtr = entryFramePtr;
}

void mjava_util_ArrayList_growAtFront__I_V(jobject pthis, jint prequired) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(prequired,jint,1);
	DEFLOCAL(lnewFirst,jint,2);
	DEFLOCAL(llastIndex,jint,3);
	DEFLOCAL(llength,jint,4);
	DEFLOCAL(lincrement,jint,5);
	DEFLOCAL(lnewArray,jobject,6);

	JVMMETHOD(java_util_ArrayList_Class,7);
	JVMLINE(389)
	if(((JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array)) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) >= LOCAL(prequired,jint)){
		JVMLINE(366)
		LOCAL(lnewFirst,jint)=(JvmArrayLen(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array)) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size;
		JVMLINE(373)
		if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size != 0){
			JVMLINE(370)
			mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lnewFirst,jint),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size);
			JVMLINE(371)
			LOCAL(llastIndex,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size;
			JVMLINE(372)
			LOCAL(llength,jint)=LOCAL(llastIndex,jint) > LOCAL(lnewFirst,jint) ? LOCAL(lnewFirst,jint) : LOCAL(llastIndex,jint);
			JVMLINE(373)
			mjava_util_Arrays_fill___Ljava_lang_Object_IILjava_lang_Object__V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(llength,jint),jnull);
		}
		JVMLINE(375)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=LOCAL(lnewFirst,jint);
	}
	else{
		JVMLINE(377)
		LOCAL(lincrement,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size / 2;
		JVMLINE(379)
		if(LOCAL(prequired,jint) > LOCAL(lincrement,jint)){
			JVMLINE(379)
			LOCAL(lincrement,jint)=LOCAL(prequired,jint);
		}
		JVMLINE(382)
		if(LOCAL(lincrement,jint) < 12){
			JVMLINE(382)
			LOCAL(lincrement,jint)=12;
		}
		JVMLINE(384)
		LOCAL(lnewArray,jobject)=mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(LOCAL(pthis,jobject),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size + LOCAL(lincrement,jint));
		JVMLINE(386)
		if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size != 0){
			JVMLINE(386)
			mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(lnewArray,jobject),LOCAL(lincrement,jint),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size);
		}
		JVMLINE(388)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=(JvmArrayLen(LOCAL(lnewArray,jobject))) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size;
		JVMLINE(389)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array=LOCAL(lnewArray,jobject);
	}
	thread->framePtr = entryFramePtr;
}

void mjava_util_ArrayList_growForInsert__II_V(jobject pthis, jint plocation, jint prequired) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);
	DEFARG(prequired,jint,2);
	DEFLOCAL(lincrement,jint,3);
	DEFLOCAL(lnewArray,jobject,4);
	DEFLOCAL(lnewFirst,jint,5);

	JVMMETHOD(java_util_ArrayList_Class,8);
	JVMLINE(397)
	LOCAL(lincrement,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size / 2;
	JVMLINE(399)
	if(LOCAL(prequired,jint) > LOCAL(lincrement,jint)){
		JVMLINE(399)
		LOCAL(lincrement,jint)=LOCAL(prequired,jint);
	}
	JVMLINE(402)
	if(LOCAL(lincrement,jint) < 12){
		JVMLINE(402)
		LOCAL(lincrement,jint)=12;
	}
	JVMLINE(404)
	LOCAL(lnewArray,jobject)=mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(LOCAL(pthis,jobject),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size + LOCAL(lincrement,jint));
	JVMLINE(407)
	LOCAL(lnewFirst,jint)=LOCAL(lincrement,jint) - LOCAL(prequired,jint);
	JVMLINE(410)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(plocation,jint) + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(lnewArray,jobject),(LOCAL(lnewFirst,jint) + LOCAL(plocation,jint)) + LOCAL(prequired,jint),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size - LOCAL(plocation,jint));
	JVMLINE(413)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(lnewArray,jobject),LOCAL(lnewFirst,jint),LOCAL(plocation,jint));
	JVMLINE(414)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=LOCAL(lnewFirst,jint);
	JVMLINE(415)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array=LOCAL(lnewArray,jobject);
	thread->framePtr = entryFramePtr;
}

jint mjava_util_ArrayList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);
	DEFLOCAL(llastIndex,jint,2);
	DEFLOCAL(li,jint,3);

	JVMMETHOD(java_util_ArrayList_Class,9);
	JVMLINE(421)
	LOCAL(llastIndex,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size;
	JVMLINE(429)
	if(LOCAL(pobject,jobject) != jnull){
		JVMLINE(423)
		LOCAL(li,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex;
		while(LOCAL(li,jint) < LOCAL(llastIndex,jint)){
			JVMLINE(425)
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pobject,jobject),JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(li,jint)))){
				JVMLINE(425)
				{ jint $$ret = LOCAL(li,jint) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex; thread->framePtr = entryFramePtr; return $$ret; };
			}
			JVMLINE(423)
			LOCAL(li,jint)++;
		}
	}
	else{
		JVMLINE(429)
		LOCAL(li,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex;
		while(LOCAL(li,jint) < LOCAL(llastIndex,jint)){
			JVMLINE(431)
			if((JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(li,jint))) == jnull){
				JVMLINE(431)
				{ jint $$ret = LOCAL(li,jint) - ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex; thread->framePtr = entryFramePtr; return $$ret; };
			}
			JVMLINE(429)
			LOCAL(li,jint)++;
		}
	}
	JVMLINE(435)
	{ jint $$ret = -1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_ArrayList_isEmpty___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_ArrayList_Class,10);
	JVMLINE(440)
	{ jbool $$ret = ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size == 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_ArrayList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(plocation,jint,1);
	DEFLOCAL(lresult,jobject,2);
	DEFLOCAL(llastIndex,jint,3);
	DEFLOCAL(lelementIndex,jint,4);

	JVMMETHOD(java_util_ArrayList_Class,11);
	JVMLINE(475)
	if((LOCAL(plocation,jint) < 0) || (LOCAL(plocation,jint) >= ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size)){
		JVMLINE(475)
		JvmThrow(mjava_lang_IndexOutOfBoundsException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IndexOutOfBoundsException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal1),LOCAL(plocation,jint)),$literal2),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size))));
	}
	JVMLINE(494)
	if(LOCAL(plocation,jint) == 0){
		JVMLINE(478)
		LOCAL(lresult,jobject)=JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex);
		JVMLINE(479)
		JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex++,jnull);
	}
	else{
		JVMLINE(494)
		if(LOCAL(plocation,jint) == (((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size - 1)){
			JVMLINE(481)
			LOCAL(llastIndex,jint)=(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) - 1;
			JVMLINE(482)
			LOCAL(lresult,jobject)=JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(llastIndex,jint));
			JVMLINE(483)
			JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(llastIndex,jint),jnull);
		}
		else{
			JVMLINE(485)
			LOCAL(lelementIndex,jint)=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + LOCAL(plocation,jint);
			JVMLINE(486)
			LOCAL(lresult,jobject)=JvmArrayGet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lelementIndex,jint));
			JVMLINE(494)
			if(LOCAL(plocation,jint) < (((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size / 2)){
				JVMLINE(488)
				mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + 1,LOCAL(plocation,jint));
				JVMLINE(490)
				JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex++,jnull);
			}
			else{
				JVMLINE(492)
				mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lelementIndex,jint) + 1,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,LOCAL(lelementIndex,jint),(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size - LOCAL(plocation,jint)) - 1);
				JVMLINE(494)
				JvmArraySet_O(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex + ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size) - 1,jnull);
			}
		}
	}
	JVMLINE(497)
	((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size=((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size - 1;
	JVMLINE(502)
	if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size == 0){
		JVMLINE(502)
		((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex=0;
	}
	JVMLINE(505)
	((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount=((java_util_AbstractList*)(LOCAL(pthis,jobject)))->fjava_util_AbstractList_modCount + 1;
	JVMLINE(506)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_util_ArrayList_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);
	DEFLOCAL(llocation,jint,2);

	JVMMETHOD(java_util_ArrayList_Class,12);
	JVMLINE(511)
	LOCAL(llocation,jint)=virtual_mjava_util_AbstractList_indexOf__Ljava_lang_Object__I(LOCAL(pthis,jobject),LOCAL(pobject,jobject));
	JVMLINE(514)
	if(LOCAL(llocation,jint) >= 0){
		JVMLINE(513)
		virtual_mjava_util_AbstractList_remove__I_Ljava_lang_Object_(LOCAL(pthis,jobject),LOCAL(llocation,jint));
		JVMLINE(514)
		{ jbool $$ret = jtrue; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(516)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_util_ArrayList_size___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_util_ArrayList_Class,13);
	JVMLINE(590)
	{ jint $$ret = ((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_util_ArrayList_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcontents,jobject,1);
	DEFLOCAL(larr,jobject,2);

	JVMMETHOD(java_util_ArrayList_Class,14);
	JVMLINE(624)
	LOCAL(larr,jobject)=LOCAL(pcontents,jobject);
	JVMLINE(626)
	if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size > (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(626)
		JvmThrow(mjava_lang_RuntimeException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_RuntimeException_Class),$literal83));
	}
	JVMLINE(628)
	mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_array,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_firstIndex,LOCAL(larr,jobject),0,((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size);
	JVMLINE(632)
	if(((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size < (JvmArrayLen(LOCAL(larr,jobject)))){
		JVMLINE(632)
		JvmArraySet_O(LOCAL(larr,jobject),((java_util_ArrayList*)(LOCAL(pthis,jobject)))->fjava_util_ArrayList_size,jnull);
	}
	JVMLINE(634)
	{ jobject $$ret = JvmCheckCast(LOCAL(larr,jobject),&ArrOf_java_lang_Object_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_util_ArrayList_Class;
JvmClass ArrOf_java_util_ArrayList_Class;
JvmClass ArrOf_ArrOf_java_util_ArrayList_Class;

jbool java_util_ArrayList_isChildOf(JvmClass* klass) {
	return klass == &java_util_ArrayList_Class || klass == &java_util_List_Class || klass == &java_util_Collection_Class || klass == &java_lang_Iterable_Class || klass == &java_lang_Object_Class || klass == &java_util_RandomAccess_Class || klass == &java_util_AbstractList_Class || klass == &java_util_AbstractCollection_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_IO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_IV(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_IOV(jobject,jobject,jobject);
extern jobject invoke_IIV(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
void JvmSetup_java_util_ArrayList() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_util_AbstractList();
	JvmSetup_java_util_List();
	JvmSetup_java_util_RandomAccess();
	void** _vTable = malloc(sizeof(void*) * 35);
	_vTable[34] = &mjava_util_ArrayList_add__ILjava_lang_Object__V;
	_vTable[14] = &mjava_util_ArrayList_add__Ljava_lang_Object__Z;
	_vTable[32] = &mjava_util_ArrayList_get__I_Ljava_lang_Object_;
	_vTable[33] = &mjava_util_ArrayList_indexOf__Ljava_lang_Object__I;
	_vTable[28] = &mjava_util_ArrayList_isEmpty___Z;
	_vTable[31] = &mjava_util_ArrayList_remove__I_Ljava_lang_Object_;
	_vTable[30] = &mjava_util_ArrayList_remove__Ljava_lang_Object__Z;
	_vTable[27] = &mjava_util_ArrayList_size___I;
	_vTable[13] = &mjava_util_ArrayList_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_vTable[1] = &mjava_util_AbstractList_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_util_AbstractList_hashCode___I;
	_vTable[29] = &mjava_util_AbstractList_iterator___Ljava_util_Iterator_;
	_vTable[0] = &mjava_util_AbstractCollection_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = (void**)malloc(33 * sizeof(void*));
	_iTable[21] = (void*)&mjava_util_ArrayList_add__ILjava_lang_Object__V;
	_iTable[2] = (void*)&mjava_util_ArrayList_add__Ljava_lang_Object__Z;
	_iTable[19] = (void*)&mjava_util_ArrayList_get__I_Ljava_lang_Object_;
	_iTable[18] = (void*)&mjava_util_ArrayList_indexOf__Ljava_lang_Object__I;
	_iTable[7] = (void*)&mjava_util_ArrayList_isEmpty___Z;
	_iTable[20] = (void*)&mjava_util_ArrayList_remove__I_Ljava_lang_Object_;
	_iTable[6] = (void*)&mjava_util_ArrayList_remove__Ljava_lang_Object__Z;
	_iTable[8] = (void*)&mjava_util_ArrayList_size___I;
	_iTable[3] = (void*)&mjava_util_ArrayList_toArray___Ljava_lang_Object___Ljava_lang_Object_;
	_iTable[29] = (void*)&mjava_util_AbstractList_equals__Ljava_lang_Object__Z;
	_iTable[28] = (void*)&mjava_util_AbstractList_hashCode___I;
	_iTable[5] = (void*)&mjava_util_AbstractList_iterator___Ljava_util_Iterator_;
	_iTable[32] = (void*)&mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_;
	_iTable[31] = (void*)&mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_;
	_iTable[4] = (void*)&virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_;
	JvmClass* cls = &java_util_ArrayList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_util_ArrayList);
	cls->name = JvmMakeString(L"java.util.ArrayList",19);
	cls->superClass = &java_util_AbstractList_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_util_ArrayList_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"ArrayList.java",14);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = JvmMakeObjectArray(&ArrOf_java_lang_Class_Class,2,&(JvmClass*[]){&java_util_List_Class,&java_util_RandomAccess_Class});
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 15, &(JvmMethod*[]){
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"<init>", 6), &java_util_ArrayList_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_ArrayList__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 42, 42, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=42, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"<init>", 6), &java_util_ArrayList_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList__init___I_V, &invoke_IO 
#ifdef JVM_DEBUG
 , 59, 64, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"capacity",8), .startLine=61, .endLine=64, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=59, .endLine=64, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"expr_12",7), .startLine=63, .endLine=64, .type=&Z_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"newElementArray", 15), &ArrOf_java_lang_Object_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_, &invoke_IO 
#ifdef JVM_DEBUG
 , 103, 103, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"size",4), .startLine=103, .endLine=103, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=103, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"add", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&java_lang_Object_Class}), &mjava_util_ArrayList_add__ILjava_lang_Object__V, &invoke_IOV 
#ifdef JVM_DEBUG
 , 122, 150, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=122, .endLine=150, .type=&I_Class},{.name=JvmMakeString(L"object",6), .startLine=128, .endLine=150, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=122, .endLine=150, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"index",5), .startLine=142, .endLine=150, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"add", 3), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_ArrayList_add__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 163, 168, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=165, .endLine=168, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=163, .endLine=168, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"get", 3), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList_get__I_Ljava_lang_Object_, &invoke_IO 
#ifdef JVM_DEBUG
 , 328, 330, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=328, .endLine=330, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=328, .endLine=330, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"growAtEnd", 9), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList_growAtEnd__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 338, 360, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"required",8), .startLine=350, .endLine=360, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=338, .endLine=360, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"start",5), .startLine=339, .endLine=360, .type=&I_Class},{.name=JvmMakeString(L"increment",9), .startLine=348, .endLine=360, .type=&I_Class},{.name=JvmMakeString(L"newArray",8), .startLine=355, .endLine=360, .type=&ArrOf_java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"growAtFront", 11), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList_growAtFront__I_V, &invoke_IV 
#ifdef JVM_DEBUG
 , 366, 389, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"required",8), .startLine=379, .endLine=389, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=366, .endLine=389, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"newFirst",8), .startLine=366, .endLine=389, .type=&I_Class},{.name=JvmMakeString(L"lastIndex",9), .startLine=371, .endLine=389, .type=&I_Class},{.name=JvmMakeString(L"length",6), .startLine=372, .endLine=389, .type=&I_Class},{.name=JvmMakeString(L"increment",9), .startLine=377, .endLine=389, .type=&I_Class},{.name=JvmMakeString(L"newArray",8), .startLine=384, .endLine=389, .type=&ArrOf_java_lang_Object_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"growForInsert", 13), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&I_Class,&I_Class}), &mjava_util_ArrayList_growForInsert__II_V, &invoke_IIV 
#ifdef JVM_DEBUG
 , 397, 415, 2, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=410, .endLine=415, .type=&I_Class},{.name=JvmMakeString(L"required",8), .startLine=399, .endLine=415, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=397, .endLine=415, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"increment",9), .startLine=397, .endLine=415, .type=&I_Class},{.name=JvmMakeString(L"newArray",8), .startLine=404, .endLine=415, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"newFirst",8), .startLine=407, .endLine=415, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"indexOf", 7), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_ArrayList_indexOf__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 421, 435, 1, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=425, .endLine=435, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=421, .endLine=435, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"lastIndex",9), .startLine=421, .endLine=435, .type=&I_Class},{.name=JvmMakeString(L"i",1), .startLine=423, .endLine=435, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"isEmpty", 7), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_ArrayList_isEmpty___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 440, 440, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=440, .endLine=440, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"remove", 6), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&I_Class}), &mjava_util_ArrayList_remove__I_Ljava_lang_Object_, &invoke_IO 
#ifdef JVM_DEBUG
 , 475, 506, 1, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"location",8), .startLine=475, .endLine=506, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=475, .endLine=506, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"result",6), .startLine=478, .endLine=506, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"lastIndex",9), .startLine=481, .endLine=506, .type=&I_Class},{.name=JvmMakeString(L"elementIndex",12), .startLine=485, .endLine=506, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"remove", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_util_ArrayList_remove__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 511, 516, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=511, .endLine=516, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=511, .endLine=516, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"location",8), .startLine=511, .endLine=516, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"size", 4), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_util_ArrayList_size___I, &invoke_I 
#ifdef JVM_DEBUG
 , 590, 590, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=590, .endLine=590, .type=&java_util_ArrayList_Class}}
#endif
 ),
	JvmMakeMethod(&java_util_ArrayList_Class, JvmMakeString(L"toArray", 7), &ArrOf_java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Object_Class}), &mjava_util_ArrayList_toArray___Ljava_lang_Object___Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 624, 634, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"contents",8), .startLine=624, .endLine=634, .type=&ArrOf_java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=626, .endLine=634, .type=&java_util_ArrayList_Class},{.name=JvmMakeString(L"arr",3), .startLine=624, .endLine=634, .type=&ArrOf_java_lang_Object_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 3, &(JvmField*[]){
	JvmMakeField(&java_util_ArrayList_Class, JvmMakeString(L"firstIndex", 10), &I_Class, 130, (void*)offsetof(java_util_ArrayList,fjava_util_ArrayList_firstIndex))
	,JvmMakeField(&java_util_ArrayList_Class, JvmMakeString(L"size", 4), &I_Class, 130, (void*)offsetof(java_util_ArrayList,fjava_util_ArrayList_size))
	,JvmMakeField(&java_util_ArrayList_Class, JvmMakeString(L"array", 5), &ArrOf_java_lang_Object_Class, 130, (void*)offsetof(java_util_ArrayList,fjava_util_ArrayList_array))
	});

	cls = &ArrOf_java_util_ArrayList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.util.ArrayList",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_util_ArrayList_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_util_ArrayList_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.util.ArrayList",20);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_util_ArrayList_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
