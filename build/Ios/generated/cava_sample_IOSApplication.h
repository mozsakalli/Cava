#ifndef __Defined_cava_sample_IOSApplication__
#define __Defined_cava_sample_IOSApplication__

#include "jvm.h"
#include "cava_apple_uikit_UIWindow.h"
#include "cava_sample_Application.h"
#include "cava_sample_IOSViewController.h"
#include "cava_sample_IOSGraphics.h"
#include "java_lang_Class.h"
#include "cava_sample_IOSView.h"

typedef struct cava_sample_IOSApplication {
	jobject fjava_lang_Object_klass;
	jobject fcava_sample_IOSApplication_window;
	jobject fcava_sample_IOSApplication_controller;
	jobject fcava_sample_IOSApplication_view;
	jobject fcava_sample_IOSApplication_graphics;
} cava_sample_IOSApplication;


extern JvmClass cava_sample_IOSApplication_Class;
extern JvmClass ArrOf_cava_sample_IOSApplication_Class;
extern JvmClass ArrOf_ArrOf_cava_sample_IOSApplication_Class;
extern void JvmSetup_cava_sample_IOSApplication();

extern jbool mcava_sample_IOSApplication_didFinishLaunching___Z(jobject pthis);
extern jobject mcava_sample_IOSApplication__init____V(jobject pthis);

#endif
