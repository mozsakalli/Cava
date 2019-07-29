#ifndef __Defined_cava_sample_IOSApplication_Delegate__
#define __Defined_cava_sample_IOSApplication_Delegate__

#include "jvm.h"
#include "cava_apple_uikit_UIWindow.h"
#include "cava_sample_IOSApplication.h"
#include "cava_apple_uikit_UIApplicationDelegateAdapter.h"
#include "cava_apple_uikit_UIApplication.h"
#include "java_lang_Class.h"
#include "cava_apple_foundation_NSDictionary.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_sample_IOSApplication_Delegate {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
	jobject fcava_apple_uikit_UIApplicationDelegateAdapter_window;
	jobject fcava_sample_IOSApplication_Delegate_app;
} cava_sample_IOSApplication_Delegate;


extern JvmClass cava_sample_IOSApplication_Delegate_Class;
extern JvmClass ArrOf_cava_sample_IOSApplication_Delegate_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSApplication_Delegate_Class;
extern void JvmSetup_cava_sample_IOSApplication_Delegate();

extern jbool mcava_sample_IOSApplication_Delegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject poptions);
extern jobject mcava_sample_IOSApplication_Delegate__init____V(jobject pthis);
extern jobject virtual_mcava_sample_IOSApplication_Delegate_createApplication___Lcava_sample_IOSApplication_(jobject pthis);
@interface cava_sample_IOSApplication_Delegate_ObjC : NSObject <UIApplicationDelegate> {
	@public
	jobject javaPeer;
}@property UIWindow* window;

@end
/* ObjC-Implementation */

#endif
