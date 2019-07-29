#ifndef __Defined_java_lang_Character__
#define __Defined_java_lang_Character__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_lang_CharSequence.h"

typedef struct java_lang_Character {
	jobject fjava_lang_Object_klass;
	jchar fjava_lang_Character_value;
} java_lang_Character;

extern jobject fjava_lang_Character_TYPE;
extern jint fjava_lang_Character_MAX_RADIX;
extern jchar fjava_lang_Character_MAX_VALUE;
extern jint fjava_lang_Character_MIN_RADIX;
extern jchar fjava_lang_Character_MIN_VALUE;
extern jchar fjava_lang_Character_MIN_HIGH_SURROGATE;
extern jchar fjava_lang_Character_MAX_HIGH_SURROGATE;
extern jchar fjava_lang_Character_MIN_LOW_SURROGATE;
extern jchar fjava_lang_Character_MAX_LOW_SURROGATE;
extern jchar fjava_lang_Character_MIN_SURROGATE;
extern jchar fjava_lang_Character_MAX_SURROGATE;
extern jint fjava_lang_Character_MIN_SUPPLEMENTARY_CODE_POINT;
extern jint fjava_lang_Character_MIN_CODE_POINT;
extern jint fjava_lang_Character_MAX_CODE_POINT;
extern jint fjava_lang_Character_SIZE;

extern JvmClass java_lang_Character_Class;
extern JvmClass ArrOf_java_lang_Character_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Character_Class;
extern void JvmSetup_java_lang_Character();

extern jobject mjava_lang_Character__init___C_V(jobject pthis, jchar pvalue);
extern jchar mjava_lang_Character_charValue___C(jobject pthis);
extern jint mjava_lang_Character_digit__CI_I(jchar pch, jint pradix);
extern jint mjava_lang_Character_digit__II_I(jint pcodePoint, jint pradix);
extern jbool mjava_lang_Character_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jint mjava_lang_Character_hashCode___I(jobject pthis);
extern jbool mjava_lang_Character_isDigit__C_Z(jchar pch);
extern jbool mjava_lang_Character_isDigit__I_Z(jint pcodePoint);
extern jbool mjava_lang_Character_isLowerCase__C_Z(jchar pch);
extern jbool mjava_lang_Character_isLowerCase__I_Z(jint pcodePoint);
extern jbool mjava_lang_Character_isUpperCase__C_Z(jchar pch);
extern jbool mjava_lang_Character_isUpperCase__I_Z(jint pcodePoint);
extern jchar mjava_lang_Character_toLowerCase__C_C(jchar pch);
extern jint mjava_lang_Character_toLowerCase__I_I(jint pcodePoint);
extern jobject mjava_lang_Character_toString___Ljava_lang_String_(jobject pthis);
extern jchar mjava_lang_Character_toUpperCase__C_C(jchar pch);
extern jint mjava_lang_Character_toUpperCase__I_I(jint pcodePoint);
extern jbool mjava_lang_Character_isValidCodePoint__I_Z(jint pcodePoint);
extern jbool mjava_lang_Character_isSupplementaryCodePoint__I_Z(jint pcodePoint);
extern jbool mjava_lang_Character_isHighSurrogate__C_Z(jchar pch);
extern jbool mjava_lang_Character_isLowSurrogate__C_Z(jchar pch);
extern jbool mjava_lang_Character_isSurrogatePair__CC_Z(jchar phigh, jchar plow);
extern jint mjava_lang_Character_charCount__I_I(jint pcodePoint);
extern jint mjava_lang_Character_toCodePoint__CC_I(jchar phigh, jchar plow);
extern jint mjava_lang_Character_codePointAt__Ljava_lang_CharSequence_I_I(jobject pseq, jint pindex);
extern jint mjava_lang_Character_codePointAt___CI_I(jobject pseq, jint pindex);
extern jint mjava_lang_Character_codePointAt___CII_I(jobject pseq, jint pindex, jint plimit);
extern jint mjava_lang_Character_codePointBefore__Ljava_lang_CharSequence_I_I(jobject pseq, jint pindex);
extern jint mjava_lang_Character_codePointBefore___CI_I(jobject pseq, jint pindex);
extern jint mjava_lang_Character_codePointBefore___CII_I(jobject pseq, jint pindex, jint pstart);
extern jint mjava_lang_Character_toChars__I_CI_I(jint pcodePoint, jobject pdst, jint pdstIndex);
extern jobject mjava_lang_Character_toChars__I__C(jint pcodePoint);
extern jint mjava_lang_Character_codePointCount__Ljava_lang_CharSequence_II_I(jobject pseq, jint pbeginIndex, jint pendIndex);
extern jint mjava_lang_Character_codePointCount___CII_I(jobject pseq, jint poffset, jint pcount);
extern jint mjava_lang_Character_offsetByCodePoints__Ljava_lang_CharSequence_II_I(jobject pseq, jint pindex, jint pcodePointOffset);
extern jint mjava_lang_Character_offsetByCodePoints___CIIII_I(jobject pseq, jint pstart, jint pcount, jint pindex, jint pcodePointOffset);
extern jchar mjava_lang_Character_reverseBytes__C_C(jchar pc);
extern jobject mjava_lang_Character_valueOf__C_Ljava_lang_Character_(jchar pi);
extern jbool mjava_lang_Character_isWhitespace__C_Z(jchar pc);
extern jbool mjava_lang_Character_isWhitespace__I_Z(jint pcodePoint);
extern jobject mjava_lang_Character_toString__C_Ljava_lang_String_(jchar pvalue);
extern void mjava_lang_Character__clinit____V();

#endif
