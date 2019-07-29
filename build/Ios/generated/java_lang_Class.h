#ifndef __Defined_java_lang_Class__
#define __Defined_java_lang_Class__

#include "jvm.h"
#include "java_lang_reflect_Field.h"
#include "java_lang_annotation_Annotation.h"
#include "java_net_URL.h"
#include "java_lang_reflect_Method.h"
#include "java_lang_reflect_Constructor.h"
#include "java_io_InputStream.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

typedef struct java_lang_Class {
	jobject fjava_lang_Object_klass;
	jint fjava_lang_Class_size;
	jobject fjava_lang_Class_name;
	jobject fjava_lang_Class_superClass;
	jobject fjava_lang_Class_componentType;
	jint fjava_lang_Class_modifiers;
	jobject fjava_lang_Class_fields;
	jobject fjava_lang_Class_interfaces;
	jobject fjava_lang_Class_methods;
} java_lang_Class;


extern JvmClass java_lang_Class_Class;
extern JvmClass ArrOf_java_lang_Class_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Class_Class;
extern void JvmSetup_java_lang_Class();

extern jobject mjava_lang_Class__init____V(jobject pthis);
extern jobject mjava_lang_Class_forName__Ljava_lang_String__Ljava_lang_Class_(jobject pclassName);
extern jobject mjava_lang_Class_getSuperclass___Ljava_lang_Class_(jobject pthis);
extern jobject mjava_lang_Class_getComponentType___Ljava_lang_Class_(jobject pthis);
extern jbool mjava_lang_Class_isPrimitive___Z(jobject pthis);
extern jint mjava_lang_Class_getModifiers___I(jobject pthis);
extern jobject mjava_lang_Class_getConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_(jobject pthis, jobject pargs);
extern jobject mjava_lang_Class_getDeclaredConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_(jobject pthis, jobject pargs);
extern jobject mjava_lang_Class_getName___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Class_getResourceAsStream__Ljava_lang_String__Ljava_io_InputStream_(jobject pthis, jobject pname);
extern jobject mjava_lang_Class_getResource__Ljava_lang_String__Ljava_net_URL_(jobject pthis, jobject pname);
extern jbool mjava_lang_Class_isArray___Z(jobject pthis);
extern jbool mjava_lang_Class_isAssignableFrom__Ljava_lang_Class__Z(jobject pthis, jobject pcls);
extern jbool mjava_lang_Class_isInstance__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jbool mjava_lang_Class_isInterface___Z(jobject pthis);
extern jobject mjava_lang_Class_newInstance___Ljava_lang_Object_(jobject pthis);
extern jobject mjava_lang_Class_toString___Ljava_lang_String_(jobject pthis);
extern jbool mjava_lang_Class_isAnnotation___Z(jobject pthis);
extern jobject mjava_lang_Class_getAnnotation__Ljava_lang_Class__Ljava_lang_annotation_Annotation_(jobject pthis, jobject pannotationType);
extern jobject mjava_lang_Class_getAnnotations____Ljava_lang_annotation_Annotation_(jobject pthis);
extern jobject mjava_lang_Class_getDeclaredAnnotations____Ljava_lang_annotation_Annotation_(jobject pthis);
extern jbool mjava_lang_Class_isAnnotationPresent__Ljava_lang_Class__Z(jobject pthis, jobject pannotationType);
extern jobject mjava_lang_Class_asSubclass__Ljava_lang_Class__Ljava_lang_Class_(jobject pthis, jobject psuperclass);
extern jobject mjava_lang_Class_cast__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pobject);
extern jbool mjava_lang_Class_isEnum___Z(jobject pthis);
extern jbool mjava_lang_Class_isAnonymousClass___Z(jobject pthis);
extern jobject mjava_lang_Class_getSimpleName___Ljava_lang_String_(jobject pthis);
extern jbool mjava_lang_Class_isSynthetic___Z(jobject pthis);
extern jobject mjava_lang_Class_getCanonicalName___Ljava_lang_String_(jobject pthis);
extern jbool mjava_lang_Class_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jbool mjava_lang_Class_desiredAssertionStatus___Z(jobject pthis);
extern jobject mjava_lang_Class_getInterfaces____Ljava_lang_Class_(jobject pthis);
extern jobject mjava_lang_Class_findMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters);
extern jobject mjava_lang_Class_getDeclaredMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters);
extern jobject mjava_lang_Class_getDeclaredMethods____Ljava_lang_reflect_Method_(jobject pthis);
extern jobject mjava_lang_Class_getMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters);
extern jobject mjava_lang_Class_getMethods____Ljava_lang_reflect_Method_(jobject pthis);
extern jobject mjava_lang_Class_getDeclaredField__Ljava_lang_String__Ljava_lang_reflect_Field_(jobject pthis, jobject pname);
extern jobject mjava_lang_Class_getDeclaredFields____Ljava_lang_reflect_Field_(jobject pthis);
extern jobject mjava_lang_Class_getField__Ljava_lang_String__Ljava_lang_reflect_Field_(jobject pthis, jobject pname);
extern jobject mjava_lang_Class_getFields____Ljava_lang_reflect_Field_(jobject pthis);
extern jobject mjava_lang_Class_getPrimitiveNativeName__Ljava_lang_Class__Ljava_lang_String_(jobject pcomponentType);
extern jobject mjava_lang_Class_getArrayClassFor__Ljava_lang_Class__Ljava_lang_Class_(jobject pcomponentType);

#endif
