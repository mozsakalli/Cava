#ifndef __Defined_java_io_UnsupportedEncodingException__
#define __Defined_java_io_UnsupportedEncodingException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_io_IOException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_io_UnsupportedEncodingException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_io_UnsupportedEncodingException;


extern JvmClass java_io_UnsupportedEncodingException_Class;
extern JvmClass ArrOf_java_io_UnsupportedEncodingException_Class;
extern JvmClass ArrOf_ArrOf_java_io_UnsupportedEncodingException_Class;
extern void JvmSetup_java_io_UnsupportedEncodingException();

extern jobject mjava_io_UnsupportedEncodingException__init____V(jobject pthis);

#endif
