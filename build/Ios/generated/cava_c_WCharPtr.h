#ifndef __Defined_cava_c_WCharPtr__
#define __Defined_cava_c_WCharPtr__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct cava_c_WCharPtr {
	jobject fjava_lang_Object_klass;
} cava_c_WCharPtr;


extern JvmClass cava_c_WCharPtr_Class;
extern JvmClass ArrOf_cava_c_WCharPtr_Class;
extern JvmClass ArrOf_ArrOf_cava_c_WCharPtr_Class;
extern void JvmSetup_cava_c_WCharPtr();

extern jobject mcava_c_WCharPtr__init____V(jobject pthis);
extern jobject mcava_c_WCharPtr_from__Ljava_lang_String__Lcava_c_WCharPtr_(jobject pstring);
extern jobject mcava_c_WCharPtr_from___CI_Lcava_c_WCharPtr_(jobject pchars, jint pindex);

#endif
