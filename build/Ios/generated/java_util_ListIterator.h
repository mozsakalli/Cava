#ifndef __Defined_java_util_ListIterator__
#define __Defined_java_util_ListIterator__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_Iterator.h"
#include "java_lang_Class.h"

typedef struct java_util_ListIterator {
	jobject fjava_lang_Object_klass;
} java_util_ListIterator;


extern JvmClass java_util_ListIterator_Class;
extern JvmClass ArrOf_java_util_ListIterator_Class;
extern JvmClass ArrOf_ArrOf_java_util_ListIterator_Class;
extern void JvmSetup_java_util_ListIterator();

extern jbool interface_mjava_util_ListIterator_hasNext___Z(jobject pthis);
extern jobject interface_mjava_util_ListIterator_next___Ljava_lang_Object_(jobject pthis);
extern jint interface_mjava_util_ListIterator_previousIndex___I(jobject pthis);
extern void interface_mjava_util_ListIterator_remove___V(jobject pthis);

#endif
