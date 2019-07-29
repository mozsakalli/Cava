#ifndef __Defined_java_io_Serializable__
#define __Defined_java_io_Serializable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_io_Serializable {
	jobject fjava_lang_Object_klass;
} java_io_Serializable;


extern JvmClass java_io_Serializable_Class;
extern JvmClass ArrOf_java_io_Serializable_Class;
extern JvmClass ArrOf_ArrOf_java_io_Serializable_Class;
extern void JvmSetup_java_io_Serializable();


#endif
