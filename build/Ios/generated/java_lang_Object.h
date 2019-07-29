#ifndef __Defined_java_lang_Object__
#define __Defined_java_lang_Object__

#include "jvm.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct java_lang_Object {
	jobject fjava_lang_Object_klass;
} java_lang_Object;


extern JvmClass java_lang_Object_Class;
extern JvmClass ArrOf_java_lang_Object_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Object_Class;
extern void JvmSetup_java_lang_Object();

extern jobject mjava_lang_Object__init____V(jobject pthis);
extern jbool mjava_lang_Object_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jobject mjava_lang_Object_getClass___Ljava_lang_Class_(jobject pthis);
extern jint mjava_lang_Object_hashCode___I(jobject pthis);
extern void mjava_lang_Object_notify___V(jobject pthis);
extern void mjava_lang_Object_notifyAll___V(jobject pthis);
extern jobject mjava_lang_Object_toString___Ljava_lang_String_(jobject pthis);
extern void mjava_lang_Object_wait___V(jobject pthis);
extern void mjava_lang_Object_wait__J_V(jobject pthis, jlong ptimeout);
extern void mjava_lang_Object_wait__JI_V(jobject pthis, jlong ptimeout, jint pnanos);
extern jobject mjava_lang_Object_clone___Ljava_lang_Object_(jobject pthis);
extern void mjava_lang_Object_finalize___V(jobject pthis);
extern jbool virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj);
extern jint virtual_mjava_lang_Object_hashCode___I(jobject pthis);
extern jobject virtual_mjava_lang_Object_toString___Ljava_lang_String_(jobject pthis);
extern void virtual_mjava_lang_Object_finalize___V(jobject pthis);

#endif
