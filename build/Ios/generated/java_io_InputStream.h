#ifndef __Defined_java_io_InputStream__
#define __Defined_java_io_InputStream__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Closeable.h"
#include "java_lang_Class.h"

typedef struct java_io_InputStream {
	jobject fjava_lang_Object_klass;
} java_io_InputStream;


extern JvmClass java_io_InputStream_Class;
extern JvmClass ArrOf_java_io_InputStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_InputStream_Class;
extern void JvmSetup_java_io_InputStream();

extern jobject mjava_io_InputStream__init____V(jobject pthis);
extern void mjava_io_InputStream_close___V(jobject pthis);
extern void virtual_mjava_io_InputStream_close___V(jobject pthis);

#endif
