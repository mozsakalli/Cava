#ifndef __Defined_cava_apple_uikit_UIApplicationDelegate__
#define __Defined_cava_apple_uikit_UIApplicationDelegate__

#include "jvm.h"
#include "cava_apple_uikit_UIWindow.h"
#include "java_lang_Object.h"
#include "cava_apple_uikit_UIApplication.h"
#include "java_lang_Class.h"
#include "cava_apple_foundation_NSDictionary.h"
#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

typedef struct cava_apple_uikit_UIApplicationDelegate {
	jobject fjava_lang_Object_klass;
} cava_apple_uikit_UIApplicationDelegate;


extern JvmClass cava_apple_uikit_UIApplicationDelegate_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplicationDelegate_Class;
extern void JvmSetup_cava_apple_uikit_UIApplicationDelegate();

extern jobject interface_mcava_apple_uikit_UIApplicationDelegate_getWindow___Lcava_apple_uikit_UIWindow_(jobject pthis);
extern void interface_mcava_apple_uikit_UIApplicationDelegate_setWindow__Lcava_apple_uikit_UIWindow__V(jobject pthis, jobject pp0);
extern jbool interface_mcava_apple_uikit_UIApplicationDelegate_didFinishLaunchingWithOptions__Lcava_apple_uikit_UIApplication_Lcava_apple_foundation_NSDictionary__Z(jobject pthis, jobject pp0, jobject pp1);
extern void interface_mcava_apple_uikit_UIApplicationDelegate_didBecomeActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0);
extern void interface_mcava_apple_uikit_UIApplicationDelegate_willResignActive__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0);
extern void interface_mcava_apple_uikit_UIApplicationDelegate_didEnterBackground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0);
extern void interface_mcava_apple_uikit_UIApplicationDelegate_willEnterForeground__Lcava_apple_uikit_UIApplication__V(jobject pthis, jobject pp0);

#endif
