#ifndef __Defined_java_io_FileInputStream__
#define __Defined_java_io_FileInputStream__

#include "jvm.h"
#include "java_io_InputStream.h"
#include "java_lang_String.h"
#include "java_lang_Class.h"
#include "java_io_File.h"
#include "cava_c_VoidPtr.h"

typedef struct java_io_FileInputStream {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_FileInputStream_fd;
	jint fjava_io_FileInputStream_remaining;
} java_io_FileInputStream;


extern JvmClass java_io_FileInputStream_Class;
extern JvmClass ArrOf_java_io_FileInputStream_Class;
extern JvmClass ArrOf_ArrOf_java_io_FileInputStream_Class;
extern void JvmSetup_java_io_FileInputStream();

extern jobject mjava_io_FileInputStream__init___Ljava_lang_String__V(jobject pthis, jobject ppath);
extern jobject mjava_io_FileInputStream__init___Ljava_io_File__V(jobject pthis, jobject pfile);
extern void mjava_io_FileInputStream_close___V(jobject pthis);

#endif
