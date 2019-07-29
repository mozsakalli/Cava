#ifndef __Defined_java_lang_StringToReal_StringExponentPair__
#define __Defined_java_lang_StringToReal_StringExponentPair__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_lang_StringToReal_1.h"

typedef struct java_lang_StringToReal_StringExponentPair {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_StringToReal_StringExponentPair_s;
	jlong fjava_lang_StringToReal_StringExponentPair_e;
	jbool fjava_lang_StringToReal_StringExponentPair_negative;
	jbool fjava_lang_StringToReal_StringExponentPair_infinity;
	jbool fjava_lang_StringToReal_StringExponentPair_zero;
} java_lang_StringToReal_StringExponentPair;


extern JvmClass java_lang_StringToReal_StringExponentPair_Class;
extern JvmClass ArrOf_java_lang_StringToReal_StringExponentPair_Class;
extern JvmClass ArrOf_ArrOf_java_lang_StringToReal_StringExponentPair_Class;
extern void JvmSetup_java_lang_StringToReal_StringExponentPair();

extern jobject mjava_lang_StringToReal_StringExponentPair__init____V(jobject pthis);
extern jfloat mjava_lang_StringToReal_StringExponentPair_specialValue___F(jobject pthis);
extern jobject mjava_lang_StringToReal_StringExponentPair__init___Ljava_lang_StringToReal$1__V(jobject pthis, jobject px0);

#endif
