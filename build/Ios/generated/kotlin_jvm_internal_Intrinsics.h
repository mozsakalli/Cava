#ifndef __Defined_kotlin_jvm_internal_Intrinsics__
#define __Defined_kotlin_jvm_internal_Intrinsics__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct kotlin_jvm_internal_Intrinsics {
	jobject fjava_lang_Object_klass;
} kotlin_jvm_internal_Intrinsics;


extern JvmClass kotlin_jvm_internal_Intrinsics_Class;
extern JvmClass ArrOf_kotlin_jvm_internal_Intrinsics_Class;
extern JvmClass ArrOf_ArrOf_kotlin_jvm_internal_Intrinsics_Class;
extern void JvmSetup_kotlin_jvm_internal_Intrinsics();

extern jobject mkotlin_jvm_internal_Intrinsics__init____V(jobject pthis);
extern void mkotlin_jvm_internal_Intrinsics_throwNpe___V();
extern void mkotlin_jvm_internal_Intrinsics_checkParameterIsNotNull__Ljava_lang_Object_Ljava_lang_String__V(jobject pvalue, jobject pparamName);
extern void mkotlin_jvm_internal_Intrinsics_throwParameterIsNullException__Ljava_lang_String__V(jobject pparamName);
extern jobject mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable__Ljava_lang_Throwable_(jobject pthrowable);
extern jobject mkotlin_jvm_internal_Intrinsics_sanitizeStackTrace__Ljava_lang_Throwable_Ljava_lang_String__Ljava_lang_Throwable_(jobject pthrowable, jobject pclassNameToDrop);

#endif
