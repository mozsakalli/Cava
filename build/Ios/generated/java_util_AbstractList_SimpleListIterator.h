#ifndef __Defined_java_util_AbstractList_SimpleListIterator__
#define __Defined_java_util_AbstractList_SimpleListIterator__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_Iterator.h"
#include "java_util_AbstractList_1.h"
#include "java_lang_Class.h"
#include "java_util_AbstractList.h"

typedef struct java_util_AbstractList_SimpleListIterator {
	jobject fjava_lang_Object_klass;
	jint fjava_util_AbstractList_SimpleListIterator_numLeft;
	jint fjava_util_AbstractList_SimpleListIterator_expectedModCount;
	jint fjava_util_AbstractList_SimpleListIterator_lastPosition;
	jobject fjava_util_AbstractList_SimpleListIterator_this$0;
} java_util_AbstractList_SimpleListIterator;


extern JvmClass java_util_AbstractList_SimpleListIterator_Class;
extern JvmClass ArrOf_java_util_AbstractList_SimpleListIterator_Class;
extern JvmClass ArrOf_ArrOf_java_util_AbstractList_SimpleListIterator_Class;
extern void JvmSetup_java_util_AbstractList_SimpleListIterator();

extern jobject mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList__V(jobject pthis, jobject pp0);
extern jbool mjava_util_AbstractList_SimpleListIterator_hasNext___Z(jobject pthis);
extern jobject mjava_util_AbstractList_SimpleListIterator_next___Ljava_lang_Object_(jobject pthis);
extern void mjava_util_AbstractList_SimpleListIterator_remove___V(jobject pthis);
extern jobject mjava_util_AbstractList_SimpleListIterator__init___Ljava_util_AbstractList_Ljava_util_AbstractList$1__V(jobject pthis, jobject px0, jobject px1);

#endif
