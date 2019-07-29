#ifndef __Defined_java_lang_Throwable__
#define __Defined_java_lang_Throwable__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Serializable.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_String.h"
#include "java_lang_StackTraceElement.h"
#include "java_io_PrintWriter.h"
#include "java_lang_Class.h"
#include "java_io_PrintStream.h"

typedef struct java_lang_Throwable {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_Throwable_detailMessage;
	jobject fjava_lang_Throwable_cause;
	jobject fjava_lang_Throwable_stackTrace;
} java_lang_Throwable;


extern JvmClass java_lang_Throwable_Class;
extern JvmClass ArrOf_java_lang_Throwable_Class;
extern JvmClass ArrOf_ArrOf_java_lang_Throwable_Class;
extern void JvmSetup_java_lang_Throwable();

extern jobject mjava_lang_Throwable__init____V(jobject pthis);
extern jobject mjava_lang_Throwable__init___Ljava_lang_String__V(jobject pthis, jobject pmessage);
extern jobject mjava_lang_Throwable__init___Ljava_lang_String_Ljava_lang_Throwable__V(jobject pthis, jobject pmessage, jobject pcause);
extern jobject mjava_lang_Throwable__init___Ljava_lang_Throwable__V(jobject pthis, jobject pcause);
extern jobject mjava_lang_Throwable_getMessage___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Throwable_getLocalizedMessage___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_Throwable_getCause___Ljava_lang_Throwable_(jobject pthis);
extern jobject mjava_lang_Throwable_initCause__Ljava_lang_Throwable__Ljava_lang_Throwable_(jobject pthis, jobject pcause);
extern jobject mjava_lang_Throwable_toString___Ljava_lang_String_(jobject pthis);
extern void mjava_lang_Throwable_printStackTrace___V(jobject pthis);
extern void mjava_lang_Throwable_printStackTrace__Ljava_io_PrintStream__V(jobject pthis, jobject ps);
extern void mjava_lang_Throwable_printStackTrace__Ljava_io_PrintWriter__V(jobject pthis, jobject ppw);
extern jobject mjava_lang_Throwable_stackTraceString___Ljava_lang_String_(jobject pthis);
extern void mjava_lang_Throwable_stackTraceStringBuffer__Ljava_lang_StringBuilder_Ljava_lang_String__Ljava_lang_StackTraceElement_I_V(jobject psb, jobject pname, jobject pstack, jint pequal);
extern jobject mjava_lang_Throwable_getStackTrace____Ljava_lang_StackTraceElement_(jobject pthis);
extern void mjava_lang_Throwable_setStackTrace___Ljava_lang_StackTraceElement__V(jobject pthis, jobject pstackTrace);
extern void mjava_lang_Throwable_addSuppressed__Ljava_lang_Throwable__V(jobject pthis, jobject pexception);

#endif
