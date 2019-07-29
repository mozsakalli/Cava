#ifndef __Defined_cava_c_CharPtrPtr__
#define __Defined_cava_c_CharPtrPtr__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct cava_c_CharPtrPtr {
	jobject fjava_lang_Object_klass;
} cava_c_CharPtrPtr;


extern JvmClass cava_c_CharPtrPtr_Class;
extern JvmClass ArrOf_cava_c_CharPtrPtr_Class;
extern JvmClass ArrOf_ArrOf_cava_c_CharPtrPtr_Class;
extern void JvmSetup_cava_c_CharPtrPtr();

extern jobject mcava_c_CharPtrPtr__init____V(jobject pthis);
extern jobject mcava_c_CharPtrPtr_alloc__I_Lcava_c_CharPtrPtr_(jint psize);
extern void mcava_c_CharPtrPtr_set__ILjava_lang_Object__V(jobject pthis, jint pindex, jobject pvalue);

#endif
