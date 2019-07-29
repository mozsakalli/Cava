#ifndef __Defined_java_io_Closeable__
#define __Defined_java_io_Closeable__

#include "jvm.h"
#include "java_lang_AutoCloseable.h"
#include "java_lang_Class.h"

typedef struct java_io_Closeable {
	jobject fjava_lang_Object_klass;
} java_io_Closeable;


extern JvmClass java_io_Closeable_Class;
extern JvmClass ArrOf_java_io_Closeable_Class;
extern JvmClass ArrOf_ArrOf_java_io_Closeable_Class;
extern void JvmSetup_java_io_Closeable();

extern void interface_mjava_io_Closeable_close___V(jobject pthis);

#endif
