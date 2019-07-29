#ifndef __Defined_java_io_FilterOutputStream__
#define __Defined_java_io_FilterOutputStream__

#include "jvm.h"
#include "java_lang_Class.h"
#include "java_io_OutputStream.h"

typedef struct java_io_FilterOutputStream {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_FilterOutputStream_out;
} java_io_FilterOutputStream;


extern JvmClass java_io_FilterOutputStream_Class;
extern JvmClass ArrOf_java_io_FilterOutputStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_FilterOutputStream_Class;
extern void JvmSetup_java_io_FilterOutputStream();

extern jobject mjava_io_FilterOutputStream__init___Ljava_io_OutputStream__V(jobject pthis, jobject pout);
extern void mjava_io_FilterOutputStream_close___V(jobject pthis);
extern void mjava_io_FilterOutputStream_flush___V(jobject pthis);
extern void mjava_io_FilterOutputStream_write___BII_V(jobject pthis, jobject pbuffer, jint poffset, jint plength);
extern void mjava_io_FilterOutputStream_write__I_V(jobject pthis, jint poneByte);

#endif
