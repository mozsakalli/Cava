#ifndef __Defined_java_lang_StringToReal__
#define __Defined_java_lang_StringToReal__

#include "jvm.h"
#include "java_lang_StringToReal_StringExponentPair.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_NumberFormatException.h"
#include "java_lang_Class.h"

typedef struct java_lang_StringToReal {
	jobject fjava_lang_Object_klass;
} java_lang_StringToReal;


extern JvmClass java_lang_StringToReal_Class;
extern JvmClass ArrOf_java_lang_StringToReal_Class;
extern JvmClass ArrOf_ArrOf_java_lang_StringToReal_Class;
extern void JvmSetup_java_lang_StringToReal();

extern jobject mjava_lang_StringToReal__init____V(jobject pthis);
extern jdouble mjava_lang_StringToReal_parseDblImpl__Ljava_lang_String_I_D(jobject ps, jint pe);
extern jfloat mjava_lang_StringToReal_parseFltImpl__Ljava_lang_String_I_F(jobject ps, jint pe);
extern jobject mjava_lang_StringToReal_invalidReal__Ljava_lang_String_Z_Ljava_lang_NumberFormatException_(jobject ps, jbool pisDouble);
extern jobject mjava_lang_StringToReal_initialParse__Ljava_lang_String_IZ_Ljava_lang_StringToReal$StringExponentPair_(jobject ps, jint plength, jbool pisDouble);
extern jfloat mjava_lang_StringToReal_parseName__Ljava_lang_String_Z_F(jobject pname, jbool pisDouble);
extern jdouble mjava_lang_StringToReal_parseDouble__Ljava_lang_String__D(jobject ps);
extern jfloat mjava_lang_StringToReal_parseFloat__Ljava_lang_String__F(jobject ps);

#endif
