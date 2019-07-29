#ifndef __Defined_java_util_AbstractList__
#define __Defined_java_util_AbstractList__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_ListIterator.h"
#include "java_util_Iterator.h"
#include "java_lang_Class.h"
#include "java_util_List.h"
#include "java_util_AbstractCollection.h"

typedef struct java_util_AbstractList {
	jobject fjava_lang_Object_klass;
	jint fjava_util_AbstractList_modCount;
} java_util_AbstractList;


extern JvmClass java_util_AbstractList_Class;
extern JvmClass ArrOf_java_util_AbstractList_Class;
extern JvmClass ArrOf_ArrOf_java_util_AbstractList_Class;
extern void JvmSetup_java_util_AbstractList();

extern jobject mjava_util_AbstractList__init____V(jobject pthis);
extern void mjava_util_AbstractList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject);
extern jbool mjava_util_AbstractList_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jbool mjava_util_AbstractList_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jint mjava_util_AbstractList_hashCode___I(jobject pthis);
extern jint mjava_util_AbstractList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject);
extern jobject mjava_util_AbstractList_iterator___Ljava_util_Iterator_(jobject pthis);
extern jobject mjava_util_AbstractList_listIterator___Ljava_util_ListIterator_(jobject pthis);
extern jobject mjava_util_AbstractList_listIterator__I_Ljava_util_ListIterator_(jobject pthis, jint plocation);
extern jobject mjava_util_AbstractList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation);
extern jobject mjava_util_AbstractList_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents);
extern void virtual_mjava_util_AbstractList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject);
extern jobject virtual_mjava_util_AbstractList_get__I_Ljava_lang_Object_(jobject pthis, jint pp0);
extern jint virtual_mjava_util_AbstractList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject);
extern jobject virtual_mjava_util_AbstractList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation);

#endif
