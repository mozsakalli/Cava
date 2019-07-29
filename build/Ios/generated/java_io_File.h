#ifndef __Defined_java_io_File__
#define __Defined_java_io_File__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_io_Serializable.h"
#include "java_lang_String.h"
#include "cava_c_CharPtr.h"
#include "java_lang_Class.h"
#include <sys/stat.h>

typedef struct java_io_File {
	jobject fjava_lang_Object_klass;
	jobject fjava_io_File_path;
} java_io_File;

extern jchar fjava_io_File_separatorChar;
extern jchar fjava_io_File_pathSeparatorChar;

extern JvmClass java_io_File_Class;
extern JvmClass ArrOf_java_io_File_Class;
extern JvmClass ArrOf_ArrOf_java_io_File_Class;
extern void JvmSetup_java_io_File();

extern jobject mjava_io_File__init___Ljava_lang_String__V(jobject pthis, jobject ppath);
extern jobject mjava_io_File__init___Ljava_lang_String_Ljava_lang_String__V(jobject pthis, jobject pparent, jobject pchild);
extern jobject mjava_io_File_stripSeparators__Ljava_lang_String__Ljava_lang_String_(jobject pp);
extern jobject mjava_io_File_normalize__Ljava_lang_String__Ljava_lang_String_(jobject ppath);
extern jobject mjava_io_File_toString___Ljava_lang_String_(jobject pthis);
extern jobject mjava_io_File_getPath___Ljava_lang_String_(jobject pthis);
extern jlong mjava_io_File_length__Lcava_c_CharPtr__J(jobject ppath);
extern void mjava_io_File__clinit____V();

#endif
