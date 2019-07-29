#ifndef __Defined_java_util_ConcurrentModificationException__
#define __Defined_java_util_ConcurrentModificationException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_util_ConcurrentModificationException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_util_ConcurrentModificationException;


extern JvmClass java_util_ConcurrentModificationException_Class;
extern JvmClass ArrOf_java_util_ConcurrentModificationException_Class;
extern JvmClass ArrOf_ArrOf_java_util_ConcurrentModificationException_Class;
extern void JvmSetup_java_util_ConcurrentModificationException();

extern jobject mjava_util_ConcurrentModificationException__init____V(jobject pthis);

#endif
