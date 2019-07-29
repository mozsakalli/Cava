#ifndef __Defined_cava_apple_uikit_UIWindow__
#define __Defined_cava_apple_uikit_UIWindow__

#include "jvm.h"
#include "cava_apple_uikit_UIView.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include "cava_apple_uikit_UIViewController.h"
#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

typedef struct cava_apple_uikit_UIWindow {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_uikit_UIWindow;


extern JvmClass cava_apple_uikit_UIWindow_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIWindow_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIWindow_Class;
extern void JvmSetup_cava_apple_uikit_UIWindow();

extern jobject mcava_apple_uikit_UIWindow__init____V(jobject pthis);
extern void mcava_apple_uikit_UIWindow_setRootViewController__Lcava_apple_uikit_UIViewController__V(jobject pthis, jobject pcontroller);
@interface cava_apple_uikit_UIWindow_ObjC : UIWindow  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
