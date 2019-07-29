#ifndef __Defined_cava_c_VoidPtr__
#define __Defined_cava_c_VoidPtr__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct cava_c_VoidPtr {
	jobject fjava_lang_Object_klass;
} cava_c_VoidPtr;


extern JvmClass cava_c_VoidPtr_Class;
extern JvmClass ArrOf_cava_c_VoidPtr_Class;
extern JvmClass ArrOf_ArrOf_cava_c_VoidPtr_Class;
extern void JvmSetup_cava_c_VoidPtr();

extern jobject mcava_c_VoidPtr__init____V(jobject pthis);
extern jobject mcava_c_VoidPtr_from__Ljava_lang_Object__Lcava_c_VoidPtr_(jobject po);
extern jint mcava_c_VoidPtr_toInt___I(jobject pthis);

#endif
