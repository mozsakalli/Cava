#ifndef __Defined_java_lang_Thread__
#define __Defined_java_lang_Thread__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_util_ArrayList.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include "java_lang_Runnable.h"
#include <pthread.h>
#include <unistd.h>

typedef struct java_lang_Thread {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Thread_target;
	jbool fjava_lang_Thread_alive;
	jobject fjava_lang_Thread_name;
	jint fjava_lang_Thread_priority;
	jobject fjava_lang_Thread_handle;
} java_lang_Thread;

extern jint fjava_lang_Thread_MAX_PRIORITY;
extern jint fjava_lang_Thread_MIN_PRIORITY;
extern jint fjava_lang_Thread_NORM_PRIORITY;

extern JvmClass java_lang_Thread_Class;
extern JvmClass ArrOf_java_lang_Thread_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Thread_Class;
extern void JvmSetup_java_lang_Thread();

extern jobject mjava_lang_Thread__init____V(jobject pthis);
extern jobject mjava_lang_Thread__init___Ljava_lang_Runnable__V(jobject pthis, jobject ptarget);
extern jobject mjava_lang_Thread__init___Ljava_lang_Runnable_Ljava_lang_String__V(jobject pthis, jobject ptarget, jobject pname);
extern jobject mjava_lang_Thread__init___Ljava_lang_String__V(jobject pthis, jobject pname);
extern jlong mjava_lang_Thread_getId___J(jobject pthis);
extern jobject mjava_lang_Thread_currentThread___Ljava_lang_Thread_();
extern jobject mjava_lang_Thread_getName___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Thread_getStackTrace____Ljava_lang_StackTraceElement_(jobject pthis);
extern jint mjava_lang_Thread_getPriority___I(jobject pthis);
extern void mjava_lang_Thread_interrupt___V(jobject pthis);
extern jbool mjava_lang_Thread_isAlive___Z(jobject pthis);
extern void mjava_lang_Thread_join___V(jobject pthis);
extern void mjava_lang_Thread_run___V(jobject pthis);
extern void mjava_lang_Thread_setPriority__I_V(jobject pthis, jint pnewPriority);
extern void mjava_lang_Thread_sleep__J_V(jlong pmillis);
extern void mjava_lang_Thread_start___V(jobject pthis);
extern jobject mjava_lang_Thread_toString___Ljava_lang_String_(jobject pthis);
extern void mjava_lang_Thread_yield___V();
extern jobject mjava_lang_Thread_threadProc___Lcava_c_VoidPtr_(jobject pthis);
extern void mjava_lang_Thread_setDaemon__Z_V(jobject pthis, jbool pvalue);
extern void mjava_lang_Thread__clinit____V();

#endif
