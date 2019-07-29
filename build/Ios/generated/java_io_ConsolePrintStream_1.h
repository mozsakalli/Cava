#ifndef __Defined_java_io_ConsolePrintStream_1__
#define __Defined_java_io_ConsolePrintStream_1__

#include "jvm.h"
#include "java_lang_Class.h"
#include "java_io_OutputStream.h"

typedef struct java_io_ConsolePrintStream_1 {
	jobject fjava_lang_Object_klass;
} java_io_ConsolePrintStream_1;


extern JvmClass java_io_ConsolePrintStream_1_Class;
extern JvmClass ArrOf_java_io_ConsolePrintStream_1_Class;
extern JvmClass ArrOf_ArrOf_java_io_ConsolePrintStream_1_Class;
extern void JvmSetup_java_io_ConsolePrintStream_1();

extern jobject mjava_io_ConsolePrintStream_1__init____V(jobject pthis);
extern void mjava_io_ConsolePrintStream_1_write__I_V(jobject pthis, jint pb);

#endif
