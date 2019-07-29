#ifndef __Defined_cava_apple_uikit_UIApplication__
#define __Defined_cava_apple_uikit_UIApplication__

#include "jvm.h"
#include "cava_c_CharPtrPtr.h"
#include "java_lang_String.h"
#include "cava_apple_uikit_UIResponder.h"
#include "cava_apple_uikit_UIApplicationDelegate.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

typedef struct cava_apple_uikit_UIApplication {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_uikit_UIApplication;


extern JvmClass cava_apple_uikit_UIApplication_Class;
extern JvmClass ArrOf_cava_apple_uikit_UIApplication_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_uikit_UIApplication_Class;
extern void JvmSetup_cava_apple_uikit_UIApplication();

extern jobject mcava_apple_uikit_UIApplication__init____V(jobject pthis);
extern void mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class__V(jobject pargs, jobject pdelegateClass);
extern void mcava_apple_uikit_UIApplication_main___Ljava_lang_String_Ljava_lang_Class_Ljava_lang_Class__V(jobject pargs, jobject pprincipalClass, jobject pdelegateClass);
extern void mcava_apple_uikit_UIApplication_main__ILcava_c_CharPtrPtr_Ljava_lang_String_Ljava_lang_String__V(jint pargc, jobject pargv, jobject pprincipal, jobject pdelegate);
@interface cava_apple_uikit_UIApplication_ObjC : UIApplication  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
