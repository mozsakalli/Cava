#ifndef __Defined_cava_platform_NativeCode__
#define __Defined_cava_platform_NativeCode__

#include "jvm.h"
#include "cava_c_CharPtrPtr.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "cava_c_WCharPtr.h"
#include "cava_c_CharPtr.h"
#include "cava_c_VoidPtrPtr.h"
#include "cava_c_Struct.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include "java_lang_Thread.h"

typedef struct cava_platform_NativeCode {
	jobject fjava_lang_Object_klass;
} cava_platform_NativeCode;


extern JvmClass cava_platform_NativeCode_Class;
extern JvmClass ArrOf_cava_platform_NativeCode_Class;
extern JvmClass ArrOf_ArrOf_cava_platform_NativeCode_Class;
extern void JvmSetup_cava_platform_NativeCode();

extern jobject mcava_platform_NativeCode__init____V(jobject pthis);
extern void mcava_platform_NativeCode_Void__Ljava_lang_String__Ljava_lang_Object__V(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_Object__Ljava_lang_String__Ljava_lang_Object__Ljava_lang_Object_(jobject pp0, jobject pp1);
extern jfloat mcava_platform_NativeCode_Float__Ljava_lang_String__Ljava_lang_Object__F(jobject pp0, jobject pp1);
extern jdouble mcava_platform_NativeCode_Double__Ljava_lang_String__Ljava_lang_Object__D(jobject pp0, jobject pp1);
extern jbool mcava_platform_NativeCode_Bool__Ljava_lang_String__Ljava_lang_Object__Z(jobject pp0, jobject pp1);
extern jint mcava_platform_NativeCode_Int__Ljava_lang_String__Ljava_lang_Object__I(jobject pp0, jobject pp1);
extern jlong mcava_platform_NativeCode_Long__Ljava_lang_String__Ljava_lang_Object__J(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_Class__Ljava_lang_String__Ljava_lang_Object__Ljava_lang_Class_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_Thread__Ljava_lang_String__Ljava_lang_Object__Ljava_lang_Thread_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_Struct__Ljava_lang_String__Ljava_lang_Object__Lcava_c_Struct_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_VoidPtr__Ljava_lang_String__Ljava_lang_Object__Lcava_c_VoidPtr_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_VoidPtrPtr__Ljava_lang_String__Ljava_lang_Object__Lcava_c_VoidPtrPtr_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_CharPtr__Ljava_lang_String__Ljava_lang_Object__Lcava_c_CharPtr_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_CharPtrPtr__Ljava_lang_String__Ljava_lang_Object__Lcava_c_CharPtrPtr_(jobject pp0, jobject pp1);
extern jobject mcava_platform_NativeCode_WCharPtr__Ljava_lang_String__Ljava_lang_Object__Lcava_c_WCharPtr_(jobject pp0, jobject pp1);

#endif
