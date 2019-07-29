#ifndef __Defined_java_lang_reflect_Field__
#define __Defined_java_lang_reflect_Field__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct java_lang_reflect_Field {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_reflect_Field_declaringClass;
	jobject fjava_lang_reflect_Field_name;
	jobject fjava_lang_reflect_Field_type;
	jint fjava_lang_reflect_Field_modifiers;
	jobject fjava_lang_reflect_Field_address;
} java_lang_reflect_Field;


extern JvmClass java_lang_reflect_Field_Class;
extern JvmClass ArrOf_java_lang_reflect_Field_Class;
extern JvmClass ArrOf_ArrOf_java_lang_reflect_Field_Class;
extern void JvmSetup_java_lang_reflect_Field();

extern jobject mjava_lang_reflect_Field__init____V(jobject pthis);
extern jobject mjava_lang_reflect_Field_getName___Ljava_lang_String_(jobject pthis);
extern jint mjava_lang_reflect_Field_getModifiers___I(jobject pthis);
extern jobject mjava_lang_reflect_Field_getType___Ljava_lang_Class_(jobject pthis);
extern jobject mjava_lang_reflect_Field_getDeclaringClass___Ljava_lang_Class_(jobject pthis);
extern void mjava_lang_reflect_Field_setAccessible__Z_V(jobject pthis, jbool pvalue);
extern jlong mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(jobject pthis, jobject pbase, jlong pvalue);
extern jdouble mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V(jobject pthis, jobject pbase, jdouble pvalue);
extern jobject mjava_lang_reflect_Field_get__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_set__Ljava_lang_Object_Ljava_lang_Object__V(jobject pthis, jobject pbase, jobject pvalue);
extern jbyte mjava_lang_reflect_Field_getByte__Ljava_lang_Object__B(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setByte__Ljava_lang_Object_B_V(jobject pthis, jobject pbase, jbyte pvalue);
extern jchar mjava_lang_reflect_Field_getChar__Ljava_lang_Object__C(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setChar__Ljava_lang_Object_C_V(jobject pthis, jobject pbase, jchar pvalue);
extern jbool mjava_lang_reflect_Field_getBoolean__Ljava_lang_Object__Z(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setBoolean__Ljava_lang_Object_Z_V(jobject pthis, jobject pbase, jbool pvalue);
extern jshort mjava_lang_reflect_Field_getShort__Ljava_lang_Object__S(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setShort__Ljava_lang_Object_S_V(jobject pthis, jobject pbase, jshort pvalue);
extern jint mjava_lang_reflect_Field_getInt__Ljava_lang_Object__I(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setInt__Ljava_lang_Object_I_V(jobject pthis, jobject pbase, jint pvalue);
extern jlong mjava_lang_reflect_Field_getLong__Ljava_lang_Object__J(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setLong__Ljava_lang_Object_J_V(jobject pthis, jobject pbase, jlong pvalue);
extern jfloat mjava_lang_reflect_Field_getFloat__Ljava_lang_Object__F(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setFloat__Ljava_lang_Object_F_V(jobject pthis, jobject pbase, jfloat pvalue);
extern jdouble mjava_lang_reflect_Field_getDouble__Ljava_lang_Object__D(jobject pthis, jobject pbase);
extern void mjava_lang_reflect_Field_setDouble__Ljava_lang_Object_D_V(jobject pthis, jobject pbase, jdouble pvalue);

#endif
