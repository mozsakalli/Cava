#ifndef __Defined_cava_apple_foundation_NSObject__
#define __Defined_cava_apple_foundation_NSObject__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "cava_c_NativeObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"
#include <objc/runtime.h>
#include <Foundation/Foundation.h>

typedef struct cava_apple_foundation_NSObject {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_foundation_NSObject;


extern JvmClass cava_apple_foundation_NSObject_Class;
extern JvmClass ArrOf_cava_apple_foundation_NSObject_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_foundation_NSObject_Class;
extern void JvmSetup_cava_apple_foundation_NSObject();

extern jobject mcava_apple_foundation_NSObject__init____V(jobject pthis);
extern jobject mcava_apple_foundation_NSObject_init___Ljava_lang_Object_(jobject pthis);
extern jobject mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr__V(jobject pthis, jobject phandle);
extern jobject mcava_apple_foundation_NSObject__init___Lcava_c_VoidPtr_Z_V(jobject pthis, jobject phandle, jbool psub);
extern void mcava_apple_foundation_NSObject_dispose___V(jobject pthis);
extern jobject mcava_apple_foundation_NSObject_getObjectiveCName__Ljava_lang_Class__Ljava_lang_String_(jobject pcls);
extern jobject mcava_apple_foundation_NSObject_getObjCClass___Ljava_lang_Class_(jobject pthis);
extern jobject mcava_apple_foundation_NSObject_getObjCClass__Ljava_lang_Class__Ljava_lang_Class_(jobject pcls);
extern jobject mcava_apple_foundation_NSObject_alloc__Ljava_lang_Class__Lcava_apple_foundation_NSObject_(jobject pcls);

#endif
