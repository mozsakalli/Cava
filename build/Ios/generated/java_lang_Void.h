#ifndef __Defined_java_lang_Void__
#define __Defined_java_lang_Void__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_Void {
	jobject fjava_lang_Object_klass;
} java_lang_Void;

extern jobject fjava_lang_Void_TYPE;

extern JvmClass java_lang_Void_Class;
extern JvmClass ArrOf_java_lang_Void_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Void_Class;
extern void JvmSetup_java_lang_Void();

extern jobject mjava_lang_Void__init____V(jobject pthis);
extern void mjava_lang_Void__clinit____V();

#endif
