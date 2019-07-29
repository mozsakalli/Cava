#ifndef __Defined_cava_apple_uikit_UIView__
#define __Defined_cava_apple_uikit_UIView__

#include "jvm.h"
#include "cava_apple_coregraphics_CGRect.h"
#include "cava_apple_uikit_UIResponder.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

typedef struct cava_apple_uikit_UIView {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_uikit_UIView;


extern JvmClass cava_apple_uikit_UIView_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIView_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIView_Class;
extern void JvmSetup_cava_apple_uikit_UIView();

extern jobject mcava_apple_uikit_UIView__init____V(jobject pthis);
extern jobject mcava_apple_uikit_UIView_initWithFrame__Lcava_apple_coregraphics_CGRect__Lcava_apple_uikit_UIView_(jobject pthis, jobject pframe);
@interface cava_apple_uikit_UIView_ObjC : UIView  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
