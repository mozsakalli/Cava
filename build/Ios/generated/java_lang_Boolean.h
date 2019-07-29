#ifndef __Defined_java_lang_Boolean__
#define __Defined_java_lang_Boolean__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct java_lang_Boolean {
	jobject fjava_lang_Object_klass;
	jbool fjava_lang_Boolean_value;
} java_lang_Boolean;

extern jobject fjava_lang_Boolean_TYPE;

extern JvmClass java_lang_Boolean_Class;
extern JvmClass ArrOf_java_lang_Boolean_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Boolean_Class;
extern void JvmSetup_java_lang_Boolean();

extern jobject mjava_lang_Boolean__init___Z_V(jobject pthis, jbool pvalue);
extern jbool mjava_lang_Boolean_booleanValue___Z(jobject pthis);
extern jbool mjava_lang_Boolean_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jint mjava_lang_Boolean_hashCode___I(jobject pthis);
extern jobject mjava_lang_Boolean_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(jbool pb);
extern jobject mjava_lang_Boolean_valueOf__Ljava_lang_String__Ljava_lang_Boolean_(jobject pb);
extern jbool mjava_lang_Boolean_parseBoolean__Ljava_lang_String__Z(jobject ps);
extern jint mjava_lang_Boolean_compareTo__Ljava_lang_Boolean__I(jobject pthis, jobject pb2);
extern void mjava_lang_Boolean__clinit____V();

#endif
