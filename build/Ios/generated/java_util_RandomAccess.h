#ifndef __Defined_java_util_RandomAccess__
#define __Defined_java_util_RandomAccess__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_util_RandomAccess {
	jobject fjava_lang_Object_klass;
} java_util_RandomAccess;


extern JvmClass java_util_RandomAccess_Class;
extern JvmClass ArrOf_java_util_RandomAccess_Class;
extern JvmClass ArrOf_ArrOf_java_util_RandomAccess_Class;
extern void JvmSetup_java_util_RandomAccess();


#endif
