#ifndef __Defined_kotlin_KotlinNullPointerException__
#define __Defined_kotlin_KotlinNullPointerException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_NullPointerException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct kotlin_KotlinNullPointerException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} kotlin_KotlinNullPointerException;


extern JvmClass kotlin_KotlinNullPointerException_Class;
extern JvmClass ArrOf_kotlin_KotlinNullPointerException_Class;
extern JvmClass ArrOf_ArrOf_kotlin_KotlinNullPointerException_Class;
extern void JvmSetup_kotlin_KotlinNullPointerException();

extern jobject mkotlin_KotlinNullPointerException__init____V(jobject pthis);

#endif
