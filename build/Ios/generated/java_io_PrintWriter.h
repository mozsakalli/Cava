#ifndef __Defined_java_io_PrintWriter__
#define __Defined_java_io_PrintWriter__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_io_Writer.h"
#include "java_lang_Class.h"

typedef struct java_io_PrintWriter {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_Writer_lock;
	jbool fjava_io_PrintWriter_error;
	jbool fjava_io_PrintWriter_closed;
	jobject fjava_io_PrintWriter_out;
} java_io_PrintWriter;


extern JvmClass java_io_PrintWriter_Class;
extern JvmClass ArrOf_java_io_PrintWriter_Class;
extern JvmClass ArrOf_ArrOf_java_io_PrintWriter_Class;
extern void JvmSetup_java_io_PrintWriter();

extern void mjava_io_PrintWriter_flush___V(jobject pthis);
extern void mjava_io_PrintWriter_close___V(jobject pthis);
extern void mjava_io_PrintWriter_print__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_PrintWriter_write___CII_V(jobject pthis, jobject pcharArray, jint poffset, jint pcount);
extern void mjava_io_PrintWriter_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poffset, jint pcount);
extern void mjava_io_PrintWriter_write__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_PrintWriter__clinit____V();

#endif
