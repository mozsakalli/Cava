#ifndef __Defined_java_util_AbstractList_FullListIterator__
#define __Defined_java_util_AbstractList_FullListIterator__

#include "jvm.h"
#include "java_util_ListIterator.h"
#include "java_util_AbstractList_SimpleListIterator.h"
#include "java_lang_Class.h"
#include "java_util_AbstractList.h"

typedef struct java_util_AbstractList_FullListIterator {
	jobject fjava_lang_Object_klass;
	jint fjava_util_AbstractList_SimpleListIterator_numLeft;
	jint fjava_util_AbstractList_SimpleListIterator_expectedModCount;
	jint fjava_util_AbstractList_SimpleListIterator_lastPosition;
	jobject fjava_util_AbstractList_SimpleListIterator_this$0;
	jobject fjava_util_AbstractList_FullListIterator_this$0;
} java_util_AbstractList_FullListIterator;


extern JvmClass java_util_AbstractList_FullListIterator_Class;
extern JvmClass ArrOf_java_util_AbstractList_FullListIterator_Class;
extern JvmClass ArrOf_ArrOf_java_util_AbstractList_FullListIterator_Class;
extern void JvmSetup_java_util_AbstractList_FullListIterator();

extern jobject mjava_util_AbstractList_FullListIterator__init___Ljava_util_AbstractList_I_V(jobject pthis, jobject pp0, jint pstart);
extern jint mjava_util_AbstractList_FullListIterator_previousIndex___I(jobject pthis);

#endif
