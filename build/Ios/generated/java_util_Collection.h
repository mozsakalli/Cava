#ifndef __Defined_java_util_Collection__
#define __Defined_java_util_Collection__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_Iterator.h"
#include "java_lang_Iterable.h"
#include "java_lang_Class.h"

typedef struct java_util_Collection {
	jobject fjava_lang_Object_klass;
} java_util_Collection;


extern JvmClass java_util_Collection_Class;
extern JvmClass ArrOf_java_util_Collection_Class;
extern JvmClass ArrOf_ArrOf_java_util_Collection_Class;
extern void JvmSetup_java_util_Collection();

extern jbool interface_mjava_util_Collection_add__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jbool interface_mjava_util_Collection_equals__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jint interface_mjava_util_Collection_hashCode___I(jobject pthis);
extern jbool interface_mjava_util_Collection_isEmpty___Z(jobject pthis);
extern jobject interface_mjava_util_Collection_iterator___Ljava_util_Iterator_(jobject pthis);
extern jbool interface_mjava_util_Collection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pp0);
extern jint interface_mjava_util_Collection_size___I(jobject pthis);
extern jobject interface_mjava_util_Collection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pp0);

#endif
