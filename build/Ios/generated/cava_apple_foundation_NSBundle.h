#ifndef __Defined_cava_apple_foundation_NSBundle__
#define __Defined_cava_apple_foundation_NSBundle__

#include "jvm.h"
#include "java_lang_String.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <Foundation/Foundation.h>

typedef struct cava_apple_foundation_NSBundle {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_foundation_NSBundle;


extern JvmClass cava_apple_foundation_NSBundle_Class;
extern JvmClass ArrOf_cava_apple_foundation_NSBundle_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_foundation_NSBundle_Class;
extern void JvmSetup_cava_apple_foundation_NSBundle();

extern jobject mcava_apple_foundation_NSBundle__init___Lcava_c_VoidPtr__V(jobject pthis, jobject ppeer);
extern jobject mcava_apple_foundation_NSBundle_getMainBundle___Lcava_apple_foundation_NSBundle_();
extern jobject mcava_apple_foundation_NSBundle_getBundlePath___Ljava_lang_String_(jobject pthis);

#endif
