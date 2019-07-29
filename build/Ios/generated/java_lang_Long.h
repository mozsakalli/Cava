#ifndef __Defined_java_lang_Long__
#define __Defined_java_lang_Long__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_NumberFormatException.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Long {
	jobject fjava_lang_Object_klass;
	jlong fjava_lang_Long_value;
} java_lang_Long;

extern jlong fjava_lang_Long_serialVersionUID;
extern jlong fjava_lang_Long_MAX_VALUE;
extern jlong fjava_lang_Long_MIN_VALUE;
extern jobject fjava_lang_Long_TYPE;
extern jint fjava_lang_Long_SIZE;

extern JvmClass java_lang_Long_Class;
extern JvmClass ArrOf_java_lang_Long_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Long_Class;
extern void JvmSetup_java_lang_Long();

extern jobject mjava_lang_Long__init___J_V(jobject pthis, jlong pvalue);
extern jobject mjava_lang_Long__init___Ljava_lang_String__V(jobject pthis, jobject pstring);
extern jbyte mjava_lang_Long_byteValue___B(jobject pthis);
extern jint mjava_lang_Long_compareTo__Ljava_lang_Long__I(jobject pthis, jobject pobject);
extern jint mjava_lang_Long_compare__JJ_I(jlong plhs, jlong prhs);
extern jobject mjava_lang_Long_invalidLong__Ljava_lang_String__Ljava_lang_NumberFormatException_(jobject ps);
extern jobject mjava_lang_Long_decode__Ljava_lang_String__Ljava_lang_Long_(jobject pstring);
extern jdouble mjava_lang_Long_doubleValue___D(jobject pthis);
extern jbool mjava_lang_Long_equals__Ljava_lang_Object__Z(jobject pthis, jobject po);
extern jfloat mjava_lang_Long_floatValue___F(jobject pthis);
extern jobject mjava_lang_Long_getLong__Ljava_lang_String__Ljava_lang_Long_(jobject pstring);
extern jobject mjava_lang_Long_getLong__Ljava_lang_String_J_Ljava_lang_Long_(jobject pstring, jlong pdefaultValue);
extern jobject mjava_lang_Long_getLong__Ljava_lang_String_Ljava_lang_Long__Ljava_lang_Long_(jobject pstring, jobject pdefaultValue);
extern jint mjava_lang_Long_hashCode___I(jobject pthis);
extern jint mjava_lang_Long_intValue___I(jobject pthis);
extern jlong mjava_lang_Long_longValue___J(jobject pthis);
extern jlong mjava_lang_Long_parseLong__Ljava_lang_String__J(jobject pstring);
extern jlong mjava_lang_Long_parseLong__Ljava_lang_String_I_J(jobject pstring, jint pradix);
extern jlong mjava_lang_Long_parse__Ljava_lang_String_IIZ_J(jobject pstring, jint poffset, jint pradix, jbool pnegative);
extern jshort mjava_lang_Long_shortValue___S(jobject pthis);
extern jobject mjava_lang_Long_toBinaryString__J_Ljava_lang_String_(jlong pv);
extern jobject mjava_lang_Long_toHexString__J_Ljava_lang_String_(jlong pv);
extern jobject mjava_lang_Long_toOctalString__J_Ljava_lang_String_(jlong pv);
extern jobject mjava_lang_Long_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Long_toString__J_Ljava_lang_String_(jlong pn);
extern jobject mjava_lang_Long_toString__JI_Ljava_lang_String_(jlong pv, jint pradix);
extern jobject mjava_lang_Long_valueOf__Ljava_lang_String__Ljava_lang_Long_(jobject pstring);
extern jobject mjava_lang_Long_valueOf__Ljava_lang_String_I_Ljava_lang_Long_(jobject pstring, jint pradix);
extern jlong mjava_lang_Long_highestOneBit__J_J(jlong pv);
extern jlong mjava_lang_Long_lowestOneBit__J_J(jlong pv);
extern jint mjava_lang_Long_numberOfLeadingZeros__J_I(jlong pv);
extern jint mjava_lang_Long_numberOfTrailingZeros__J_I(jlong pv);
extern jint mjava_lang_Long_bitCount__J_I(jlong pv);
extern jlong mjava_lang_Long_rotateLeft__JI_J(jlong pv, jint pdistance);
extern jlong mjava_lang_Long_rotateRight__JI_J(jlong pv, jint pdistance);
extern jlong mjava_lang_Long_reverseBytes__J_J(jlong pv);
extern jlong mjava_lang_Long_reverse__J_J(jlong pv);
extern jint mjava_lang_Long_signum__J_I(jlong pv);
extern jobject mjava_lang_Long_valueOf__J_Ljava_lang_Long_(jlong pv);
extern jint mjava_lang_Long_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Long__clinit____V();

#endif
