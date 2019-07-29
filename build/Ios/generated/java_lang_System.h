#ifndef __Defined_java_lang_System__
#define __Defined_java_lang_System__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_io_PrintStream.h"
#include <sys/time.h>
#include <time.h>

typedef struct java_lang_System {
	jobject fjava_lang_Object_klass;
} java_lang_System;


extern JvmClass java_lang_System_Class;
extern JvmClass ArrOf_java_lang_System_Class;
extern JvmClass ArrOf_ArrOf_java_lang_System_Class;
extern void JvmSetup_java_lang_System();

extern jobject mjava_lang_System__init____V(jobject pthis);
extern void mjava_lang_System_arraycopy__Ljava_lang_Object_ILjava_lang_Object_II_V(jobject psrc, jint psrcOffset, jobject pdst, jint pdstOffset, jint plength);
extern jobject mjava_lang_System_getProperty__Ljava_lang_String__Ljava_lang_String_(jobject pkey);
extern void mjava_lang_System__clinit____V();

#endif
