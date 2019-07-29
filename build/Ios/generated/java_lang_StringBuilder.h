#ifndef __Defined_java_lang_StringBuilder__
#define __Defined_java_lang_StringBuilder__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_lang_CharSequence.h"

typedef struct java_lang_StringBuilder {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_StringBuilder_value;
	jint fjava_lang_StringBuilder_count;
} java_lang_StringBuilder;


extern JvmClass java_lang_StringBuilder_Class;
extern JvmClass ArrOf_java_lang_StringBuilder_Class;
extern JvmClass ArrOf_ArrOf_java_lang_StringBuilder_Class;
extern void JvmSetup_java_lang_StringBuilder();

extern jobject mjava_lang_StringBuilder__init____V(jobject pthis);
extern jobject mjava_lang_StringBuilder__init___I_V(jobject pthis, jint plength);
extern void mjava_lang_StringBuilder_enlargeBuffer__I_V(jobject pthis, jint pmin);
extern void mjava_lang_StringBuilder_appendNull___V(jobject pthis);
extern jobject mjava_lang_StringBuilder_append__C_Ljava_lang_StringBuilder_(jobject pthis, jchar pc);
extern jobject mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(jobject pthis, jdouble pd);
extern jobject mjava_lang_StringBuilder_append__I_Ljava_lang_StringBuilder_(jobject pthis, jint pi);
extern jobject mjava_lang_StringBuilder_append__J_Ljava_lang_StringBuilder_(jobject pthis, jlong pl);
extern jobject mjava_lang_StringBuilder_append__Ljava_lang_Object__Ljava_lang_StringBuilder_(jobject pthis, jobject pobj);
extern jobject mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(jobject pthis, jobject pstr);
extern jchar mjava_lang_StringBuilder_charAt__I_C(jobject pthis, jint pindex);
extern jint mjava_lang_StringBuilder_length___I(jobject pthis);
extern void mjava_lang_StringBuilder_setLength__I_V(jobject pthis, jint pnewLength);
extern jobject mjava_lang_StringBuilder_toString___Ljava_lang_String_(jobject pthis);

#endif
