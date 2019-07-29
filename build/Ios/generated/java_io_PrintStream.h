#ifndef __Defined_java_io_PrintStream__
#define __Defined_java_io_PrintStream__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_io_FilterOutputStream.h"
#include "java_lang_Class.h"
#include "java_io_OutputStream.h"

typedef struct java_io_PrintStream {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_FilterOutputStream_out;
	jbool fjava_io_PrintStream_ioError;
	jbool fjava_io_PrintStream_autoFlush;
	jobject fjava_io_PrintStream_encoding;
} java_io_PrintStream;


extern JvmClass java_io_PrintStream_Class;
extern JvmClass ArrOf_java_io_PrintStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_PrintStream_Class;
extern void JvmSetup_java_io_PrintStream();

extern jobject mjava_io_PrintStream__init___Ljava_io_OutputStream__V(jobject pthis, jobject pout);
extern void mjava_io_PrintStream_close___V(jobject pthis);
extern void mjava_io_PrintStream_flush___V(jobject pthis);
extern void mjava_io_PrintStream_newline___V(jobject pthis);
extern void mjava_io_PrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_PrintStream_println__Ljava_lang_Object__V(jobject pthis, jobject po);
extern void mjava_io_PrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_PrintStream_setError___V(jobject pthis);
extern void mjava_io_PrintStream_write___BII_V(jobject pthis, jobject pbuffer, jint poffset, jint plength);
extern void mjava_io_PrintStream_write__I_V(jobject pthis, jint poneByte);
extern void virtual_mjava_io_PrintStream_print__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void virtual_mjava_io_PrintStream_println__Ljava_lang_String__V(jobject pthis, jobject pstr);

#endif
