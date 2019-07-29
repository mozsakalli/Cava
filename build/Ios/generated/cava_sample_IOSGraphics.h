#ifndef __Defined_cava_sample_IOSGraphics__
#define __Defined_cava_sample_IOSGraphics__

#include "jvm.h"
#include "java_lang_Class.h"
#include "cava_sample_OpenGLGraphics.h"

typedef struct cava_sample_IOSGraphics {
	jobject fjava_lang_Object_klass;
} cava_sample_IOSGraphics;


extern JvmClass cava_sample_IOSGraphics_Class;
extern JvmClass ArrOf_cava_sample_IOSGraphics_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSGraphics_Class;
extern void JvmSetup_cava_sample_IOSGraphics();

extern jobject mcava_sample_IOSGraphics__init____V(jobject pthis);

#endif
