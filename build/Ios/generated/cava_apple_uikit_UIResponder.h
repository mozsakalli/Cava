#ifndef __Defined_cava_apple_uikit_UIResponder__
#define __Defined_cava_apple_uikit_UIResponder__

#include "jvm.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <UIKit/UIKit.h>

typedef struct cava_apple_uikit_UIResponder {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_uikit_UIResponder;


extern JvmClass cava_apple_uikit_UIResponder_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIResponder_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIResponder_Class;
extern void JvmSetup_cava_apple_uikit_UIResponder();

extern jobject mcava_apple_uikit_UIResponder__init____V(jobject pthis);

#endif
