#ifndef __Defined_cava_c_CharPtr__
#define __Defined_cava_c_CharPtr__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct cava_c_CharPtr {
	jobject fjava_lang_Object_klass;
} cava_c_CharPtr;


extern JvmClass cava_c_CharPtr_Class;
extern JvmClass ArrOf_cava_c_CharPtr_Class;
extern JvmClass ArrOf_ArrOf_cava_c_CharPtr_Class;
extern void JvmSetup_cava_c_CharPtr();

extern jobject mcava_c_CharPtr__init____V(jobject pthis);
extern jobject mcava_c_CharPtr_alloc__I_Lcava_c_CharPtr_(jint psize);
extern jobject mcava_c_CharPtr_allocAsciiZ__Ljava_lang_String__Lcava_c_CharPtr_(jobject pstr);
extern jobject mcava_c_CharPtr_asciiZ__Ljava_lang_String_Ljava_lang_Object_I_Lcava_c_CharPtr_(jobject pstr, jobject ptarget, jint plen);
extern jobject mcava_c_CharPtr_from___B_Lcava_c_CharPtr_(jobject pbytes);
extern jobject mcava_c_CharPtr_fromAnyArray__Ljava_lang_Object__Lcava_c_CharPtr_(jobject parray);
extern void mcava_c_CharPtr_set__II_V(jobject pthis, jint pindex, jint pvalue);

#endif
