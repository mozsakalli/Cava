#ifndef __Defined_cava_sample_Application__
#define __Defined_cava_sample_Application__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct cava_sample_Application {
	jobject fjava_lang_Object_klass;
} cava_sample_Application;


extern JvmClass cava_sample_Application_Class;
extern JvmClass ArrOf_cava_sample_Application_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_Application_Class;
extern void JvmSetup_cava_sample_Application();

extern jobject mcava_sample_Application__init____V(jobject pthis);

#endif
