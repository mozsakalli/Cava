#ifndef __Defined_java_lang_Comparable__
#define __Defined_java_lang_Comparable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_Comparable {
	jobject fjava_lang_Object_klass;
} java_lang_Comparable;


extern JvmClass java_lang_Comparable_Class;
extern JvmClass ArrOf_java_lang_Comparable_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Comparable_Class;
extern void JvmSetup_java_lang_Comparable();

extern jint interface_mjava_lang_Comparable_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);

#endif
