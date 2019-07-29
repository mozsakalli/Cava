#ifndef __Defined_java_lang_String__
#define __Defined_java_lang_String__

#include "jvm.h"
#include "java_lang_StringIndexOutOfBoundsException.h"
#include "java_lang_Object.h"
#include "java_lang_Comparable.h"
#include "java_util_ArrayList.h"
#include "java_lang_Class.h"
#include "java_lang_CharSequence.h"

typedef struct java_lang_String {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_String_value;
	jint fjava_lang_String_offset;
	jint fjava_lang_String_count;
	jint fjava_lang_String_hashCode;
} java_lang_String;


extern JvmClass java_lang_String_Class;
extern JvmClass ArrOf_java_lang_String_Class;
extern JvmClass ArrOf_ArrOf_java_lang_String_Class;
extern void JvmSetup_java_lang_String();

extern jobject mjava_lang_String__init____V(jobject pthis);
extern jobject mjava_lang_String__init____BII_V(jobject pthis, jobject pbytes, jint poff, jint plen);
extern jobject mjava_lang_String_bytesToChars___BIILjava_lang_String___C(jobject pbytes, jint poffset, jint plength, jobject pencoding);
extern jobject mjava_lang_String__init____C_V(jobject pthis, jobject pvalue);
extern jobject mjava_lang_String_failedBoundsCheck__III_Ljava_lang_StringIndexOutOfBoundsException_(jobject pthis, jint parrayLength, jint poffset, jint pcount);
extern jobject mjava_lang_String__init____CII_V(jobject pthis, jobject pdata, jint poffset, jint pcharCount);
extern jobject mjava_lang_String__init___II_C_V(jobject pthis, jint poffset, jint pcharCount, jobject pdata);
extern jchar mjava_lang_String_charAt__I_C(jobject pthis, jint pindex);
extern jint mjava_lang_String_compareTo__Ljava_lang_String__I(jobject pthis, jobject panotherString);
extern jbool mjava_lang_String_endsWith__Ljava_lang_String__Z(jobject pthis, jobject psuffix);
extern jbool mjava_lang_String_equals__Ljava_lang_Object__Z(jobject pthis, jobject panObject);
extern jbool mjava_lang_String_equalsIgnoreCase__Ljava_lang_String__Z(jobject pthis, jobject ps);
extern jobject mjava_lang_String_getBytes____B(jobject pthis);
extern jobject mjava_lang_String_getBytes__Ljava_lang_String___B(jobject pthis, jobject penc);
extern void mjava_lang_String_getChars__II_CI_V(jobject pthis, jint psrcBegin, jint psrcEnd, jobject pdst, jint pdstBegin);
extern jint mjava_lang_String_hashCode___I(jobject pthis);
extern jint mjava_lang_String_indexOf__I_I(jobject pthis, jint pch);
extern jint mjava_lang_String_indexOf__II_I(jobject pthis, jint pch, jint pfromIndex);
extern jint mjava_lang_String_lastIndexOf__I_I(jobject pthis, jint pch);
extern jint mjava_lang_String_length___I(jobject pthis);
extern jbool mjava_lang_String_regionMatches__ILjava_lang_String_II_Z(jobject pthis, jint pthisStart, jobject pstring, jint pstart, jint plength);
extern jbool mjava_lang_String_regionMatches__ZILjava_lang_String_II_Z(jobject pthis, jbool pignoreCase, jint pthisStart, jobject pstring, jint pstart, jint plength);
extern jchar mjava_lang_String_foldCase__C_C(jobject pthis, jchar pch);
extern jobject mjava_lang_String_replace__CC_Ljava_lang_String_(jobject pthis, jchar poldChar, jchar pnewChar);
extern jobject mjava_lang_String_substring__I_Ljava_lang_String_(jobject pthis, jint pstart);
extern jobject mjava_lang_String_substring__II_Ljava_lang_String_(jobject pthis, jint pstart, jint pend);
extern jobject mjava_lang_String_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_String_trim___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_String_valueOf__C_Ljava_lang_String_(jchar pvalue);
extern jobject mjava_lang_String_valueOf__I_Ljava_lang_String_(jint pi);
extern jobject mjava_lang_String_valueOf__Ljava_lang_Object__Ljava_lang_String_(jobject pobj);
extern jint mjava_lang_String_compareTo__Ljava_lang_Object__I(jobject pthis, jobject pp0);
extern void mjava_lang_String__clinit____V();

#endif
