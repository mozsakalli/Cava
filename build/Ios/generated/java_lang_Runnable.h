#ifndef __Defined_java_lang_Runnable__
#define __Defined_java_lang_Runnable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_Runnable {
	jobject fjava_lang_Object_klass;
} java_lang_Runnable;


extern JvmClass java_lang_Runnable_Class;
extern JvmClass ArrOf_java_lang_Runnable_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Runnable_Class;
extern void JvmSetup_java_lang_Runnable();

extern void interface_mjava_lang_Runnable_run___V(jobject pthis);

#endif
