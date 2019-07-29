#ifndef __Defined_cava_apple_coregraphics_CGSize__
#define __Defined_cava_apple_coregraphics_CGSize__

#include "jvm.h"
#include "java_lang_String.h"
#include "cava_c_Struct.h"
#include "java_lang_Class.h"
#include <CoreGraphics/CoreGraphics.h>

typedef struct cava_apple_coregraphics_CGSize {
	jobject fjava_lang_Object_klass;
	CGSize $struct;
} cava_apple_coregraphics_CGSize;


extern JvmClass cava_apple_coregraphics_CGSize_Class;
extern JvmClass ArrOf_cava_apple_coregraphics_CGSize_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGSize_Class;
extern void JvmSetup_cava_apple_coregraphics_CGSize();

extern jdouble mcava_apple_coregraphics_CGSize_getWidth___D(jobject pthis);
extern void mcava_apple_coregraphics_CGSize_setWidth__D_V(jobject pthis, jdouble pp0);
extern jdouble mcava_apple_coregraphics_CGSize_getHeight___D(jobject pthis);
extern void mcava_apple_coregraphics_CGSize_setHeight__D_V(jobject pthis, jdouble pp0);
extern jobject mcava_apple_coregraphics_CGSize__init____V(jobject pthis);
extern jobject mcava_apple_coregraphics_CGSize__init___DD_V(jobject pthis, jdouble pwidth, jdouble pheight);
extern jobject mcava_apple_coregraphics_CGSize_toString___Ljava_lang_String_(jobject pthis);

#endif
