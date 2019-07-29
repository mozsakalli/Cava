#ifndef __Defined_java_io_FileNotFoundException__
#define __Defined_java_io_FileNotFoundException__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_io_IOException.h"
#include "java_lang_Class.h"
#include "java_lang_Throwable.h"

typedef struct java_io_FileNotFoundException {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_io_FileNotFoundException;


extern JvmClass java_io_FileNotFoundException_Class;
extern JvmClass ArrOf_java_io_FileNotFoundException_Class;
extern JvmClass ArrOf_ArrOf_java_io_FileNotFoundException_Class;
extern void JvmSetup_java_io_FileNotFoundException();

extern jobject mjava_io_FileNotFoundException__init____V(jobject pthis);
extern jobject mjava_io_FileNotFoundException__init___Ljava_lang_String__V(jobject pthis, jobject pdetailMessage);

#endif
