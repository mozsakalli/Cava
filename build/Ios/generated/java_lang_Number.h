#ifndef __Defined_java_lang_Number__
#define __Defined_java_lang_Number__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Serializable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Number {
	jobject fjava_lang_Object_klass;
} java_lang_Number;


extern JvmClass java_lang_Number_Class;
extern JvmClass ArrOf_java_lang_Number_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Number_Class;
extern void JvmSetup_java_lang_Number();

extern jobject mjava_lang_Number__init____V(jobject pthis);
extern jbyte virtual_mjava_lang_Number_byteValue___B(jobject pthis);
extern jshort virtual_mjava_lang_Number_shortValue___S(jobject pthis);
extern jint virtual_mjava_lang_Number_intValue___I(jobject pthis);
extern jlong virtual_mjava_lang_Number_longValue___J(jobject pthis);
extern jfloat virtual_mjava_lang_Number_floatValue___F(jobject pthis);
extern jdouble virtual_mjava_lang_Number_doubleValue___D(jobject pthis);

#endif
