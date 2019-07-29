#ifndef __Defined_cava_apple_foundation_NSAutoreleasePool__
#define __Defined_cava_apple_foundation_NSAutoreleasePool__

#include "jvm.h"
#include "java_lang_AutoCloseable.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_apple_foundation_NSAutoreleasePool {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_foundation_NSAutoreleasePool;


extern JvmClass cava_apple_foundation_NSAutoreleasePool_Class;
extern JvmClass ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_foundation_NSAutoreleasePool_Class;
extern void JvmSetup_cava_apple_foundation_NSAutoreleasePool();

extern jobject mcava_apple_foundation_NSAutoreleasePool__init____V(jobject pthis);
extern void mcava_apple_foundation_NSAutoreleasePool_close___V(jobject pthis);

#endif
