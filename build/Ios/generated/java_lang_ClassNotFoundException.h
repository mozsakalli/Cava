#ifndef __Defined_java_lang_ClassNotFoundException__
#define __Defined_java_lang_ClassNotFoundException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_lang_ClassNotFoundException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_lang_ClassNotFoundException;


extern JvmClass java_lang_ClassNotFoundException_Class;
extern JvmClass ArrOf_java_lang_ClassNotFoundException_Class;
extern JvmClass ArrOf_ArrOf_java_lang_ClassNotFoundException_Class;
extern void JvmSetup_java_lang_ClassNotFoundException();

extern jobject mjava_lang_ClassNotFoundException__init____V(jobject pthis);
extern jobject mjava_lang_ClassNotFoundException__init___Ljava_lang_String__V(jobject pthis, jobject ps);

#endif
