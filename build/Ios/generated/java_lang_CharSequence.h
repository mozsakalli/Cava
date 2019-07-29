#ifndef __Defined_java_lang_CharSequence__
#define __Defined_java_lang_CharSequence__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct java_lang_CharSequence {
	jobject fjava_lang_Object_klass;
} java_lang_CharSequence;


extern JvmClass java_lang_CharSequence_Class;
extern JvmClass ArrOf_java_lang_CharSequence_Class;
extern JvmClass ArrOf_ArrOf_java_lang_CharSequence_Class;
extern void JvmSetup_java_lang_CharSequence();

extern jint interface_mjava_lang_CharSequence_length___I(jobject pthis);
extern jchar interface_mjava_lang_CharSequence_charAt__I_C(jobject pthis, jint pp0);
extern jobject interface_mjava_lang_CharSequence_toString___Ljava_lang_String_(jobject pthis);

#endif
