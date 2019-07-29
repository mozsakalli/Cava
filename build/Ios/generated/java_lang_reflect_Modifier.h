#ifndef __Defined_java_lang_reflect_Modifier__
#define __Defined_java_lang_reflect_Modifier__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_reflect_Modifier {
	jobject fjava_lang_Object_klass;
} java_lang_reflect_Modifier;


extern JvmClass java_lang_reflect_Modifier_Class;
extern JvmClass ArrOf_java_lang_reflect_Modifier_Class;
extern JvmClass ArrOf_ArrOf_java_lang_reflect_Modifier_Class;
extern void JvmSetup_java_lang_reflect_Modifier();

extern jobject mjava_lang_reflect_Modifier__init____V(jobject pthis);
extern jbool mjava_lang_reflect_Modifier_isStatic__I_Z(jint pmod);

#endif
