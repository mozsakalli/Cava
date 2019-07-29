#ifndef __Defined_java_lang_reflect_Method__
#define __Defined_java_lang_reflect_Method__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct java_lang_reflect_Method {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_reflect_Method_declaringClass;
	jobject fjava_lang_reflect_Method_name;
	jobject fjava_lang_reflect_Method_type;
	jint fjava_lang_reflect_Method_modifiers;
	jobject fjava_lang_reflect_Method_parameters;
	jobject fjava_lang_reflect_Method_methodAddress;
	jobject fjava_lang_reflect_Method_dynamicWrapper;
} java_lang_reflect_Method;


extern JvmClass java_lang_reflect_Method_Class;
extern JvmClass ArrOf_java_lang_reflect_Method_Class;
extern JvmClass ArrOf_ArrOf_java_lang_reflect_Method_Class;
extern void JvmSetup_java_lang_reflect_Method();

extern jobject mjava_lang_reflect_Method__init____V(jobject pthis);
extern jobject mjava_lang_reflect_Method_getName___Ljava_lang_String_(jobject pthis);
extern jint mjava_lang_reflect_Method_getModifiers___I(jobject pthis);
extern jint mjava_lang_reflect_Method_getParameterCount___I(jobject pthis);
extern jobject mjava_lang_reflect_Method_getReturnType___Ljava_lang_Class_(jobject pthis);
extern jobject mjava_lang_reflect_Method_getParameterTypes____Ljava_lang_Class_(jobject pthis);
extern jobject mjava_lang_reflect_Method_invoke__Ljava_lang_Object__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pbase, jobject pparams);
extern jobject mjava_lang_reflect_Method_getDeclaringClass___Ljava_lang_Class_(jobject pthis);
extern void mjava_lang_reflect_Method_setAccessible__Z_V(jobject pthis, jbool pvalue);

#endif
