#ifndef __Defined_java_util_AbstractCollection__
#define __Defined_java_util_AbstractCollection__

#include "jvm.h"
#include "java_util_Collection.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_Iterator.h"
#include "java_lang_Class.h"

typedef struct java_util_AbstractCollection {
	jobject fjava_lang_Object_klass;
} java_util_AbstractCollection;


extern JvmClass java_util_AbstractCollection_Class;
extern JvmClass ArrOf_java_util_AbstractCollection_Class;
extern JvmClass ArrOf_ArrOf_java_util_AbstractCollection_Class;
extern void JvmSetup_java_util_AbstractCollection();

extern jobject mjava_util_AbstractCollection__init____V(jobject pthis);
extern jbool mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jbool mjava_util_AbstractCollection_isEmpty___Z(jobject pthis);
extern jbool mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jobject mjava_util_AbstractCollection_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents);
extern jbool virtual_mjava_util_AbstractCollection_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jbool virtual_mjava_util_AbstractCollection_isEmpty___Z(jobject pthis);
extern jobject virtual_mjava_util_AbstractCollection_iterator___Ljava_util_Iterator_(jobject pthis);
extern jbool virtual_mjava_util_AbstractCollection_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jint virtual_mjava_util_AbstractCollection_size___I(jobject pthis);
extern jobject virtual_mjava_util_AbstractCollection_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents);

#endif
