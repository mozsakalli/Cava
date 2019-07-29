#ifndef __Defined_java_lang_Double__
#define __Defined_java_lang_Double__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Number.h"
#include "java_lang_Comparable.h"
#include "java_lang_Class.h"

typedef struct java_lang_Double {
	jobject fjava_lang_Object_klass;
	jdouble fjava_lang_Double_value;
} java_lang_Double;

extern jint fjava_lang_Double_EXPONENT_BIAS;
extern jint fjava_lang_Double_EXPONENT_BITS;
extern jint fjava_lang_Double_MANTISSA_BITS;
extern jint fjava_lang_Double_NON_MANTISSA_BITS;
extern jlong fjava_lang_Double_SIGN_MASK;
extern jlong fjava_lang_Double_EXPONENT_MASK;
extern jlong fjava_lang_Double_MANTISSA_MASK;
extern jlong fjava_lang_Double_serialVersionUID;
extern jdouble fjava_lang_Double_MAX_VALUE;
extern jdouble fjava_lang_Double_MIN_VALUE;
extern jdouble fjava_lang_Double_NaN;
extern jdouble fjava_lang_Double_POSITIVE_INFINITY;
extern jdouble fjava_lang_Double_NEGATIVE_INFINITY;
extern jdouble fjava_lang_Double_MIN_NORMAL;
extern jint fjava_lang_Double_MAX_EXPONENT;
extern jint fjava_lang_Double_MIN_EXPONENT;
extern jobject fjava_lang_Double_TYPE;
extern jint fjava_lang_Double_SIZE;

extern JvmClass java_lang_Double_Class;
extern JvmClass ArrOf_java_lang_Double_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Double_Class;
extern void JvmSetup_java_lang_Double();

extern jobject mjava_lang_Double__init___D_V(jobject pthis, jdouble pvalue);
extern jobject mjava_lang_Double__init___Ljava_lang_String__V(jobject pthis, jobject pstring);
extern jint mjava_lang_Double_compareTo__Ljava_lang_Double__I(jobject pthis, jobject pobject);
extern jbyte mjava_lang_Double_byteValue___B(jobject pthis);
extern jlong mjava_lang_Double_doubleToLongBits__D_J(jdouble pvalue);
extern jlong mjava_lang_Double_doubleToRawLongBits__D_J(jdouble pvalue);
extern jdouble mjava_lang_Double_doubleValue___D(jobject pthis);
extern jbool mjava_lang_Double_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jfloat mjava_lang_Double_floatValue___F(jobject pthis);
extern jint mjava_lang_Double_hashCode___I(jobject pthis);
extern jint mjava_lang_Double_intValue___I(jobject pthis);
extern jbool mjava_lang_Double_isInfinite___Z(jobject pthis);
extern jbool mjava_lang_Double_isInfinite__D_Z(jdouble pd);
extern jbool mjava_lang_Double_isNaN___Z(jobject pthis);
extern jbool mjava_lang_Double_isNaN__D_Z(jdouble pd);
extern jdouble mjava_lang_Double_longBitsToDouble__J_D(jlong pbits);
extern jlong mjava_lang_Double_longValue___J(jobject pthis);
extern jdouble mjava_lang_Double_parseDouble__Ljava_lang_String__D(jobject pstring);
extern jshort mjava_lang_Double_shortValue___S(jobject pthis);
extern jobject mjava_lang_Double_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Double_toString__D_Ljava_lang_String_(jdouble pd);
extern jobject mjava_lang_Double_valueOf__Ljava_lang_String__Ljava_lang_Double_(jobject pstring);
extern jint mjava_lang_Double_compare__DD_I(jdouble pdouble1, jdouble pdouble2);
extern jobject mjava_lang_Double_valueOf__D_Ljava_lang_Double_(jdouble pd);
extern jobject mjava_lang_Double_toHexString__D_Ljava_lang_String_(jdouble pd);
extern jint mjava_lang_Double_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_Double__clinit____V();

#endif
