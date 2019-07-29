#ifndef __Defined_java_util_NoSuchElementException__
#define __Defined_java_util_NoSuchElementException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_util_NoSuchElementException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_util_NoSuchElementException;


extern JvmClass java_util_NoSuchElementException_Class;
extern JvmClass ArrOf_java_util_NoSuchElementException_Class;
extern JvmClass ArrOf_ArrOf_java_util_NoSuchElementException_Class;
extern void JvmSetup_java_util_NoSuchElementException();

extern jobject mjava_util_NoSuchElementException__init____V(jobject pthis);

#endif
