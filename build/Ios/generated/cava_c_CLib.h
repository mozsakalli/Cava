#ifndef __Defined_cava_c_CLib__
#define __Defined_cava_c_CLib__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef struct cava_c_CLib {
	jobject fjava_lang_Object_klass;
} cava_c_CLib;

extern jint fcava_c_CLib_BYTE_SIZE;
extern jint fcava_c_CLib_CHAR_SIZE;
extern jint fcava_c_CLib_SHORT_SIZE;
extern jint fcava_c_CLib_BOOL_SIZE;
extern jint fcava_c_CLib_INT_SIZE;
extern jint fcava_c_CLib_FLOAT_SIZE;
extern jint fcava_c_CLib_LONG_SIZE;
extern jint fcava_c_CLib_DOUBLE_SIZE;

extern JvmClass cava_c_CLib_Class;
extern JvmClass ArrOf_cava_c_CLib_Class;
extern JvmClass ArrOf_ArrOf_cava_c_CLib_Class;
extern void JvmSetup_cava_c_CLib();

extern jobject mcava_c_CLib__init____V(jobject pthis);
extern void mcava_c_CLib_memmove__Ljava_lang_Object_ILjava_lang_Object_II_V(jobject pdst, jint pdstOffset, jobject psrc, jint psrcOffset, jint psizeInBytes);
extern void mcava_c_CLib__clinit____V();

#endif
