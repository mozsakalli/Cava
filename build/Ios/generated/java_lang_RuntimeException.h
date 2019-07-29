#ifndef __Defined_java_lang_RuntimeException__
#define __Defined_java_lang_RuntimeException__

#include "jvm.h"
#include "java_lang_Exception.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_lang_RuntimeException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_lang_RuntimeException;


extern JvmClass java_lang_RuntimeException_Class;
extern JvmClass ArrOf_java_lang_RuntimeException_Class;
extern JvmClass ArrOf_ArrOf_java_lang_RuntimeException_Class;
extern void JvmSetup_java_lang_RuntimeException();

extern jobject mjava_lang_RuntimeException__init____V(jobject pthis);
extern jobject mjava_lang_RuntimeException__init___Ljava_lang_String__V(jobject pthis, jobject ps);

#endif
