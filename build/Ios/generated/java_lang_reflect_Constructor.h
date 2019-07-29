#ifndef __Defined_java_lang_reflect_Constructor__
#define __Defined_java_lang_reflect_Constructor__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_reflect_Method.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct java_lang_reflect_Constructor {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_reflect_Method_declaringClass;
	jobject fjava_lang_reflect_Method_name;
	jobject fjava_lang_reflect_Method_type;
	jint fjava_lang_reflect_Method_modifiers;
	jobject fjava_lang_reflect_Method_parameters;
	jobject fjava_lang_reflect_Method_methodAddress;
	jobject fjava_lang_reflect_Method_dynamicWrapper;
} java_lang_reflect_Constructor;


extern JvmClass java_lang_reflect_Constructor_Class;
extern JvmClass ArrOf_java_lang_reflect_Constructor_Class;
extern JvmClass ArrOf_ArrOf_java_lang_reflect_Constructor_Class;
extern void JvmSetup_java_lang_reflect_Constructor();

extern jobject mjava_lang_reflect_Constructor__init____V(jobject pthis);
extern jobject mjava_lang_reflect_Constructor_newInstance___Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pinitargs);

#endif
