#ifndef __Defined_java_util_Arrays__
#define __Defined_java_util_Arrays__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_util_Arrays {
	jobject fjava_lang_Object_klass;
} java_util_Arrays;


extern JvmClass java_util_Arrays_Class;
extern JvmClass ArrOf_java_util_Arrays_Class;
extern JvmClass ArrOf_ArrOf_java_util_Arrays_Class;
extern void JvmSetup_java_util_Arrays();

extern void mjava_util_Arrays_checkOffsetAndCount__III_V(jint parrayLength, jint poffset, jint pcount);
extern jobject mjava_util_Arrays__init____V(jobject pthis);
extern void mjava_util_Arrays_fill___Ljava_lang_Object_IILjava_lang_Object__V(jobject parray, jint pstart, jint pend, jobject pvalue);
extern void mjava_util_Arrays_checkBounds__III_V(jint parrLength, jint pstart, jint pend);
extern jobject mjava_util_Arrays_copyOfRange___Ljava_lang_Object_II__Ljava_lang_Object_(jobject poriginal, jint pstart, jint pend);

#endif
