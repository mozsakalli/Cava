#ifndef __Defined_java_io_OutputStream__
#define __Defined_java_io_OutputStream__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Closeable.h"
#include "java_lang_Class.h"

typedef struct java_io_OutputStream {
	jobject fjava_lang_Object_klass;
} java_io_OutputStream;


extern JvmClass java_io_OutputStream_Class;
extern JvmClass ArrOf_java_io_OutputStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_OutputStream_Class;
extern void JvmSetup_java_io_OutputStream();

extern jobject mjava_io_OutputStream__init____V(jobject pthis);
extern void mjava_io_OutputStream_close___V(jobject pthis);
extern void mjava_io_OutputStream_flush___V(jobject pthis);
extern void mjava_io_OutputStream_write___B_V(jobject pthis, jobject pb);
extern void mjava_io_OutputStream_write___BII_V(jobject pthis, jobject pb, jint poff, jint plen);
extern void virtual_mjava_io_OutputStream_close___V(jobject pthis);
extern void virtual_mjava_io_OutputStream_flush___V(jobject pthis);
extern void virtual_mjava_io_OutputStream_write___BII_V(jobject pthis, jobject pb, jint poff, jint plen);
extern void virtual_mjava_io_OutputStream_write__I_V(jobject pthis, jint pp0);

#endif
