#ifndef __Defined_java_io_ConsolePrintStream__
#define __Defined_java_io_ConsolePrintStream__

#include "jvm.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_io_PrintStream.h"
#include "java_io_OutputStream.h"

typedef struct java_io_ConsolePrintStream {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_FilterOutputStream_out;
	jbool fjava_io_PrintStream_ioError;
	jbool fjava_io_PrintStream_autoFlush;
	jobject fjava_io_PrintStream_encoding;
	jobject fjava_io_ConsolePrintStream_buffer;
} java_io_ConsolePrintStream;


extern JvmClass java_io_ConsolePrintStream_Class;
extern JvmClass ArrOf_java_io_ConsolePrintStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_ConsolePrintStream_Class;
extern void JvmSetup_java_io_ConsolePrintStream();

extern jobject mjava_io_ConsolePrintStream__init____V(jobject pthis);
extern void mjava_io_ConsolePrintStream_printImpl__Ljava_lang_StringBuilder__V(jobject pthis, jobject pbuffer);
extern void mjava_io_ConsolePrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_ConsolePrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_ConsolePrintStream_flush___V(jobject pthis);
extern void mjava_io_ConsolePrintStream__clinit____V();

#endif
