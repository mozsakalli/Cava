#ifndef __Defined_java_util_List__
#define __Defined_java_util_List__

#include "jvm.h"
#include "java_util_Collection.h"
#include "java_lang_Object.h"
#include "java_util_ListIterator.h"
#include "java_util_Iterator.h"
#include "java_lang_Class.h"

typedef struct java_util_List {
	jobject fjava_lang_Object_klass;
} java_util_List;


extern JvmClass java_util_List_Class;
extern JvmClass ArrOf_java_util_List_Class;
extern JvmClass ArrOf_ArrOf_java_util_List_Class;
extern void JvmSetup_java_util_List();

extern void interface_mjava_util_List_add__ILjava_lang_Object__V(jobject pthis, jint pp0, jobject pp1);
extern jbool interface_mjava_util_List_add__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jbool interface_mjava_util_List_equals__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jobject interface_mjava_util_List_get__I_Ljava_lang_Object_(jobject pthis, jint pp0);
extern jint interface_mjava_util_List_hashCode___I(jobject pthis);
extern jint interface_mjava_util_List_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern jbool interface_mjava_util_List_isEmpty___Z(jobject pthis);
extern jobject interface_mjava_util_List_iterator___Ljava_util_Iterator_(jobject pthis);
extern jobject interface_mjava_util_List_listIterator___Ljava_util_ListIterator_(jobject pthis);
extern jobject interface_mjava_util_List_listIterator__I_Ljava_util_ListIterator_(jobject pthis, jint pp0);
extern jobject interface_mjava_util_List_remove__I_Ljava_lang_Object_(jobject pthis, jint pp0);
extern jbool interface_mjava_util_List_remove__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jint interface_mjava_util_List_size___I(jobject pthis);
extern jobject interface_mjava_util_List_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pp0);

#endif
