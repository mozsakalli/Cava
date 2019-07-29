#ifndef __Defined_cava_apple_uikit_UIViewController__
#define __Defined_cava_apple_uikit_UIViewController__

#include "jvm.h"
#include "cava_apple_uikit_UIView.h"
#include "cava_apple_uikit_UIResponder.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <UIKit/UIKit.h>

typedef struct cava_apple_uikit_UIViewController {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
	jobject fcava_apple_uikit_UIViewController_view;
} cava_apple_uikit_UIViewController;


extern JvmClass cava_apple_uikit_UIViewController_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIViewController_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIViewController_Class;
extern void JvmSetup_cava_apple_uikit_UIViewController();

extern jobject mcava_apple_uikit_UIViewController__init____V(jobject pthis);
extern void mcava_apple_uikit_UIViewController_setView__Lcava_apple_uikit_UIView__V(jobject pthis, jobject pview);
@interface cava_apple_uikit_UIViewController_ObjC : UIViewController  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
