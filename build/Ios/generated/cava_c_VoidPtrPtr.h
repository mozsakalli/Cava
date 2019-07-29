#ifndef __Defined_cava_c_VoidPtrPtr__
#define __Defined_cava_c_VoidPtrPtr__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct cava_c_VoidPtrPtr {
	jobject fjava_lang_Object_klass;
} cava_c_VoidPtrPtr;


extern JvmClass cava_c_VoidPtrPtr_Class;
extern JvmClass ArrOf_cava_c_VoidPtrPtr_Class;
extern JvmClass ArrOf_ArrOf_cava_c_VoidPtrPtr_Class;
extern void JvmSetup_cava_c_VoidPtrPtr();

extern jobject mcava_c_VoidPtrPtr__init____V(jobject pthis);
extern jobject mcava_c_VoidPtrPtr_get__I_Ljava_lang_Object_(jobject pthis, jint pindex);

#endif
