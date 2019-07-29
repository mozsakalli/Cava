#ifndef __Defined_cava_apple_foundation_NSDictionary__
#define __Defined_cava_apple_foundation_NSDictionary__

#include "jvm.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_apple_foundation_NSDictionary {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_foundation_NSDictionary;


extern JvmClass cava_apple_foundation_NSDictionary_Class;
extern JvmClass ArrOf_cava_apple_foundation_NSDictionary_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_foundation_NSDictionary_Class;
extern void JvmSetup_cava_apple_foundation_NSDictionary();

extern jobject mcava_apple_foundation_NSDictionary__init____V(jobject pthis);

#endif
