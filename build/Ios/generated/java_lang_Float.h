#ifndef __Defined_java_lang_Float__
#define __Defined_java_lang_Float__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"
#include <math.h>

typedef struct java_lang_Float {
	jobject fjava_lang_Object_klass;
	jfloat fjava_lang_Float_value;
} java_lang_Float;

extern jint fjava_lang_Float_EXPONENT_BIAS;
extern jint fjava_lang_Float_EXPONENT_BITS;
extern jint fjava_lang_Float_MANTISSA_BITS;
extern jint fjava_lang_Float_NON_MANTISSA_BITS;
extern jint fjava_lang_Float_SIGN_MASK;
extern jint fjava_lang_Float_EXPONENT_MASK;
extern jint fjava_lang_Float_MANTISSA_MASK;
extern jlong fjava_lang_Float_serialVersionUID;
extern jfloat fjava_lang_Float_MAX_VALUE;
extern jfloat fjava_lang_Float_MIN_VALUE;
extern jfloat fjava_lang_Float_NaN;
extern jfloat fjava_lang_Float_POSITIVE_INFINITY;
extern jfloat fjava_lang_Float_NEGATIVE_INFINITY;
extern jfloat fjava_lang_Float_MIN_NORMAL;
extern jint fjava_lang_Float_MAX_EXPONENT;
extern jint fjava_lang_Float_MIN_EXPONENT;
extern jobject fjava_lang_Float_TYPE;
extern jint fjava_lang_Float_SIZE;

extern JvmClass java_lang_Float_Class;
extern JvmClass ArrOf_java_lang_Float_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Float_Class;
extern void JvmSetup_java_lang_Float();

extern jobject mjava_lang_Float__init___F_V(jobject pthis, jfloat pvalue);
extern jobject mjava_lang_Float__init___D_V(jobject pthis, jdouble pvalue);
extern jobject mjava_lang_Float__init___Ljava_lang_String__V(jobject pthis, jobject pstring);
extern jint mjava_lang_Float_compareTo__Ljava_lang_Float__I(jobject pthis, jobject pobject);
extern jbyte mjava_lang_Float_byteValue___B(jobject pthis);
extern jdouble mjava_lang_Float_doubleValue___D(jobject pthis);
extern jbool mjava_lang_Float_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jint mjava_lang_Float_floatToIntBits__F_I(jfloat pvalue);
extern jint mjava_lang_Float_floatToRawIntBits__F_I(jfloat pvalue);
extern jfloat mjava_lang_Float_floatValue___F(jobject pthis);
extern jint mjava_lang_Float_hashCode___I(jobject pthis);
extern jfloat mjava_lang_Float_intBitsToFloat__I_F(jint pbits);
extern jint mjava_lang_Float_intValue___I(jobject pthis);
extern jbool mjava_lang_Float_isInfinite___Z(jobject pthis);
extern jbool mjava_lang_Float_isInfinite__F_Z(jfloat pf);
extern jbool mjava_lang_Float_isNaN___Z(jobject pthis);
extern jbool mjava_lang_Float_isNaN__F_Z(jfloat pf);
extern jlong mjava_lang_Float_longValue___J(jobject pthis);
extern jfloat mjava_lang_Float_parseFloat__Ljava_lang_String__F(jobject pstring);
extern jshort mjava_lang_Float_shortValue___S(jobject pthis);
extern jobject mjava_lang_Float_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Float_toString__F_Ljava_lang_String_(jfloat pf);
extern jobject mjava_lang_Float_valueOf__Ljava_lang_String__Ljava_lang_Float_(jobject pstring);
extern jint mjava_lang_Float_compare__FF_I(jfloat pfloat1, jfloat pfloat2);
extern jobject mjava_lang_Float_valueOf__F_Ljava_lang_Float_(jfloat pf);
extern jobject mjava_lang_Float_toHexString__F_Ljava_lang_String_(jfloat pf);
extern jint mjava_lang_Float_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Float__clinit____V();

#endif
