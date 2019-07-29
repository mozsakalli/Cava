#ifndef __Defined_cava_apple_coregraphics_CGPoint__
#define __Defined_cava_apple_coregraphics_CGPoint__

#include "jvm.h"
#include "java_lang_String.h"
#include "cava_c_Struct.h"
#include "java_lang_Class.h"
#include <CoreGraphics/CoreGraphics.h>

typedef struct cava_apple_coregraphics_CGPoint {
	jobject fjava_lang_Object_klass;
	CGPoint $struct;
} cava_apple_coregraphics_CGPoint;


extern JvmClass cava_apple_coregraphics_CGPoint_Class;
extern JvmClass ArrOf_cava_apple_coregraphics_CGPoint_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGPoint_Class;
extern void JvmSetup_cava_apple_coregraphics_CGPoint();

extern jdouble mcava_apple_coregraphics_CGPoint_getX___D(jobject pthis);
extern void mcava_apple_coregraphics_CGPoint_setX__D_V(jobject pthis, jdouble pp0);
extern jdouble mcava_apple_coregraphics_CGPoint_getY___D(jobject pthis);
extern void mcava_apple_coregraphics_CGPoint_setY__D_V(jobject pthis, jdouble pp0);
extern CGPoint mcava_apple_coregraphics_CGPoint_getStruct___Lcava_c_Struct_(jobject pthis);
extern void mcava_apple_coregraphics_CGPoint_setStruct__Lcava_c_Struct__V(jobject pthis, CGPoint pp0);
extern jobject mcava_apple_coregraphics_CGPoint__init____V(jobject pthis);
extern jobject mcava_apple_coregraphics_CGPoint__init___DD_V(jobject pthis, jdouble px, jdouble py);
extern jobject mcava_apple_coregraphics_CGPoint_toString___Ljava_lang_String_(jobject pthis);

#endif
