#ifndef __Defined_java_lang_reflect_Array__
#define __Defined_java_lang_reflect_Array__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_reflect_Array {
	jobject fjava_lang_Object_klass;
} java_lang_reflect_Array;


extern JvmClass java_lang_reflect_Array_Class;
extern JvmClass ArrOf_java_lang_reflect_Array_Class;
extern JvmClass ArrOf_ArrOf_java_lang_reflect_Array_Class;
extern void JvmSetup_java_lang_reflect_Array();

extern jobject mjava_lang_reflect_Array__init____V(jobject pthis);
extern jobject mjava_lang_reflect_Array_newInstance__Ljava_lang_Class_I_Ljava_lang_Object_(jobject pcomponentType, jint plength);
extern jint mjava_lang_reflect_Array_getLength__Ljava_lang_Object__I(jobject parray);
extern jobject mjava_lang_reflect_Array_newArray__Ljava_lang_Class_I_Ljava_lang_Object_(jobject pcomponentType, jint plength);

#endif
