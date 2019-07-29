#ifndef __Defined_cava_c_Struct__
#define __Defined_cava_c_Struct__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct cava_c_Struct {
	jobject fjava_lang_Object_klass;
} cava_c_Struct;


extern JvmClass cava_c_Struct_Class;
extern JvmClass ArrOf_cava_c_Struct_Class;
extern JvmClass ArrOf_ArrOf_cava_c_Struct_Class;
extern void JvmSetup_cava_c_Struct();

extern jobject mcava_c_Struct__init____V(jobject pthis);

#endif
