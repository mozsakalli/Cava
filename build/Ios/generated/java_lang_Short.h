#ifndef __Defined_java_lang_Short__
#define __Defined_java_lang_Short__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Short {
	jobject fjava_lang_Object_klass;
	jshort fjava_lang_Short_value;
} java_lang_Short;

extern jobject fjava_lang_Short_TYPE;
extern jshort fjava_lang_Short_MIN_VALUE;
extern jshort fjava_lang_Short_MAX_VALUE;

extern JvmClass java_lang_Short_Class;
extern JvmClass ArrOf_java_lang_Short_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Short_Class;
extern void JvmSetup_java_lang_Short();

extern jobject mjava_lang_Short__init___S_V(jobject pthis, jshort pvalue);
extern jobject mjava_lang_Short_valueOf__S_Ljava_lang_Short_(jshort pvalue);
extern jint mjava_lang_Short_compareTo__Ljava_lang_Short__I(jobject pthis, jobject po);
extern jbool mjava_lang_Short_equals__Ljava_lang_Object__Z(jobject pthis, jobject po);
extern jint mjava_lang_Short_hashCode___I(jobject pthis);
extern jobject mjava_lang_Short_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Short_toString__SI_Ljava_lang_String_(jshort pv, jint pradix);
extern jobject mjava_lang_Short_toString__S_Ljava_lang_String_(jshort pv);
extern jbyte mjava_lang_Short_byteValue___B(jobject pthis);
extern jshort mjava_lang_Short_shortValue___S(jobject pthis);
extern jint mjava_lang_Short_intValue___I(jobject pthis);
extern jlong mjava_lang_Short_longValue___J(jobject pthis);
extern jfloat mjava_lang_Short_floatValue___F(jobject pthis);
extern jdouble mjava_lang_Short_doubleValue___D(jobject pthis);
extern jint mjava_lang_Short_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Short__clinit____V();

#endif
