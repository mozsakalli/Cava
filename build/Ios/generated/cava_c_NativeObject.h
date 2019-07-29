#ifndef __Defined_cava_c_NativeObject__
#define __Defined_cava_c_NativeObject__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_c_NativeObject {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_c_NativeObject;


extern JvmClass cava_c_NativeObject_Class;
extern JvmClass ArrOf_cava_c_NativeObject_Class;
extern JvmClass ArrOf_ArrOf_cava_c_NativeObject_Class;
extern void JvmSetup_cava_c_NativeObject();

extern jobject mcava_c_NativeObject__init____V(jobject pthis);
extern jobject mcava_c_NativeObject_getNativePeer___Lcava_c_VoidPtr_(jobject pthis);
extern void mcava_c_NativeObject_setNoOwner__Z_V(jobject pthis, jbool psub);
extern void mcava_c_NativeObject_finalize___V(jobject pthis);
extern void virtual_mcava_c_NativeObject_dispose___V(jobject pthis);

#endif
