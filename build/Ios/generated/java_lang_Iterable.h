#ifndef __Defined_java_lang_Iterable__
#define __Defined_java_lang_Iterable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_Iterator.h"
#include "java_lang_Class.h"

typedef struct java_lang_Iterable {
	jobject fjava_lang_Object_klass;
} java_lang_Iterable;


extern JvmClass java_lang_Iterable_Class;
extern JvmClass ArrOf_java_lang_Iterable_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Iterable_Class;
extern void JvmSetup_java_lang_Iterable();

extern jobject interface_mjava_lang_Iterable_iterator___Ljava_util_Iterator_(jobject pthis);

#endif
