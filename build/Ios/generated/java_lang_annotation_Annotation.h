#ifndef __Defined_java_lang_annotation_Annotation__
#define __Defined_java_lang_annotation_Annotation__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"

typedef struct java_lang_annotation_Annotation {
	jobject fjava_lang_Object_klass;
} java_lang_annotation_Annotation;


extern JvmClass java_lang_annotation_Annotation_Class;
extern JvmClass ArrOf_java_lang_annotation_Annotation_Class;
extern JvmClass ArrOf_ArrOf_java_lang_annotation_Annotation_Class;
extern void JvmSetup_java_lang_annotation_Annotation();


#endif
