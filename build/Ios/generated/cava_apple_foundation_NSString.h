#ifndef __Defined_cava_apple_foundation_NSString__
#define __Defined_cava_apple_foundation_NSString__

#include "jvm.h"
#include "java_lang_String.h"
#include "cava_c_WCharPtr.h"
#include "cava_apple_foundation_NSObject.h"
#include "java_lang_Class.h"
#include "cava_c_VoidPtr.h"

typedef struct cava_apple_foundation_NSString {
	jobject fjava_lang_Object_klass;
	jobject fcava_c_NativeObject_nativePeer;
	jbool fcava_c_NativeObject_noOwner;
} cava_apple_foundation_NSString;


extern JvmClass cava_apple_foundation_NSString_Class;
extern JvmClass ArrOf_cava_apple_foundation_NSString_Class;
extern JvmClass ArrOf_ArrOf_cava_apple_foundation_NSString_Class;
extern void JvmSetup_cava_apple_foundation_NSString();

extern jobject mcava_apple_foundation_NSString__init___Ljava_lang_String__V(jobject pthis, jobject pstring);
extern jobject mcava_apple_foundation_NSString_initWithCharacters__Lcava_c_WCharPtr_I_Lcava_apple_foundation_NSString_(jobject pthis, jobject pchars, jint plength);
extern jobject mcava_apple_foundation_NSString_createJavaString__Lcava_c_VoidPtr__Ljava_lang_String_(jobject pnativePeer);

#endif
