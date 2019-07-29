#ifndef __Defined_cava_apple_coregraphics_CGRect__
#define __Defined_cava_apple_coregraphics_CGRect__

#include "jvm.h"
#include "java_lang_String.h"
#include "cava_apple_coregraphics_CGSize.h"
#include "cava_apple_coregraphics_CGPoint.h"
#include "cava_c_Struct.h"
#include "java_lang_Class.h"
#include <CoreGraphics/CoreGraphics.h>

typedef struct cava_apple_coregraphics_CGRect {
	jobject fjava_lang_Object_klass;
	CGRect $struct;
} cava_apple_coregraphics_CGRect;


extern JvmClass cava_apple_coregraphics_CGRect_Class;
extern JvmClass ArrOf_cava_apple_coregraphics_CGRect_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGRect_Class;
extern void JvmSetup_cava_apple_coregraphics_CGRect();

extern jobject mcava_apple_coregraphics_CGRect_getOrigin___Lcava_apple_coregraphics_CGPoint_(jobject pthis);
extern void mcava_apple_coregraphics_CGRect_setOrigin__Lcava_apple_coregraphics_CGPoint__V(jobject pthis, jobject pp0);
extern jobject mcava_apple_coregraphics_CGRect_getSize___Lcava_apple_coregraphics_CGSize_(jobject pthis);
extern void mcava_apple_coregraphics_CGRect_setSize__Lcava_apple_coregraphics_CGSize__V(jobject pthis, jobject pp0);
extern CGRect mcava_apple_coregraphics_CGRect_getStruct___Lcava_c_Struct_(jobject pthis);
extern void mcava_apple_coregraphics_CGRect_setStruct__Lcava_c_Struct__V(jobject pthis, CGRect pp0);
extern jobject mcava_apple_coregraphics_CGRect__init____V(jobject pthis);
extern jobject mcava_apple_coregraphics_CGRect__init___Lcava_c_Struct__V(jobject pthis, CGRect pstruct);
extern jobject mcava_apple_coregraphics_CGRect__init___Lcava_apple_coregraphics_CGPoint_Lcava_apple_coregraphics_CGSize__V(jobject pthis, jobject porigin, jobject psize);
extern jobject mcava_apple_coregraphics_CGRect__init___DDDD_V(jobject pthis, jdouble px, jdouble py, jdouble pwidth, jdouble pheight);
extern jdouble mcava_apple_coregraphics_CGRect_getWidth__Lcava_apple_coregraphics_CGRect__D(jobject prect);
extern jdouble mcava_apple_coregraphics_CGRect_getWidth___D(jobject pthis);
extern jdouble mcava_apple_coregraphics_CGRect_getHeight__Lcava_apple_coregraphics_CGRect__D(jobject prect);
extern jdouble mcava_apple_coregraphics_CGRect_getHeight___D(jobject pthis);
extern jdouble mcava_apple_coregraphics_CGRect_getMinX___D(jobject pthis);
extern jdouble mcava_apple_coregraphics_CGRect_getMinY___D(jobject pthis);
extern jobject mcava_apple_coregraphics_CGRect_toString___Ljava_lang_String_(jobject pthis);

#endif
