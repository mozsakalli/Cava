#ifndef __Defined_java_lang_Byte__
#define __Defined_java_lang_Byte__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Byte {
	jobject fjava_lang_Object_klass;
	jbyte fjava_lang_Byte_value;
} java_lang_Byte;

extern jobject fjava_lang_Byte_TYPE;
extern jbyte fjava_lang_Byte_MIN_VALUE;
extern jbyte fjava_lang_Byte_MAX_VALUE;

extern JvmClass java_lang_Byte_Class;
extern JvmClass ArrOf_java_lang_Byte_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Byte_Class;
extern void JvmSetup_java_lang_Byte();

extern jobject mjava_lang_Byte__init___B_V(jobject pthis, jbyte pvalue);
extern jobject mjava_lang_Byte_valueOf__B_Ljava_lang_Byte_(jbyte pvalue);
extern jbool mjava_lang_Byte_equals__Ljava_lang_Object__Z(jobject pthis, jobject po);
extern jint mjava_lang_Byte_hashCode___I(jobject pthis);
extern jobject mjava_lang_Byte_toString___Ljava_lang_String_(jobject pthis);
extern jint mjava_lang_Byte_compareTo__Ljava_lang_Byte__I(jobject pthis, jobject po);
extern jobject mjava_lang_Byte_toString__BI_Ljava_lang_String_(jbyte pv, jint pradix);
extern jobject mjava_lang_Byte_toString__B_Ljava_lang_String_(jbyte pv);
extern jbyte mjava_lang_Byte_parseByte__Ljava_lang_String__B(jobject ps);
extern jbyte mjava_lang_Byte_byteValue___B(jobject pthis);
extern jshort mjava_lang_Byte_shortValue___S(jobject pthis);
extern jint mjava_lang_Byte_intValue___I(jobject pthis);
extern jlong mjava_lang_Byte_longValue___J(jobject pthis);
extern jfloat mjava_lang_Byte_floatValue___F(jobject pthis);
extern jdouble mjava_lang_Byte_doubleValue___D(jobject pthis);
extern jint mjava_lang_Byte_toUnsignedInt__B_I(jbyte px);
extern jint mjava_lang_Byte_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Byte__clinit____V();

#endif
