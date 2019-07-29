#include "java_lang_Integer.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_Boolean.h"
#include "java_io_FileInputStream.h"
#include "java_lang_Float.h"
#include "java_util_ArrayList.h"
#include "java_io_PrintStream.h"
#include "java_lang_Short.h"
#include "java_lang_Character.h"
#include "java_lang_ClassNotFoundException.h"
#include "java_lang_NullPointerException.h"
#include "java_lang_NoSuchMethodError.h"
#include "java_lang_Class.h"
#include "java_io_File.h"
#include "java_lang_NoSuchFieldError.h"
#include "java_lang_Byte.h"
#include "java_lang_IllegalArgumentException.h"
#include "java_lang_Void.h"
#include "java_lang_Long.h"
#include "cava_apple_foundation_NSBundle.h"
#include "cava_c_VoidPtrPtr.h"
#include "java_lang_RuntimeException.h"
#include "java_lang_Double.h"
#include "java_util_List.h"
#include "java_lang_System.h"
extern jobject $literal25;
extern jobject $literal36;
extern jobject $literal26;
extern jobject $literal23;
extern jobject $literal34;
extern jobject $literal24;
extern jobject $literal35;
extern jobject $literal21;
extern jobject $literal32;
extern jobject $literal22;
extern jobject $literal33;
extern jobject $literal30;
extern jobject $literal20;
extern jobject $literal31;
extern jobject $literal18;
extern jobject $literal29;
extern jobject $literal19;
extern jobject $literal27;
extern jobject $literal28;


jobject mjava_lang_Class__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,0);
	JVMLINE(44)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_forName__Ljava_lang_String__Ljava_lang_Class_(jobject pclassName) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pclassName,jobject,0);
	DEFLOCAL(lvar_2_03,jint,1);
	DEFLOCAL(lptr,jobject,2);
	DEFLOCAL(lindex,jint,3);
	DEFLOCAL(lvalue,jobject,4);
	DEFLOCAL(lcls,jobject,5);

	JVMMETHOD(java_lang_Class_Class,1);
	JVMLINE(55)
	LOCAL(lvar_2_03,jint)=-1;
	switch(virtual_mjava_lang_Object_hashCode___I(LOCAL(pclassName,jobject))){
		case 2887:
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pclassName,jobject),$literal18)){
				LOCAL(lvar_2_03,jint)=0;
				break;
			}
			break;
		case 2911:
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pclassName,jobject),$literal19)){
				LOCAL(lvar_2_03,jint)=1;
				break;
			}
			break;
		case 2904:
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pclassName,jobject),$literal20)){
				LOCAL(lvar_2_03,jint)=2;
				break;
			}
			break;
		case 2888:
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pclassName,jobject),$literal21)){
				LOCAL(lvar_2_03,jint)=3;
				break;
			}
			break;
	}
	JVMLINE(69)
	switch(LOCAL(lvar_2_03,jint)){
		case 0:
			JVMLINE(56)
			{ jobject $$ret = &ArrOf_B_Class; thread->framePtr = entryFramePtr; return $$ret; };
		case 1:
			JVMLINE(57)
			{ jobject $$ret = &ArrOf_Z_Class; thread->framePtr = entryFramePtr; return $$ret; };
		case 2:
			JVMLINE(58)
			{ jobject $$ret = &ArrOf_S_Class; thread->framePtr = entryFramePtr; return $$ret; };
		case 3:
			JVMLINE(59)
			{ jobject $$ret = &ArrOf_C_Class; thread->framePtr = entryFramePtr; return $$ret; };
		default:
			JVMLINE(61)
			LOCAL(lptr,jobject)=JVMCLASSPATH;
			JVMLINE(62)
			LOCAL(lindex,jint)=0;
			JVMLINE(63)
			LOCAL(lvalue,jobject)=mcava_c_VoidPtrPtr_get__I_Ljava_lang_Object_(LOCAL(lptr,jobject),LOCAL(lindex,jint));
			JVMLINE(67)
			while(LOCAL(lvalue,jobject) != jnull){
				JVMLINE(65)
				LOCAL(lcls,jobject)=JvmCheckCast(LOCAL(lvalue,jobject),&java_lang_Class_Class);
				JVMLINE(66)
				if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(lcls,jobject)),LOCAL(pclassName,jobject))){
					{ jobject $$ret = LOCAL(lcls,jobject); thread->framePtr = entryFramePtr; return $$ret; };
				}
				JVMLINE(67)
				LOCAL(lvalue,jobject)=mcava_c_VoidPtrPtr_get__I_Ljava_lang_Object_(LOCAL(lptr,jobject),LOCAL(lindex,jint)++);
			}
			JVMLINE(69)
			JvmThrow(mjava_lang_ClassNotFoundException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_ClassNotFoundException_Class),LOCAL(pclassName,jobject)));
	}
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Class_getSuperclass___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,2);
	JVMLINE(73)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_superClass; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getComponentType___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,3);
	JVMLINE(77)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_componentType; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isPrimitive___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,4);
	JVMLINE(81)
	{ jbool $$ret = ((((((((LOCAL(pthis,jobject) == fjava_lang_Byte_TYPE) || (LOCAL(pthis,jobject) == fjava_lang_Character_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Boolean_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Short_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Integer_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Float_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Long_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Double_TYPE)) || (LOCAL(pthis,jobject) == fjava_lang_Void_TYPE); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_Class_getModifiers___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,5);
	JVMLINE(86)
	{ jint $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_modifiers; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_(jobject pthis, jobject pargs) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pargs,jobject,1);
	DEFLOCAL(lresult,jobject,2);

	JVMMETHOD(java_lang_Class_Class,6);
	JVMLINE(90)
	LOCAL(lresult,jobject)=mjava_lang_Class_getMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(LOCAL(pthis,jobject),$literal22,LOCAL(pargs,jobject));
	JVMLINE(92)
	if(LOCAL(lresult,jobject) != jnull){
		JVMLINE(92)
		((java_lang_Object*)(LOCAL(lresult,jobject)))->fjava_lang_Object_klass=&java_lang_reflect_Constructor_Class;
	}
	JVMLINE(94)
	{ jobject $$ret = JvmCheckCast(LOCAL(lresult,jobject),&java_lang_reflect_Constructor_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_(jobject pthis, jobject pargs) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pargs,jobject,1);
	DEFLOCAL(lresult,jobject,2);

	JVMMETHOD(java_lang_Class_Class,7);
	JVMLINE(98)
	LOCAL(lresult,jobject)=mjava_lang_Class_getDeclaredMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(LOCAL(pthis,jobject),$literal22,LOCAL(pargs,jobject));
	JVMLINE(100)
	if(LOCAL(lresult,jobject) != jnull){
		JVMLINE(100)
		((java_lang_Object*)(LOCAL(lresult,jobject)))->fjava_lang_Object_klass=&java_lang_reflect_Constructor_Class;
	}
	JVMLINE(102)
	{ jobject $$ret = JvmCheckCast(LOCAL(lresult,jobject),&java_lang_reflect_Constructor_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,8);
	JVMLINE(106)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_name; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getResourceAsStream__Ljava_lang_String__Ljava_io_InputStream_(jobject pthis, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);

	JVMMETHOD(java_lang_Class_Class,9);
	JVMLINE(110)
	virtual_mjava_io_PrintStream_println__Ljava_lang_String__V(JVMGLOBALS[1],virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal23),LOCAL(pname,jobject))));
	JVMLINE(111)
	{ jobject $$ret = mjava_io_FileInputStream__init___Ljava_io_File__V(JvmAllocObject(&java_io_FileInputStream_Class),mjava_io_File__init___Ljava_lang_String_Ljava_lang_String__V(JvmAllocObject(&java_io_File_Class),mcava_apple_foundation_NSBundle_getBundlePath___Ljava_lang_String_(mcava_apple_foundation_NSBundle_getMainBundle___Lcava_apple_foundation_NSBundle_()),LOCAL(pname,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getResource__Ljava_lang_String__Ljava_net_URL_(jobject pthis, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);

	JVMMETHOD(java_lang_Class_Class,10);
	JVMLINE(115)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isArray___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,11);
	JVMLINE(119)
	{ jbool $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_componentType != jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isAssignableFrom__Ljava_lang_Class__Z(jobject pthis, jobject pcls) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pcls,jobject,1);

	JVMMETHOD(java_lang_Class_Class,12);
	JVMLINE(135)
	{ jbool $$ret = JvmIsAssignableFrom(LOCAL(pthis,jobject),LOCAL(pcls,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isInstance__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_Class_Class,13);
	JVMLINE(139)
	{ jbool $$ret = mjava_lang_Class_isAssignableFrom__Ljava_lang_Class__Z(LOCAL(pthis,jobject),mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pobj,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isInterface___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,14);
	JVMLINE(143)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_newInstance___Ljava_lang_Object_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(lconstructor,jobject,1);

	JVMMETHOD(java_lang_Class_Class,15);
	JVMLINE(147)
	LOCAL(lconstructor,jobject)=mjava_lang_Class_getConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_(LOCAL(pthis,jobject),JvmAllocObjectArray1(&ArrOf_java_lang_Class_Class,0));
	JVMLINE(149)
	if(LOCAL(lconstructor,jobject) != jnull){
		JVMLINE(149)
		{ jobject $$ret = mjava_lang_reflect_Constructor_newInstance___Ljava_lang_Object__Ljava_lang_Object_(LOCAL(lconstructor,jobject),JvmAllocObjectArray1(&ArrOf_java_lang_Object_Class,0)); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(150)
	JvmThrow(mjava_lang_IllegalArgumentException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_IllegalArgumentException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_name),$literal24))));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Class_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,16);
	JVMLINE(154)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pthis,jobject))),$literal25)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isAnnotation___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,17);
	JVMLINE(158)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getAnnotation__Ljava_lang_Class__Ljava_lang_annotation_Annotation_(jobject pthis, jobject pannotationType) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pannotationType,jobject,1);

	JVMMETHOD(java_lang_Class_Class,18);
	JVMLINE(168)
	if(LOCAL(pannotationType,jobject) == jnull){
		JVMLINE(168)
		JvmThrow(mjava_lang_NullPointerException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NullPointerException_Class),$literal26));
	}
	JVMLINE(171)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getAnnotations____Ljava_lang_annotation_Annotation_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,19);
	JVMLINE(178)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredAnnotations____Ljava_lang_annotation_Annotation_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,20);
	JVMLINE(185)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isAnnotationPresent__Ljava_lang_Class__Z(jobject pthis, jobject pannotationType) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pannotationType,jobject,1);

	JVMMETHOD(java_lang_Class_Class,21);
	JVMLINE(193)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_asSubclass__Ljava_lang_Class__Ljava_lang_Class_(jobject pthis, jobject psuperclass) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(psuperclass,jobject,1);

	JVMMETHOD(java_lang_Class_Class,22);
	JVMLINE(205)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_cast__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pobject) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobject,jobject,1);

	JVMMETHOD(java_lang_Class_Class,23);
	JVMLINE(222)
	{ jobject $$ret = LOCAL(pobject,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isEnum___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,24);
	JVMLINE(232)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isAnonymousClass___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,25);
	JVMLINE(239)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getSimpleName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(ln,jobject,1);

	JVMMETHOD(java_lang_Class_Class,26);
	JVMLINE(246)
	LOCAL(ln,jobject)=mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pthis,jobject));
	JVMLINE(247)
	{ jobject $$ret = mjava_lang_String_substring__I_Ljava_lang_String_(LOCAL(ln,jobject),mjava_lang_String_lastIndexOf__I_I(LOCAL(ln,jobject),46) + 1); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_isSynthetic___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,27);
	JVMLINE(254)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getCanonicalName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,28);
	JVMLINE(258)
	{ jobject $$ret = mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pthis,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_equals__Ljava_lang_Object__Z(jobject pthis, jobject pobj) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pobj,jobject,1);

	JVMMETHOD(java_lang_Class_Class,29);
	JVMLINE(263)
	{ jbool $$ret = LOCAL(pthis,jobject) == LOCAL(pobj,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_Class_desiredAssertionStatus___Z(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,30);
	JVMLINE(267)
	{ jbool $$ret = jfalse; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getInterfaces____Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,31);
	JVMLINE(271)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_interfaces != jnull ? JvmCheckCast(mjava_lang_Object_clone___Ljava_lang_Object_(((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_interfaces),&ArrOf_java_lang_Class_Class) : JvmAllocObjectArray1(&ArrOf_java_lang_Class_Class,0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_findMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);
	DEFARG(pparameters,jobject,2);
	DEFLOCAL(lvar_3_0D,jobject,3);
	DEFLOCAL(lvar_4_10,jint,4);
	DEFLOCAL(lvar_5_13,jint,5);
	DEFLOCAL(lm,jobject,6);
	DEFLOCAL(lequals,jbool,7);
	DEFLOCAL(li,jint,8);

	JVMMETHOD(java_lang_Class_Class,32);
	JVMLINE(275)
	if(((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_methods == jnull){
		{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(276)
	LOCAL(lvar_3_0D,jobject)=((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_methods;
	LOCAL(lvar_4_10,jint)=JvmArrayLen(LOCAL(lvar_3_0D,jobject));
	LOCAL(lvar_5_13,jint)=0;
	while(LOCAL(lvar_5_13,jint) < LOCAL(lvar_4_10,jint)){
		LOCAL(lm,jobject)=JvmArrayGet_O(LOCAL(lvar_3_0D,jobject),LOCAL(lvar_5_13,jint));
		JVMLINE(288)
		if((((LOCAL(pparameters,jobject) == jnull) && ((JvmArrayLen(((java_lang_reflect_Method*)(LOCAL(lm,jobject)))->fjava_lang_reflect_Method_parameters)) == 0)) || ((JvmArrayLen(LOCAL(pparameters,jobject))) == (JvmArrayLen(((java_lang_reflect_Method*)(LOCAL(lm,jobject)))->fjava_lang_reflect_Method_parameters)))) && virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(LOCAL(pname,jobject),((java_lang_reflect_Method*)(LOCAL(lm,jobject)))->fjava_lang_reflect_Method_name)){
			JVMLINE(279)
			LOCAL(lequals,jbool)=jtrue;
			JVMLINE(281)
			if(LOCAL(pparameters,jobject) != jnull){
				JVMLINE(281)
				LOCAL(li,jint)=0;
				while(LOCAL(li,jint) < (JvmArrayLen(LOCAL(pparameters,jobject)))){
					JVMLINE(285)
					if((JvmArrayGet_O(LOCAL(pparameters,jobject),LOCAL(li,jint))) != (JvmArrayGet_O(((java_lang_reflect_Method*)(LOCAL(lm,jobject)))->fjava_lang_reflect_Method_parameters,LOCAL(li,jint)))){
						JVMLINE(284)
						LOCAL(lequals,jbool)=jfalse;
						JVMLINE(285)
						break;
					}
					JVMLINE(281)
					LOCAL(li,jint)++;
				}
			}
			JVMLINE(288)
			if(LOCAL(lequals,jbool)){
				{ jobject $$ret = LOCAL(lm,jobject); thread->framePtr = entryFramePtr; return $$ret; };
			}
		}
		JVMLINE(276)
		LOCAL(lvar_5_13,jint)++;
	}
	JVMLINE(291)
	{ jobject $$ret = jnull; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);
	DEFARG(pparameters,jobject,2);
	DEFLOCAL(lresult,jobject,3);

	JVMMETHOD(java_lang_Class_Class,33);
	JVMLINE(295)
	LOCAL(lresult,jobject)=mjava_lang_Class_findMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(LOCAL(pthis,jobject),LOCAL(pname,jobject),LOCAL(pparameters,jobject));
	JVMLINE(296)
	if(LOCAL(lresult,jobject) == jnull){
		JvmThrow(mjava_lang_NoSuchMethodError__init____V(JvmAllocObject(&java_lang_NoSuchMethodError_Class)));
	}
	JVMLINE(297)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredMethods____Ljava_lang_reflect_Method_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,34);
	JVMLINE(301)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_methods != jnull ? JvmCheckCast(mjava_lang_Object_clone___Ljava_lang_Object_(((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_methods),&ArrOf_java_lang_reflect_Method_Class) : JvmAllocObjectArray1(&ArrOf_java_lang_reflect_Method_Class,0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(jobject pthis, jobject pname, jobject pparameters) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);
	DEFARG(pparameters,jobject,2);
	DEFLOCAL(lroot,jobject,3);
	DEFLOCAL(lresult,jobject,4);

	JVMMETHOD(java_lang_Class_Class,35);
	JVMLINE(305)
	LOCAL(lroot,jobject)=LOCAL(pthis,jobject);
	JVMLINE(309)
	while(LOCAL(lroot,jobject) != jnull){
		JVMLINE(307)
		LOCAL(lresult,jobject)=mjava_lang_Class_findMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_(LOCAL(lroot,jobject),LOCAL(pname,jobject),LOCAL(pparameters,jobject));
		JVMLINE(308)
		if(LOCAL(lresult,jobject) != jnull){
			{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
		}
		JVMLINE(309)
		LOCAL(lroot,jobject)=((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_superClass;
	}
	JVMLINE(311)
	JvmThrow(mjava_lang_NoSuchMethodError__init____V(JvmAllocObject(&java_lang_NoSuchMethodError_Class)));
	thread->framePtr = entryFramePtr;
	return jnull;
}

jobject mjava_lang_Class_getMethods____Ljava_lang_reflect_Method_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(llist,jobject,1);
	DEFLOCAL(lroot,jobject,2);
	DEFLOCAL(li,jint,3);

	JVMMETHOD(java_lang_Class_Class,36);
	JVMLINE(315)
	LOCAL(llist,jobject)=mjava_util_ArrayList__init____V(JvmAllocObject(&java_util_ArrayList_Class));
	JVMLINE(316)
	LOCAL(lroot,jobject)=LOCAL(pthis,jobject);
	JVMLINE(321)
	while(LOCAL(lroot,jobject) != jnull){
		JVMLINE(319)
		if(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_methods != jnull){
			JVMLINE(319)
			LOCAL(li,jint)=0;
			while(LOCAL(li,jint) < (JvmArrayLen(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_methods))){
				JVMLINE(320)
				interface_mjava_util_List_add__Ljava_lang_Object__Z(LOCAL(llist,jobject),JvmArrayGet_O(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_methods,LOCAL(li,jint)));
				JVMLINE(319)
				LOCAL(li,jint)++;
			}
		}
		JVMLINE(321)
		LOCAL(lroot,jobject)=((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_superClass;
	}
	JVMLINE(323)
	{ jobject $$ret = JvmCheckCast(interface_mjava_util_List_toArray___Ljava_lang_Object___Ljava_lang_Object_(LOCAL(llist,jobject),JvmAllocObjectArray1(&ArrOf_java_lang_reflect_Method_Class,interface_mjava_util_List_size___I(LOCAL(llist,jobject)))),&ArrOf_java_lang_reflect_Method_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredField__Ljava_lang_String__Ljava_lang_reflect_Field_(jobject pthis, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);
	DEFLOCAL(lresult,jobject,2);
	DEFLOCAL(lvar_3_0D,jobject,3);
	DEFLOCAL(lvar_4_10,jint,4);
	DEFLOCAL(lvar_5_13,jint,5);
	DEFLOCAL(lf,jobject,6);

	JVMMETHOD(java_lang_Class_Class,37);
	JVMLINE(327)
	LOCAL(lresult,jobject)=jnull;
	JVMLINE(329)
	if(((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_fields != jnull){
		JVMLINE(329)
		LOCAL(lvar_3_0D,jobject)=((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_fields;
		LOCAL(lvar_4_10,jint)=JvmArrayLen(LOCAL(lvar_3_0D,jobject));
		LOCAL(lvar_5_13,jint)=0;
		while(LOCAL(lvar_5_13,jint) < LOCAL(lvar_4_10,jint)){
			LOCAL(lf,jobject)=JvmArrayGet_O(LOCAL(lvar_3_0D,jobject),LOCAL(lvar_5_13,jint));
			JVMLINE(332)
			if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(((java_lang_reflect_Field*)(LOCAL(lf,jobject)))->fjava_lang_reflect_Field_name,LOCAL(pname,jobject))){
				JVMLINE(331)
				LOCAL(lresult,jobject)=LOCAL(lf,jobject);
				JVMLINE(332)
				break;
			}
			JVMLINE(329)
			LOCAL(lvar_5_13,jint)++;
		}
	}
	JVMLINE(335)
	if(LOCAL(lresult,jobject) == jnull){
		JvmThrow(mjava_lang_NoSuchFieldError__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NoSuchFieldError_Class),LOCAL(pname,jobject)));
	}
	JVMLINE(336)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getDeclaredFields____Ljava_lang_reflect_Field_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_Class_Class,38);
	JVMLINE(340)
	{ jobject $$ret = ((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_fields != jnull ? JvmCheckCast(mjava_lang_Object_clone___Ljava_lang_Object_(((java_lang_Class*)(LOCAL(pthis,jobject)))->fjava_lang_Class_fields),&ArrOf_java_lang_reflect_Field_Class) : JvmAllocObjectArray1(&ArrOf_java_lang_reflect_Field_Class,0); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getField__Ljava_lang_String__Ljava_lang_reflect_Field_(jobject pthis, jobject pname) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pname,jobject,1);
	DEFLOCAL(lroot,jobject,2);
	DEFLOCAL(lresult,jobject,3);
	DEFLOCAL(lvar_4_17,jobject,4);
	DEFLOCAL(lvar_5_1C,jint,5);
	DEFLOCAL(lvar_6_1F,jint,6);
	DEFLOCAL(lfield,jobject,7);

	JVMMETHOD(java_lang_Class_Class,39);
	JVMLINE(344)
	LOCAL(lroot,jobject)=LOCAL(pthis,jobject);
	JVMLINE(345)
	LOCAL(lresult,jobject)=jnull;
	JVMLINE(355)
	while((LOCAL(lroot,jobject) != jnull) && (LOCAL(lresult,jobject) == jnull)){
		JVMLINE(348)
		if(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_fields != jnull){
			JVMLINE(348)
			LOCAL(lvar_4_17,jobject)=((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_fields;
			LOCAL(lvar_5_1C,jint)=JvmArrayLen(LOCAL(lvar_4_17,jobject));
			LOCAL(lvar_6_1F,jint)=0;
			while(LOCAL(lvar_6_1F,jint) < LOCAL(lvar_5_1C,jint)){
				LOCAL(lfield,jobject)=JvmArrayGet_O(LOCAL(lvar_4_17,jobject),LOCAL(lvar_6_1F,jint));
				JVMLINE(351)
				if(virtual_mjava_lang_Object_equals__Ljava_lang_Object__Z(((java_lang_reflect_Field*)(LOCAL(lfield,jobject)))->fjava_lang_reflect_Field_name,LOCAL(pname,jobject))){
					JVMLINE(350)
					LOCAL(lresult,jobject)=LOCAL(lfield,jobject);
					JVMLINE(351)
					break;
				}
				JVMLINE(348)
				LOCAL(lvar_6_1F,jint)++;
			}
		}
		JVMLINE(355)
		if(LOCAL(lresult,jobject) == jnull){
			JVMLINE(355)
			LOCAL(lroot,jobject)=((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_superClass;
		}
	}
	JVMLINE(357)
	if(LOCAL(lresult,jobject) == jnull){
		JvmThrow(mjava_lang_NoSuchFieldError__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_NoSuchFieldError_Class),LOCAL(pname,jobject)));
	}
	JVMLINE(358)
	{ jobject $$ret = LOCAL(lresult,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getFields____Ljava_lang_reflect_Field_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFLOCAL(llist,jobject,1);
	DEFLOCAL(lroot,jobject,2);
	DEFLOCAL(li,jint,3);

	JVMMETHOD(java_lang_Class_Class,40);
	JVMLINE(362)
	LOCAL(llist,jobject)=mjava_util_ArrayList__init____V(JvmAllocObject(&java_util_ArrayList_Class));
	JVMLINE(363)
	LOCAL(lroot,jobject)=LOCAL(pthis,jobject);
	JVMLINE(368)
	while(LOCAL(lroot,jobject) != jnull){
		JVMLINE(366)
		if(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_fields != jnull){
			JVMLINE(366)
			LOCAL(li,jint)=0;
			while(LOCAL(li,jint) < (JvmArrayLen(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_fields))){
				JVMLINE(367)
				interface_mjava_util_List_add__Ljava_lang_Object__Z(LOCAL(llist,jobject),JvmArrayGet_O(((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_fields,LOCAL(li,jint)));
				JVMLINE(366)
				LOCAL(li,jint)++;
			}
		}
		JVMLINE(368)
		LOCAL(lroot,jobject)=((java_lang_Class*)(LOCAL(lroot,jobject)))->fjava_lang_Class_superClass;
	}
	JVMLINE(370)
	{ jobject $$ret = JvmCheckCast(interface_mjava_util_List_toArray___Ljava_lang_Object___Ljava_lang_Object_(LOCAL(llist,jobject),JvmAllocObjectArray1(&ArrOf_java_lang_reflect_Field_Class,interface_mjava_util_List_size___I(LOCAL(llist,jobject)))),&ArrOf_java_lang_reflect_Field_Class); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getPrimitiveNativeName__Ljava_lang_Class__Ljava_lang_String_(jobject pcomponentType) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcomponentType,jobject,0);
	DEFLOCAL(lname,jobject,1);

	JVMMETHOD(java_lang_Class_Class,41);
	JVMLINE(382)
	if(LOCAL(pcomponentType,jobject) == fjava_lang_Byte_TYPE){
		LOCAL(lname,jobject)=$literal27;
	}
	else{
		JVMLINE(382)
		if(LOCAL(pcomponentType,jobject) == fjava_lang_Boolean_TYPE){
			LOCAL(lname,jobject)=$literal28;
		}
		else{
			JVMLINE(382)
			if(LOCAL(pcomponentType,jobject) == fjava_lang_Character_TYPE){
				LOCAL(lname,jobject)=$literal29;
			}
			else{
				JVMLINE(382)
				if(LOCAL(pcomponentType,jobject) == fjava_lang_Short_TYPE){
					LOCAL(lname,jobject)=$literal30;
				}
				else{
					JVMLINE(382)
					if(LOCAL(pcomponentType,jobject) == fjava_lang_Integer_TYPE){
						LOCAL(lname,jobject)=$literal31;
					}
					else{
						JVMLINE(382)
						if(LOCAL(pcomponentType,jobject) == fjava_lang_Float_TYPE){
							LOCAL(lname,jobject)=$literal32;
						}
						else{
							JVMLINE(382)
							if(LOCAL(pcomponentType,jobject) == fjava_lang_Long_TYPE){
								LOCAL(lname,jobject)=$literal33;
							}
							else{
								JVMLINE(383)
								if(LOCAL(pcomponentType,jobject) != fjava_lang_Double_TYPE){
									JVMLINE(383)
									JvmThrow(mjava_lang_RuntimeException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_RuntimeException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pcomponentType,jobject))),$literal34))));
								}
								JVMLINE(382)
								LOCAL(lname,jobject)=$literal35;
							}
						}
					}
				}
			}
		}
	}
	JVMLINE(384)
	{ jobject $$ret = LOCAL(lname,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_Class_getArrayClassFor__Ljava_lang_Class__Ljava_lang_Class_(jobject pcomponentType) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pcomponentType,jobject,0);
	DEFLOCAL(lname,jobject,1);

	JVMMETHOD(java_lang_Class_Class,42);
	JVMLINE(388)
	LOCAL(lname,jobject)=virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal36),mjava_lang_Class_isPrimitive___Z(LOCAL(pcomponentType,jobject)) ? mjava_lang_Class_getPrimitiveNativeName__Ljava_lang_Class__Ljava_lang_String_(LOCAL(pcomponentType,jobject)) : mjava_lang_Class_getName___Ljava_lang_String_(LOCAL(pcomponentType,jobject))));
	JVMLINE(389)
	{ jobject $$ret = mjava_lang_Class_forName__Ljava_lang_String__Ljava_lang_Class_(LOCAL(lname,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_Class_Class;
JvmClass ArrOf_java_lang_Class_Class;
JvmClass ArrOf_ArrOf_java_lang_Class_Class;

jbool java_lang_Class_isChildOf(JvmClass* klass) {
	return klass == &java_lang_Class_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_OOO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_Z(jobject,jobject,jobject);
void JvmSetup_java_lang_Class() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[0] = &mjava_lang_Class_toString___Ljava_lang_String_;
	_vTable[1] = &mjava_lang_Class_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_Class_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_Class);
	cls->name = JvmMakeString(L"java.lang.Class",15);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_Class_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Class.java",10);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 43, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"<init>", 6), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 44, 44, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=44, .endLine=44, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"forName", 7), &java_lang_Class_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Class_forName__Ljava_lang_String__Ljava_lang_Class_, &invoke_OO 
#ifdef JVM_DEBUG
 , 55, 69, 1, 5, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"className",9), .startLine=55, .endLine=69, .type=&java_lang_String_Class},{.name=JvmMakeString(L"var_2_03",8), .startLine=55, .endLine=69, .type=&I_Class},{.name=JvmMakeString(L"ptr",3), .startLine=61, .endLine=69, .type=&cava_c_VoidPtrPtr_Class},{.name=JvmMakeString(L"index",5), .startLine=62, .endLine=69, .type=&I_Class},{.name=JvmMakeString(L"value",5), .startLine=63, .endLine=69, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"cls",3), .startLine=65, .endLine=69, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getSuperclass", 13), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getSuperclass___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 73, 73, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=73, .endLine=73, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getComponentType", 16), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getComponentType___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 77, 77, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=77, .endLine=77, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isPrimitive", 11), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isPrimitive___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 81, 81, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=81, .endLine=81, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getModifiers", 12), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getModifiers___I, &invoke_I 
#ifdef JVM_DEBUG
 , 86, 86, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=86, .endLine=86, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getConstructor", 14), &java_lang_reflect_Constructor_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Class_Class}), &mjava_lang_Class_getConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_, &invoke_OO 
#ifdef JVM_DEBUG
 , 90, 94, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"args",4), .startLine=90, .endLine=94, .type=&ArrOf_java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=90, .endLine=94, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=90, .endLine=94, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredConstructor", 22), &java_lang_reflect_Constructor_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&ArrOf_java_lang_Class_Class}), &mjava_lang_Class_getDeclaredConstructor___Ljava_lang_Class__Ljava_lang_reflect_Constructor_, &invoke_OO 
#ifdef JVM_DEBUG
 , 98, 102, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"args",4), .startLine=98, .endLine=102, .type=&ArrOf_java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=98, .endLine=102, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=98, .endLine=102, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getName", 7), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 106, 106, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=106, .endLine=106, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getResourceAsStream", 19), &java_io_InputStream_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Class_getResourceAsStream__Ljava_lang_String__Ljava_io_InputStream_, &invoke_OO 
#ifdef JVM_DEBUG
 , 110, 111, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=110, .endLine=111, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=111, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getResource", 11), &java_net_URL_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Class_getResource__Ljava_lang_String__Ljava_net_URL_, &invoke_OO 
#ifdef JVM_DEBUG
 , 115, 115, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=0, .endLine=115, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=115, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isArray", 7), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isArray___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 119, 119, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=119, .endLine=119, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isAssignableFrom", 16), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_isAssignableFrom__Ljava_lang_Class__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 135, 135, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"cls",3), .startLine=135, .endLine=135, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=135, .endLine=135, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isInstance", 10), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Class_isInstance__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 139, 139, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=139, .endLine=139, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=139, .endLine=139, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isInterface", 11), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isInterface___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 143, 143, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=143, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"newInstance", 11), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_newInstance___Ljava_lang_Object_, &invoke_O 
#ifdef JVM_DEBUG
 , 147, 150, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=147, .endLine=150, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"constructor",11), .startLine=147, .endLine=150, .type=&java_lang_reflect_Constructor_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 154, 154, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=154, .endLine=154, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isAnnotation", 12), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isAnnotation___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 158, 158, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=158, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getAnnotation", 13), &java_lang_annotation_Annotation_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_getAnnotation__Ljava_lang_Class__Ljava_lang_annotation_Annotation_, &invoke_OO 
#ifdef JVM_DEBUG
 , 168, 171, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"annotationType",14), .startLine=168, .endLine=171, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=171, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getAnnotations", 14), &ArrOf_java_lang_annotation_Annotation_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getAnnotations____Ljava_lang_annotation_Annotation_, &invoke_O 
#ifdef JVM_DEBUG
 , 178, 178, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=178, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredAnnotations", 22), &ArrOf_java_lang_annotation_Annotation_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getDeclaredAnnotations____Ljava_lang_annotation_Annotation_, &invoke_O 
#ifdef JVM_DEBUG
 , 185, 185, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=185, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isAnnotationPresent", 19), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_isAnnotationPresent__Ljava_lang_Class__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 193, 193, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"annotationType",14), .startLine=0, .endLine=193, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=193, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"asSubclass", 10), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_asSubclass__Ljava_lang_Class__Ljava_lang_Class_, &invoke_OO 
#ifdef JVM_DEBUG
 , 205, 205, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"superclass",10), .startLine=0, .endLine=205, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=205, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"cast", 4), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Class_cast__Ljava_lang_Object__Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 222, 222, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"object",6), .startLine=222, .endLine=222, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=222, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isEnum", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isEnum___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 232, 232, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=232, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isAnonymousClass", 16), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isAnonymousClass___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 239, 239, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=239, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getSimpleName", 13), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getSimpleName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 246, 247, 0, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=246, .endLine=247, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"n",1), .startLine=246, .endLine=247, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"isSynthetic", 11), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_isSynthetic___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 254, 254, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=254, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getCanonicalName", 16), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getCanonicalName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 258, 258, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=258, .endLine=258, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"equals", 6), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_Class_equals__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 263, 263, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"obj",3), .startLine=263, .endLine=263, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=263, .endLine=263, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"desiredAssertionStatus", 22), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_desiredAssertionStatus___Z, &invoke_Z 
#ifdef JVM_DEBUG
 , 267, 267, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=267, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getInterfaces", 13), &ArrOf_java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getInterfaces____Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 271, 271, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=271, .endLine=271, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"findMethod", 10), &java_lang_reflect_Method_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&ArrOf_java_lang_Class_Class}), &mjava_lang_Class_findMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 275, 291, 2, 7, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=288, .endLine=291, .type=&java_lang_String_Class},{.name=JvmMakeString(L"parameters",10), .startLine=281, .endLine=291, .type=&ArrOf_java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=275, .endLine=291, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"var_3_0D",8), .startLine=276, .endLine=291, .type=&ArrOf_java_lang_reflect_Method_Class},{.name=JvmMakeString(L"var_4_10",8), .startLine=276, .endLine=291, .type=&I_Class},{.name=JvmMakeString(L"var_5_13",8), .startLine=276, .endLine=291, .type=&I_Class},{.name=JvmMakeString(L"m",1), .startLine=276, .endLine=291, .type=&java_lang_reflect_Method_Class},{.name=JvmMakeString(L"equals",6), .startLine=279, .endLine=291, .type=&Z_Class},{.name=JvmMakeString(L"i",1), .startLine=281, .endLine=291, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredMethod", 17), &java_lang_reflect_Method_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&ArrOf_java_lang_Class_Class}), &mjava_lang_Class_getDeclaredMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 295, 297, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=295, .endLine=297, .type=&java_lang_String_Class},{.name=JvmMakeString(L"parameters",10), .startLine=295, .endLine=297, .type=&ArrOf_java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=295, .endLine=297, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=295, .endLine=297, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredMethods", 18), &ArrOf_java_lang_reflect_Method_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getDeclaredMethods____Ljava_lang_reflect_Method_, &invoke_O 
#ifdef JVM_DEBUG
 , 301, 301, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=301, .endLine=301, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getMethod", 9), &java_lang_reflect_Method_Class, 129, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_String_Class,&ArrOf_java_lang_Class_Class}), &mjava_lang_Class_getMethod__Ljava_lang_String__Ljava_lang_Class__Ljava_lang_reflect_Method_, &invoke_OOO 
#ifdef JVM_DEBUG
 , 305, 311, 2, 3, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=307, .endLine=311, .type=&java_lang_String_Class},{.name=JvmMakeString(L"parameters",10), .startLine=307, .endLine=311, .type=&ArrOf_java_lang_Class_Class},{.name=JvmMakeString(L"this",4), .startLine=305, .endLine=311, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"root",4), .startLine=305, .endLine=311, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=307, .endLine=311, .type=&java_lang_reflect_Method_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getMethods", 10), &ArrOf_java_lang_reflect_Method_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getMethods____Ljava_lang_reflect_Method_, &invoke_O 
#ifdef JVM_DEBUG
 , 315, 323, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=316, .endLine=323, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"list",4), .startLine=315, .endLine=323, .type=&java_util_List_Class},{.name=JvmMakeString(L"root",4), .startLine=316, .endLine=323, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"i",1), .startLine=319, .endLine=323, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredField", 16), &java_lang_reflect_Field_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Class_getDeclaredField__Ljava_lang_String__Ljava_lang_reflect_Field_, &invoke_OO 
#ifdef JVM_DEBUG
 , 327, 336, 1, 6, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=332, .endLine=336, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=329, .endLine=336, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=327, .endLine=336, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"var_3_0D",8), .startLine=329, .endLine=336, .type=&ArrOf_java_lang_reflect_Field_Class},{.name=JvmMakeString(L"var_4_10",8), .startLine=329, .endLine=336, .type=&I_Class},{.name=JvmMakeString(L"var_5_13",8), .startLine=329, .endLine=336, .type=&I_Class},{.name=JvmMakeString(L"f",1), .startLine=329, .endLine=336, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getDeclaredFields", 17), &ArrOf_java_lang_reflect_Field_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getDeclaredFields____Ljava_lang_reflect_Field_, &invoke_O 
#ifdef JVM_DEBUG
 , 340, 340, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=340, .endLine=340, .type=&java_lang_Class_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getField", 8), &java_lang_reflect_Field_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_String_Class}), &mjava_lang_Class_getField__Ljava_lang_String__Ljava_lang_reflect_Field_, &invoke_OO 
#ifdef JVM_DEBUG
 , 344, 358, 1, 7, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"name",4), .startLine=351, .endLine=358, .type=&java_lang_String_Class},{.name=JvmMakeString(L"this",4), .startLine=344, .endLine=358, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"root",4), .startLine=344, .endLine=358, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"result",6), .startLine=345, .endLine=358, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"var_4_17",8), .startLine=348, .endLine=358, .type=&ArrOf_java_lang_reflect_Field_Class},{.name=JvmMakeString(L"var_5_1C",8), .startLine=348, .endLine=358, .type=&I_Class},{.name=JvmMakeString(L"var_6_1F",8), .startLine=348, .endLine=358, .type=&I_Class},{.name=JvmMakeString(L"field",5), .startLine=348, .endLine=358, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getFields", 9), &ArrOf_java_lang_reflect_Field_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_Class_getFields____Ljava_lang_reflect_Field_, &invoke_O 
#ifdef JVM_DEBUG
 , 362, 370, 0, 4, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=363, .endLine=370, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"list",4), .startLine=362, .endLine=370, .type=&java_util_List_Class},{.name=JvmMakeString(L"root",4), .startLine=363, .endLine=370, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"i",1), .startLine=366, .endLine=370, .type=&I_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getPrimitiveNativeName", 22), &java_lang_String_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_getPrimitiveNativeName__Ljava_lang_Class__Ljava_lang_String_, &invoke_OO 
#ifdef JVM_DEBUG
 , 382, 384, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"componentType",13), .startLine=382, .endLine=384, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"name",4), .startLine=382, .endLine=384, .type=&java_lang_String_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_Class_Class, JvmMakeString(L"getArrayClassFor", 16), &java_lang_Class_Class, 9, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Class_Class}), &mjava_lang_Class_getArrayClassFor__Ljava_lang_Class__Ljava_lang_Class_, &invoke_OO 
#ifdef JVM_DEBUG
 , 388, 389, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"componentType",13), .startLine=388, .endLine=389, .type=&java_lang_Class_Class},{.name=JvmMakeString(L"name",4), .startLine=388, .endLine=389, .type=&java_lang_String_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 8, &(JvmField*[]){
	JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"size", 4), &I_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_size))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"name", 4), &java_lang_String_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_name))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"superClass", 10), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_superClass))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"componentType", 13), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_componentType))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"modifiers", 9), &I_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_modifiers))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"fields", 6), &ArrOf_java_lang_reflect_Field_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_fields))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"interfaces", 10), &ArrOf_java_lang_Class_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_interfaces))
	,JvmMakeField(&java_lang_Class_Class, JvmMakeString(L"methods", 7), &ArrOf_java_lang_reflect_Method_Class, 1, (void*)offsetof(java_lang_Class,fjava_lang_Class_methods))
	});

	cls = &ArrOf_java_lang_Class_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.Class",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_Class_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_Class_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.Class",16);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_Class_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
