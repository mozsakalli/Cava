#ifndef __Defined_java_lang_NoSuchMethodError__
#define __Defined_java_lang_NoSuchMethodError__

#include "jvm.h"
#include "java_lang_Error.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_lang_NoSuchMethodError {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_lang_NoSuchMethodError;


extern JvmClass java_lang_NoSuchMethodError_Class;
extern JvmClass ArrOf_java_lang_NoSuchMethodError_Class;
extern JvmClass ArrOf_ArrOf_java_lang_NoSuchMethodError_Class;
extern void JvmSetup_java_lang_NoSuchMethodError();

extern jobject mjava_lang_NoSuchMethodError__init____V(jobject pthis);

#endif
