#ifndef __Defined_java_util_Iterator__
#define __Defined_java_util_Iterator__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_util_Iterator {
	jobject fjava_lang_Object_klass;
} java_util_Iterator;


extern JvmClass java_util_Iterator_Class;
extern JvmClass ArrOf_java_util_Iterator_Class;
extern JvmClass ArrOf_ArrOf_java_util_Iterator_Class;
extern void JvmSetup_java_util_Iterator();

extern jbool interface_mjava_util_Iterator_hasNext___Z(jobject pthis);
extern jobject interface_mjava_util_Iterator_next___Ljava_lang_Object_(jobject pthis);
extern void interface_mjava_util_Iterator_remove___V(jobject pthis);

#endif
