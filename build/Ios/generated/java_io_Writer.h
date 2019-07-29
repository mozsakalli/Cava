#ifndef __Defined_java_io_Writer__
#define __Defined_java_io_Writer__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_io_Closeable.h"
#include "java_lang_Class.h"

typedef struct java_io_Writer {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_Writer_lock;
} java_io_Writer;


extern JvmClass java_io_Writer_Class;
extern JvmClass ArrOf_java_io_Writer_Class;
extern JvmClass ArrOf_ArrOf_java_io_Writer_Class;
extern void JvmSetup_java_io_Writer();

extern jobject mjava_io_Writer__init____V(jobject pthis);
extern void mjava_io_Writer_write__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void mjava_io_Writer_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poff, jint plen);
extern void virtual_mjava_io_Writer_close___V(jobject pthis);
extern void virtual_mjava_io_Writer_flush___V(jobject pthis);
extern void virtual_mjava_io_Writer_write___CII_V(jobject pthis, jobject pp0, jint pp1, jint pp2);
extern void virtual_mjava_io_Writer_write__Ljava_lang_String__V(jobject pthis, jobject pstr);
extern void virtual_mjava_io_Writer_write__Ljava_lang_String_II_V(jobject pthis, jobject pstr, jint poff, jint plen);

#endif
