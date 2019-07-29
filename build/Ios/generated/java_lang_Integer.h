#ifndef __Defined_java_lang_Integer__
#define __Defined_java_lang_Integer__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_NumberFormatException.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Integer {
	jobject fjava_lang_Object_klass;
	jint fjava_lang_Integer_value;
} java_lang_Integer;

extern jlong fjava_lang_Integer_serialVersionUID;
extern jint fjava_lang_Integer_MAX_VALUE;
extern jint fjava_lang_Integer_MIN_VALUE;
extern jint fjava_lang_Integer_SIZE;
extern jobject fjava_lang_Integer_TYPE;

extern JvmClass java_lang_Integer_Class;
extern JvmClass ArrOf_java_lang_Integer_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Integer_Class;
extern void JvmSetup_java_lang_Integer();

extern jobject mjava_lang_Integer__init___I_V(jobject pthis, jint pvalue);
extern jobject mjava_lang_Integer__init___Ljava_lang_String__V(jobject pthis, jobject pstring);
extern jbyte mjava_lang_Integer_byteValue___B(jobject pthis);
extern jint mjava_lang_Integer_compareTo__Ljava_lang_Integer__I(jobject pthis, jobject pobject);
extern jint mjava_lang_Integer_compare__II_I(jint plhs, jint prhs);
extern jobject mjava_lang_Integer_invalidInt__Ljava_lang_String__Ljava_lang_NumberFormatException_(jobject ps);
extern jobject mjava_lang_Integer_decode__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring);
extern jdouble mjava_lang_Integer_doubleValue___D(jobject pthis);
extern jbool mjava_lang_Integer_equals__Ljava_lang_Object__Z(jobject pthis, jobject po);
extern jfloat mjava_lang_Integer_floatValue___F(jobject pthis);
extern jobject mjava_lang_Integer_getInteger__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring);
extern jobject mjava_lang_Integer_getInteger__Ljava_lang_String_I_Ljava_lang_Integer_(jobject pstring, jint pdefaultValue);
extern jobject mjava_lang_Integer_getInteger__Ljava_lang_String_Ljava_lang_Integer__Ljava_lang_Integer_(jobject pstring, jobject pdefaultValue);
extern jint mjava_lang_Integer_hashCode___I(jobject pthis);
extern jint mjava_lang_Integer_intValue___I(jobject pthis);
extern jlong mjava_lang_Integer_longValue___J(jobject pthis);
extern jint mjava_lang_Integer_parseInt__Ljava_lang_String__I(jobject pstring);
extern jint mjava_lang_Integer_parseInt__Ljava_lang_String_I_I(jobject pstring, jint pradix);
extern jint mjava_lang_Integer_parse__Ljava_lang_String_IIZ_I(jobject pstring, jint poffset, jint pradix, jbool pnegative);
extern jshort mjava_lang_Integer_shortValue___S(jobject pthis);
extern jobject mjava_lang_Integer_toBinaryString__I_Ljava_lang_String_(jint pi);
extern jobject mjava_lang_Integer_toHexString__I_Ljava_lang_String_(jint pi);
extern jobject mjava_lang_Integer_toOctalString__I_Ljava_lang_String_(jint pi);
extern jobject mjava_lang_Integer_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Integer_toString__I_Ljava_lang_String_(jint pi);
extern jobject mjava_lang_Integer_toString__II_Ljava_lang_String_(jint pi, jint pradix);
extern jobject mjava_lang_Integer_valueOf__Ljava_lang_String__Ljava_lang_Integer_(jobject pstring);
extern jobject mjava_lang_Integer_valueOf__Ljava_lang_String_I_Ljava_lang_Integer_(jobject pstring, jint pradix);
extern jint mjava_lang_Integer_highestOneBit__I_I(jint pi);
extern jint mjava_lang_Integer_lowestOneBit__I_I(jint pi);
extern jint mjava_lang_Integer_numberOfLeadingZeros__I_I(jint pi);
extern jint mjava_lang_Integer_numberOfTrailingZeros__I_I(jint pi);
extern jint mjava_lang_Integer_bitCount__I_I(jint pi);
extern jint mjava_lang_Integer_rotateLeft__II_I(jint pi, jint pdistance);
extern jint mjava_lang_Integer_rotateRight__II_I(jint pi, jint pdistance);
extern jint mjava_lang_Integer_reverseBytes__I_I(jint pi);
extern jint mjava_lang_Integer_reverse__I_I(jint pi);
extern jint mjava_lang_Integer_signum__I_I(jint pi);
extern jobject mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(jint pi);
extern jint mjava_lang_Integer_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Integer__clinit____V();

#endif
