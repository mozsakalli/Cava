#ifndef __Defined_cava_sample_IOSView__
#define __Defined_cava_sample_IOSView__

#include "jvm.h"
#include "cava_apple_uikit_UIView.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_sample_IOSView {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_sample_IOSView;


extern JvmClass cava_sample_IOSView_Class;
extern JvmClass ArrOf_cava_sample_IOSView_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSView_Class;
extern void JvmSetup_cava_sample_IOSView();

extern jobject mcava_sample_IOSView__init____V(jobject pthis);
@interface cava_sample_IOSView_ObjC : UIView  {
	@public
	jobject javaPeer;
}
@end
/* ObjC-Implementation */

#endif
