#ifndef __Defined_cava_sample_IOSLauncher__
#define __Defined_cava_sample_IOSLauncher__

#include "jvm.h"
#include "cava_apple_uikit_UIWindow.h"
#include "cava_sample_IOSApplication.h"
#include "cava_sample_IOSApplication_Delegate.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_sample_IOSLauncher {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
	jobject fcava_apple_uikit_UIApplicationDelegateAdapter_window;
	jobject fcava_sample_IOSApplication_Delegate_app;
} cava_sample_IOSLauncher;


extern JvmClass cava_sample_IOSLauncher_Class;
extern JvmClass ArrOf_cava_sample_IOSLauncher_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSLauncher_Class;
extern void JvmSetup_cava_sample_IOSLauncher();

extern jobject mcava_sample_IOSLauncher_createApplication___Lcava_sample_IOSApplication_(jobject pthis);
extern jobject mcava_sample_IOSLauncher__init____V(jobject pthis);
@interface cava_sample_IOSLauncher_ObjC : NSObject <UIApplicationDelegate> {
	@public
	jobject javaPeer;
}@property UIWindow* window;

@end
/* ObjC-Implementation */

#endif
