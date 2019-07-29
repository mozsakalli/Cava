#ifndef __Defined_cava_apple_uikit_UIApplicationDelegateAdapter__
#define __Defined_cava_apple_uikit_UIApplicationDelegateAdapter__

#include "jvm.h"
#include "cava_apple_uikit_UIWindow.h"
#include "cava_apple_uikit_UIApplicationDelegate.h"
#include "cava_apple_uikit_UIApplication.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_apple_foundation_NSDictionary.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_apple_uikit_UIApplicationDelegateAdapter {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
	jobject fcava_apple_uikit_UIApplicationDelegateAdapter_window;
} cava_apple_uikit_UIApplicationDelegateAdapter;


extern JvmClass cava_apple_uikit_UIApplicationDelegateAdapter_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegateAdapter_Class;
extern void JvmSetup_cava_apple_uikit_UIApplicationDelegateAdapter();

extern jobject mcava_apple_uikit_UIApplicationDelegateAdapter__init____V(jobject pthis);
extern jobject mcava_apple_uikit_UIApplicationDelegateAdapter_getWindow___Lcava_apple_uikit_UIWindow_(jobject pthis);
extern void mcava_apple_uikit_UIApplicationDelegateAdapter_setWindow__Lcava_apple_uikit_UIWindow__V(jobject pthis, jobject pwindow);
extern jbool mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject plaunchOptions);
extern void mcava_apple_uikit_UIApplicationDelegateAdapter_didBecomeActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication);
extern void mcava_apple_uikit_UIApplicationDelegateAdapter_willResignActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication);
extern void mcava_apple_uikit_UIApplicationDelegateAdapter_didEnterBackground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication);
extern void mcava_apple_uikit_UIApplicationDelegateAdapter_willEnterForeground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject papplication);
extern jbool virtual_mcava_apple_uikit_UIApplicationDelegateAdapter_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject papplication, jobject plaunchOptions);
@interface cava_apple_uikit_UIApplicationDelegateAdapter_ObjC : NSObject <UIApplicationDelegate> {
	@public
	jobject javaPeer;
}@property UIWindow* window;

@end
/* ObjC-Implementation */

#endif
