#ifndef __Defined_java_lang_Math__
#define __Defined_java_lang_Math__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"
#include <math.h>

typedef struct java_lang_Math {
	jobject fjava_lang_Object_klass;
} java_lang_Math;


extern JvmClass java_lang_Math_Class;
extern JvmClass ArrOf_java_lang_Math_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Math_Class;
extern void JvmSetup_java_lang_Math();

extern jobject mjava_lang_Math__init____V(jobject pthis);
extern jint mjava_lang_Math_max__II_I(jint pi1, jint pi2);
extern jint mjava_lang_Math_min__II_I(jint pi1, jint pi2);

#endif
