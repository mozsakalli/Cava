#ifndef __Defined_cava_apple_uikit_UIScreen__
#define __Defined_cava_apple_uikit_UIScreen__

#include "jvm.h"
#include "cava_apple_coregraphics_CGRect.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <UIKit/UIKit.h>

typedef struct cava_apple_uikit_UIScreen {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_uikit_UIScreen;


extern JvmClass cava_apple_uikit_UIScreen_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIScreen_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIScreen_Class;
extern void JvmSetup_cava_apple_uikit_UIScreen();

extern jobject mcava_apple_uikit_UIScreen__init___Lcava_c_VoidPtr__V(jobject pthis, jobject phandle);
extern jobject mcava_apple_uikit_UIScreen_getMainScreen___Lcava_apple_uikit_UIScreen_();
extern jobject mcava_apple_uikit_UIScreen_getBounds___Lcava_apple_coregraphics_CGRect_(jobject pthis);

#endif
