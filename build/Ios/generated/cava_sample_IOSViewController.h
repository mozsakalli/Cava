#ifndef __Defined_cava_sample_IOSViewController__
#define __Defined_cava_sample_IOSViewController__

#include "jvm.h"
#include "cava_apple_uikit_UIView.h"
#include "java_lang_Class.h"
#include "cava_apple_uikit_UIViewController.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_sample_IOSViewController {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
	jobject fcava_apple_uikit_UIViewController_view;
} cava_sample_IOSViewController;


extern JvmClass cava_sample_IOSViewController_Class;
extern JvmClass ArrOf_cava_sample_IOSViewController_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSViewController_Class;
extern void JvmSetup_cava_sample_IOSViewController();

extern jobject mcava_sample_IOSViewController__init____V(jobject pthis);
@interface cava_sample_IOSViewController_ObjC : UIViewController  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
