#ifndef __Defined_java_lang_StackTraceElement__
#define __Defined_java_lang_StackTraceElement__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Serializable.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"

typedef struct java_lang_StackTraceElement {
	jobject fjava_lang_Object_klass;
	jobject fjava_lang_StackTraceElement_fileName;
	jint fjava_lang_StackTraceElement_lineNumber;
	jobject fjava_lang_StackTraceElement_declaringClass;
	jobject fjava_lang_StackTraceElement_methodName;
} java_lang_StackTraceElement;


extern JvmClass java_lang_StackTraceElement_Class;
extern JvmClass ArrOf_java_lang_StackTraceElement_Class;
extern JvmClass ArrOf_ArrOf_java_lang_StackTraceElement_Class;
extern void JvmSetup_java_lang_StackTraceElement();

extern jobject mjava_lang_StackTraceElement__init___Ljava_lang_String_ILjava_lang_String_Ljava_lang_String__V(jobject pthis, jobject pfileName, jint plineNumber, jobject pclassName, jobject pmethodName);
extern jobject mjava_lang_StackTraceElement__init___Ljava_lang_String_Ljava_lang_String_Ljava_lang_String_I_V(jobject pthis, jobject pclassName, jobject pmethodName, jobject pfileName, jint plineNumber);
extern jobject mjava_lang_StackTraceElement_getFileName___Ljava_lang_String_(jobject pthis);
extern jint mjava_lang_StackTraceElement_getLineNumber___I(jobject pthis);
extern jobject mjava_lang_StackTraceElement_getClassName___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_StackTraceElement_getMethodName___Ljava_lang_String_(jobject pthis);
extern jobject mjava_lang_StackTraceElement_toString___Ljava_lang_String_(jobject pthis);
extern jbool mjava_lang_StackTraceElement_equals__Ljava_lang_Object__Z(jobject pthis, jobject po);
extern jint mjava_lang_StackTraceElement_hashCode___I(jobject pthis);
extern jbool mjava_lang_StackTraceElement_equals__Ljava_lang_Object_Ljava_lang_Object__Z(jobject po1, jobject po2);
extern jint mjava_lang_StackTraceElement_hashCode__Ljava_lang_Object__I(jobject po);

#endif
