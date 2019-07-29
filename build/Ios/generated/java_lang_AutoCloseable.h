#ifndef __Defined_java_lang_AutoCloseable__
#define __Defined_java_lang_AutoCloseable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_AutoCloseable {
	jobject fjava_lang_Object_klass;
} java_lang_AutoCloseable;


extern JvmClass java_lang_AutoCloseable_Class;
extern JvmClass ArrOf_java_lang_AutoCloseable_Class;
extern JvmClass ArrOf_ArrOf_java_lang_AutoCloseable_Class;
extern void JvmSetup_java_lang_AutoCloseable();

extern void interface_mjava_lang_AutoCloseable_close___V(jobject pthis);

#endif
