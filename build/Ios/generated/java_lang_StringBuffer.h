#ifndef __Defined_java_lang_StringBuffer__
#define __Defined_java_lang_StringBuffer__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct java_lang_StringBuffer {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_StringBuffer_internal;
} java_lang_StringBuffer;


extern JvmClass java_lang_StringBuffer_Class;
extern JvmClass ArrOf_java_lang_StringBuffer_Class;
extern JvmClass ArrOf_ArrOf_java_lang_StringBuffer_Class;
extern void JvmSetup_java_lang_StringBuffer();

extern jobject mjava_lang_StringBuffer__init____V(jobject pthis);
extern jobject mjava_lang_StringBuffer__init___I_V(jobject pthis, jint plength);
extern jobject mjava_lang_StringBuffer_append__C_Ljava_lang_StringBuffer_(jobject pthis, jchar pc);
extern jobject mjava_lang_StringBuffer_append__Ljava_lang_Object__Ljava_lang_StringBuffer_(jobject pthis, jobject pobj);
extern jobject mjava_lang_StringBuffer_append__Ljava_lang_String__Ljava_lang_StringBuffer_(jobject pthis, jobject pstr);
extern jobject mjava_lang_StringBuffer_toString___Ljava_lang_String_(jobject pthis);

#endif
