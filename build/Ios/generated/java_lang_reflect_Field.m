#include "java_lang_Integer.h"
#include "java_lang_ClassCastException.h"
#include "java_lang_reflect_Field.h"
#include "java_lang_reflect_Modifier.h"
#include "java_lang_StringBuilder.h"
#include "java_lang_Byte.h"
#include "java_lang_Number.h"
#include "java_lang_Boolean.h"
#include "java_lang_Float.h"
#include "java_lang_Long.h"
#include "java_lang_Short.h"
#include "java_lang_Character.h"
#include "java_lang_Double.h"
extern jobject $literal6;
extern jobject $literal7;


jobject mjava_lang_reflect_Field__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Field_Class,0);
	JVMLINE(29)
	mjava_lang_Object__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Field_getName___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Field_Class,1);
	JVMLINE(37)
	{ jobject $$ret = ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_name; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_reflect_Field_getModifiers___I(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Field_Class,2);
	JVMLINE(41)
	{ jint $$ret = ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Field_getType___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Field_Class,3);
	JVMLINE(45)
	{ jobject $$ret = ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Field_getDeclaringClass___Ljava_lang_Class_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(java_lang_reflect_Field_Class,4);
	JVMLINE(49)
	{ jobject $$ret = ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_declaringClass; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setAccessible__Z_V(jobject pthis, jbool pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pvalue,jbool,1);

	JVMMETHOD(java_lang_reflect_Field_Class,5);
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFLOCAL(lptr,jobject,2);

	JVMMETHOD(java_lang_reflect_Field_Class,6);
	JVMLINE(57)
	LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
	JVMLINE(60)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Byte_TYPE){
		JVMLINE(60)
		{ jlong $$ret = (((jbyte*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(62)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Boolean_TYPE){
		JVMLINE(62)
		{ jlong $$ret = (((jbool*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(64)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Character_TYPE){
		JVMLINE(64)
		{ jlong $$ret = (((jchar*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(66)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Short_TYPE){
		JVMLINE(66)
		{ jlong $$ret = (((jshort*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(68)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Integer_TYPE){
		JVMLINE(68)
		{ jlong $$ret = (((jint*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(70)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Long_TYPE){
		JVMLINE(70)
		{ jlong $$ret = (((jlong*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(71)
	{ jlong $$ret = 0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(jobject pthis, jobject pbase, jlong pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jlong,2);
	DEFLOCAL(lptr,jobject,3);

	JVMMETHOD(java_lang_reflect_Field_Class,7);
	JVMLINE(77)
	LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
	JVMLINE(79)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Byte_TYPE){
		JVMLINE(79)
		((jbyte*)LOCAL(lptr,jobject))[0] = (jbyte)LOCAL(pvalue,jlong);
	}
	JVMLINE(81)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Boolean_TYPE){
		JVMLINE(81)
		((jbool*)LOCAL(lptr,jobject))[0] = (jbool)LOCAL(pvalue,jlong);
	}
	JVMLINE(83)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Character_TYPE){
		JVMLINE(83)
		((jchar*)LOCAL(lptr,jobject))[0] = (jchar)LOCAL(pvalue,jlong);
	}
	JVMLINE(85)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Short_TYPE){
		JVMLINE(85)
		((jshort*)LOCAL(lptr,jobject))[0] = (jshort)LOCAL(pvalue,jlong);
	}
	JVMLINE(87)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Integer_TYPE){
		JVMLINE(87)
		((jint*)LOCAL(lptr,jobject))[0] = (jint)LOCAL(pvalue,jlong);
	}
	JVMLINE(89)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Long_TYPE){
		JVMLINE(89)
		((jlong*)LOCAL(lptr,jobject))[0] = (jlong)LOCAL(pvalue,jlong);
	}
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFLOCAL(lptr,jobject,2);

	JVMMETHOD(java_lang_reflect_Field_Class,8);
	JVMLINE(95)
	LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
	JVMLINE(98)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Double_TYPE){
		JVMLINE(98)
		{ jdouble $$ret = (((jdouble*)LOCAL(lptr,jobject))[0]); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(100)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Float_TYPE){
		JVMLINE(100)
		{ jdouble $$ret = ((jdouble)((((jfloat*)LOCAL(lptr,jobject))[0]))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(101)
	{ jdouble $$ret = 0.0; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V(jobject pthis, jobject pbase, jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jdouble,2);
	DEFLOCAL(lptr,jobject,3);

	JVMMETHOD(java_lang_reflect_Field_Class,9);
	JVMLINE(107)
	LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
	JVMLINE(109)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Double_TYPE){
		JVMLINE(109)
		((jdouble*)LOCAL(lptr,jobject))[0] = (jdouble)LOCAL(pvalue,jdouble);
	}
	JVMLINE(111)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Float_TYPE){
		JVMLINE(111)
		((jfloat*)LOCAL(lptr,jobject))[0] = (jfloat)LOCAL(pvalue,jdouble);
	}
	thread->framePtr = entryFramePtr;
}

jobject mjava_lang_reflect_Field_get__Ljava_lang_Object__Ljava_lang_Object_(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFLOCAL(lptr,jobject,2);

	JVMMETHOD(java_lang_reflect_Field_Class,10);
	JVMLINE(116)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Byte_TYPE){
		JVMLINE(116)
		{ jobject $$ret = mjava_lang_Byte_valueOf__B_Ljava_lang_Byte_(((jbyte)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject))))))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(118)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Boolean_TYPE){
		JVMLINE(118)
		{ jobject $$ret = mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)) == 1); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(120)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Character_TYPE){
		JVMLINE(120)
		{ jobject $$ret = mjava_lang_Character_valueOf__C_Ljava_lang_Character_(((jchar)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject))))))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(122)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Short_TYPE){
		JVMLINE(122)
		{ jobject $$ret = mjava_lang_Short_valueOf__S_Ljava_lang_Short_(((jshort)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject))))))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(124)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Integer_TYPE){
		JVMLINE(124)
		{ jobject $$ret = mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject))))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(126)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Long_TYPE){
		JVMLINE(126)
		{ jobject $$ret = mjava_lang_Long_valueOf__J_Ljava_lang_Long_(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(128)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Float_TYPE){
		JVMLINE(128)
		{ jobject $$ret = mjava_lang_Float_valueOf__F_Ljava_lang_Float_(((jfloat)(mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(LOCAL(pthis,jobject),LOCAL(pbase,jobject))))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(130)
	if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Double_TYPE){
		JVMLINE(130)
		{ jobject $$ret = mjava_lang_Double_valueOf__D_Ljava_lang_Double_(mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(LOCAL(pthis,jobject),LOCAL(pbase,jobject))); thread->framePtr = entryFramePtr; return $$ret; };
	}
	JVMLINE(134)
	LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
	JVMLINE(136)
	{ jobject $$ret = ((jobject*)LOCAL(lptr,jobject))[0]; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_set__Ljava_lang_Object_Ljava_lang_Object__V(jobject pthis, jobject pbase, jobject pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jobject,2);
	DEFLOCAL(lptr,jobject,3);

	JVMMETHOD(java_lang_reflect_Field_Class,11);
	JVMLINE(163)
	if((((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Float_TYPE) || (((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Double_TYPE)){
		JVMLINE(142)
		if((LOCAL(pvalue,jobject) != jnull) && (JvmInstanceOf(LOCAL(pvalue,jobject),&java_lang_Number_Class))){
			JVMLINE(142)
			mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),virtual_mjava_lang_Number_doubleValue___D(JvmCheckCast(LOCAL(pvalue,jobject),&java_lang_Number_Class)));
		}
	}
	else{
		JVMLINE(163)
		if((((((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Byte_TYPE) || (((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Short_TYPE)) || (((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Integer_TYPE)) || (((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Long_TYPE)){
			JVMLINE(145)
			if((LOCAL(pvalue,jobject) != jnull) && (JvmInstanceOf(LOCAL(pvalue,jobject),&java_lang_Number_Class))){
				JVMLINE(145)
				mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),virtual_mjava_lang_Number_longValue___J(JvmCheckCast(LOCAL(pvalue,jobject),&java_lang_Number_Class)));
			}
		}
		else{
			JVMLINE(163)
			if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Boolean_TYPE){
				JVMLINE(148)
				if((LOCAL(pvalue,jobject) != jnull) && (JvmInstanceOf(LOCAL(pvalue,jobject),&java_lang_Boolean_Class))){
					JVMLINE(148)
					mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),mjava_lang_Boolean_booleanValue___Z(JvmCheckCast(LOCAL(pvalue,jobject),&java_lang_Boolean_Class)));
				}
			}
			else{
				JVMLINE(163)
				if(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type == fjava_lang_Character_TYPE){
					JVMLINE(154)
					if(LOCAL(pvalue,jobject) != jnull){
						JVMLINE(154)
						if(JvmInstanceOf(LOCAL(pvalue,jobject),&java_lang_Character_Class)){
							JVMLINE(152)
							mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jlong)(mjava_lang_Character_charValue___C(JvmCheckCast(LOCAL(pvalue,jobject),&java_lang_Character_Class)))));
						}
						else{
							JVMLINE(154)
							if(JvmInstanceOf(LOCAL(pvalue,jobject),&java_lang_Number_Class)){
								JVMLINE(154)
								mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),virtual_mjava_lang_Number_longValue___J(JvmCheckCast(LOCAL(pvalue,jobject),&java_lang_Number_Class)));
							}
						}
					}
				}
				else{
					JVMLINE(159)
					if((LOCAL(pvalue,jobject) != jnull) && (!(mjava_lang_Class_isAssignableFrom__Ljava_lang_Class__Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type,mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pvalue,jobject)))))){
						JVMLINE(159)
						JvmThrow(mjava_lang_ClassCastException__init___Ljava_lang_String__V(JvmAllocObject(&java_lang_ClassCastException_Class),virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal6),mjava_lang_Class_getName___Ljava_lang_String_(mjava_lang_Object_getClass___Ljava_lang_Class_(LOCAL(pvalue,jobject)))),$literal7),mjava_lang_Class_getName___Ljava_lang_String_(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_type)))));
					}
					JVMLINE(162)
					LOCAL(lptr,jobject)=mjava_lang_reflect_Modifier_isStatic__I_Z(((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_modifiers) ? ((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address : (void*)((char*)LOCAL(pbase,jobject) + (jint)((java_lang_reflect_Field*)(LOCAL(pthis,jobject)))->fjava_lang_reflect_Field_address);
					JVMLINE(163)
					((jobject*)LOCAL(lptr,jobject))[0] = (jobject)LOCAL(pvalue,jobject);
				}
			}
		}
	}
	thread->framePtr = entryFramePtr;
}

jbyte mjava_lang_reflect_Field_getByte__Ljava_lang_Object__B(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,12);
	JVMLINE(168)
	{ jbyte $$ret = ((jbyte)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setByte__Ljava_lang_Object_B_V(jobject pthis, jobject pbase, jbyte pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jbyte,2);

	JVMMETHOD(java_lang_reflect_Field_Class,13);
	JVMLINE(172)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jlong)(LOCAL(pvalue,jbyte))));
	thread->framePtr = entryFramePtr;
}

jchar mjava_lang_reflect_Field_getChar__Ljava_lang_Object__C(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,14);
	JVMLINE(176)
	{ jchar $$ret = ((jchar)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setChar__Ljava_lang_Object_C_V(jobject pthis, jobject pbase, jchar pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jchar,2);

	JVMMETHOD(java_lang_reflect_Field_Class,15);
	JVMLINE(179)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jlong)(LOCAL(pvalue,jchar))));
	thread->framePtr = entryFramePtr;
}

jbool mjava_lang_reflect_Field_getBoolean__Ljava_lang_Object__Z(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,16);
	JVMLINE(183)
	{ jbool $$ret = mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)) == 1; thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setBoolean__Ljava_lang_Object_Z_V(jobject pthis, jobject pbase, jbool pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jbool,2);

	JVMMETHOD(java_lang_reflect_Field_Class,17);
	JVMLINE(186)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),LOCAL(pvalue,jbool));
	thread->framePtr = entryFramePtr;
}

jshort mjava_lang_reflect_Field_getShort__Ljava_lang_Object__S(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,18);
	JVMLINE(190)
	{ jshort $$ret = ((jshort)(((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)))))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setShort__Ljava_lang_Object_S_V(jobject pthis, jobject pbase, jshort pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jshort,2);

	JVMMETHOD(java_lang_reflect_Field_Class,19);
	JVMLINE(193)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jlong)(LOCAL(pvalue,jshort))));
	thread->framePtr = entryFramePtr;
}

jint mjava_lang_reflect_Field_getInt__Ljava_lang_Object__I(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,20);
	JVMLINE(197)
	{ jint $$ret = ((jint)(mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setInt__Ljava_lang_Object_I_V(jobject pthis, jobject pbase, jint pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jint,2);

	JVMMETHOD(java_lang_reflect_Field_Class,21);
	JVMLINE(200)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jlong)(LOCAL(pvalue,jint))));
	thread->framePtr = entryFramePtr;
}

jlong mjava_lang_reflect_Field_getLong__Ljava_lang_Object__J(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,22);
	JVMLINE(204)
	{ jlong $$ret = mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J(LOCAL(pthis,jobject),LOCAL(pbase,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setLong__Ljava_lang_Object_J_V(jobject pthis, jobject pbase, jlong pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jlong,2);

	JVMMETHOD(java_lang_reflect_Field_Class,23);
	JVMLINE(207)
	mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),LOCAL(pvalue,jlong));
	thread->framePtr = entryFramePtr;
}

jfloat mjava_lang_reflect_Field_getFloat__Ljava_lang_Object__F(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,24);
	JVMLINE(211)
	{ jfloat $$ret = ((jfloat)(mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(LOCAL(pthis,jobject),LOCAL(pbase,jobject)))); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setFloat__Ljava_lang_Object_F_V(jobject pthis, jobject pbase, jfloat pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jfloat,2);

	JVMMETHOD(java_lang_reflect_Field_Class,25);
	JVMLINE(214)
	mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),((jdouble)(LOCAL(pvalue,jfloat))));
	thread->framePtr = entryFramePtr;
}

jdouble mjava_lang_reflect_Field_getDouble__Ljava_lang_Object__D(jobject pthis, jobject pbase) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);

	JVMMETHOD(java_lang_reflect_Field_Class,26);
	JVMLINE(218)
	{ jdouble $$ret = mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D(LOCAL(pthis,jobject),LOCAL(pbase,jobject)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

void mjava_lang_reflect_Field_setDouble__Ljava_lang_Object_D_V(jobject pthis, jobject pbase, jdouble pvalue) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pbase,jobject,1);
	DEFARG(pvalue,jdouble,2);

	JVMMETHOD(java_lang_reflect_Field_Class,27);
	JVMLINE(221)
	mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V(LOCAL(pthis,jobject),LOCAL(pbase,jobject),LOCAL(pvalue,jdouble));
	thread->framePtr = entryFramePtr;
}

JvmClass java_lang_reflect_Field_Class;
JvmClass ArrOf_java_lang_reflect_Field_Class;
JvmClass ArrOf_ArrOf_java_lang_reflect_Field_Class;

jbool java_lang_reflect_Field_isChildOf(JvmClass* klass) {
	return klass == &java_lang_reflect_Field_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_ODV(jobject,jobject,jobject);
extern jobject invoke_OO(jobject,jobject,jobject);
extern jobject invoke_OBV(jobject,jobject,jobject);
extern jobject invoke_OCV(jobject,jobject,jobject);
extern jobject invoke_OS(jobject,jobject,jobject);
extern jobject invoke_I(jobject,jobject,jobject);
extern jobject invoke_OZV(jobject,jobject,jobject);
extern jobject invoke_OZ(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
extern jobject invoke_OB(jobject,jobject,jobject);
extern jobject invoke_OSV(jobject,jobject,jobject);
extern jobject invoke_OC(jobject,jobject,jobject);
extern jobject invoke_OD(jobject,jobject,jobject);
extern jobject invoke_OOV(jobject,jobject,jobject);
extern jobject invoke_OF(jobject,jobject,jobject);
extern jobject invoke_OJV(jobject,jobject,jobject);
extern jobject invoke_OI(jobject,jobject,jobject);
extern jobject invoke_OJ(jobject,jobject,jobject);
extern jobject invoke_ZV(jobject,jobject,jobject);
extern jobject invoke_OIV(jobject,jobject,jobject);
extern jobject invoke_OFV(jobject,jobject,jobject);
void JvmSetup_java_lang_reflect_Field() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_java_lang_Object();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &java_lang_reflect_Field_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(java_lang_reflect_Field);
	cls->name = JvmMakeString(L"java.lang.reflect.Field",23);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &java_lang_reflect_Field_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Field.java",10);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 28, &(JvmMethod*[]){
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"<init>", 6), &java_lang_reflect_Field_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Field__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 29, 29, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=29, .endLine=29, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getName", 7), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Field_getName___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 37, 37, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=37, .endLine=37, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getModifiers", 12), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Field_getModifiers___I, &invoke_I 
#ifdef JVM_DEBUG
 , 41, 41, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=41, .endLine=41, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getType", 7), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Field_getType___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 45, 45, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=45, .endLine=45, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getDeclaringClass", 17), &java_lang_Class_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mjava_lang_reflect_Field_getDeclaringClass___Ljava_lang_Class_, &invoke_O 
#ifdef JVM_DEBUG
 , 49, 49, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=49, .endLine=49, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setAccessible", 13), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&Z_Class}), &mjava_lang_reflect_Field_setAccessible__Z_V, &invoke_ZV 
#ifdef JVM_DEBUG
 , -1, 0, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"value",5), .startLine=0, .endLine=0, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=0, .endLine=0, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getSafeLong", 11), &J_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getSafeLong__Ljava_lang_Object__J, &invoke_OJ 
#ifdef JVM_DEBUG
 , 57, 71, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=57, .endLine=71, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=57, .endLine=71, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=57, .endLine=71, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setSafeLong", 11), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&J_Class}), &mjava_lang_reflect_Field_setSafeLong__Ljava_lang_Object_J_V, &invoke_OJV 
#ifdef JVM_DEBUG
 , 77, 89, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=77, .endLine=89, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=79, .endLine=89, .type=&J_Class},{.name=JvmMakeString(L"this",4), .startLine=77, .endLine=89, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=77, .endLine=89, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getSafeDouble", 13), &D_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getSafeDouble__Ljava_lang_Object__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 95, 101, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=95, .endLine=101, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=95, .endLine=101, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=95, .endLine=101, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setSafeDouble", 13), &V_Class, 2, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&D_Class}), &mjava_lang_reflect_Field_setSafeDouble__Ljava_lang_Object_D_V, &invoke_ODV 
#ifdef JVM_DEBUG
 , 107, 111, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=107, .endLine=111, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=109, .endLine=111, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=107, .endLine=111, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=107, .endLine=111, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"get", 3), &java_lang_Object_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_get__Ljava_lang_Object__Ljava_lang_Object_, &invoke_OO 
#ifdef JVM_DEBUG
 , 116, 136, 1, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=116, .endLine=136, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=116, .endLine=136, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=134, .endLine=136, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"set", 3), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&java_lang_Object_Class}), &mjava_lang_reflect_Field_set__Ljava_lang_Object_Ljava_lang_Object__V, &invoke_OOV 
#ifdef JVM_DEBUG
 , 142, 163, 2, 2, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=142, .endLine=163, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=142, .endLine=163, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=142, .endLine=163, .type=&java_lang_reflect_Field_Class},{.name=JvmMakeString(L"ptr",3), .startLine=162, .endLine=163, .type=&cava_c_VoidPtr_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getByte", 7), &B_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getByte__Ljava_lang_Object__B, &invoke_OB 
#ifdef JVM_DEBUG
 , 168, 168, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=168, .endLine=168, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=168, .endLine=168, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setByte", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&B_Class}), &mjava_lang_reflect_Field_setByte__Ljava_lang_Object_B_V, &invoke_OBV 
#ifdef JVM_DEBUG
 , 172, 172, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=172, .endLine=172, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=172, .endLine=172, .type=&B_Class},{.name=JvmMakeString(L"this",4), .startLine=172, .endLine=172, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getChar", 7), &C_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getChar__Ljava_lang_Object__C, &invoke_OC 
#ifdef JVM_DEBUG
 , 176, 176, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=176, .endLine=176, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=176, .endLine=176, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setChar", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&C_Class}), &mjava_lang_reflect_Field_setChar__Ljava_lang_Object_C_V, &invoke_OCV 
#ifdef JVM_DEBUG
 , 179, 179, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=179, .endLine=179, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=179, .endLine=179, .type=&C_Class},{.name=JvmMakeString(L"this",4), .startLine=179, .endLine=179, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getBoolean", 10), &Z_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getBoolean__Ljava_lang_Object__Z, &invoke_OZ 
#ifdef JVM_DEBUG
 , 183, 183, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=183, .endLine=183, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=183, .endLine=183, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setBoolean", 10), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&Z_Class}), &mjava_lang_reflect_Field_setBoolean__Ljava_lang_Object_Z_V, &invoke_OZV 
#ifdef JVM_DEBUG
 , 186, 186, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=186, .endLine=186, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=186, .endLine=186, .type=&Z_Class},{.name=JvmMakeString(L"this",4), .startLine=186, .endLine=186, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getShort", 8), &S_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getShort__Ljava_lang_Object__S, &invoke_OS 
#ifdef JVM_DEBUG
 , 190, 190, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=190, .endLine=190, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=190, .endLine=190, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setShort", 8), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&S_Class}), &mjava_lang_reflect_Field_setShort__Ljava_lang_Object_S_V, &invoke_OSV 
#ifdef JVM_DEBUG
 , 193, 193, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=193, .endLine=193, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=193, .endLine=193, .type=&S_Class},{.name=JvmMakeString(L"this",4), .startLine=193, .endLine=193, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getInt", 6), &I_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getInt__Ljava_lang_Object__I, &invoke_OI 
#ifdef JVM_DEBUG
 , 197, 197, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=197, .endLine=197, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=197, .endLine=197, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setInt", 6), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&I_Class}), &mjava_lang_reflect_Field_setInt__Ljava_lang_Object_I_V, &invoke_OIV 
#ifdef JVM_DEBUG
 , 200, 200, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=200, .endLine=200, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=200, .endLine=200, .type=&I_Class},{.name=JvmMakeString(L"this",4), .startLine=200, .endLine=200, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getLong", 7), &J_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getLong__Ljava_lang_Object__J, &invoke_OJ 
#ifdef JVM_DEBUG
 , 204, 204, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=204, .endLine=204, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=204, .endLine=204, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setLong", 7), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&J_Class}), &mjava_lang_reflect_Field_setLong__Ljava_lang_Object_J_V, &invoke_OJV 
#ifdef JVM_DEBUG
 , 207, 207, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=207, .endLine=207, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=207, .endLine=207, .type=&J_Class},{.name=JvmMakeString(L"this",4), .startLine=207, .endLine=207, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getFloat", 8), &F_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getFloat__Ljava_lang_Object__F, &invoke_OF 
#ifdef JVM_DEBUG
 , 211, 211, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=211, .endLine=211, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=211, .endLine=211, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setFloat", 8), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&F_Class}), &mjava_lang_reflect_Field_setFloat__Ljava_lang_Object_F_V, &invoke_OFV 
#ifdef JVM_DEBUG
 , 214, 214, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=214, .endLine=214, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=214, .endLine=214, .type=&F_Class},{.name=JvmMakeString(L"this",4), .startLine=214, .endLine=214, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"getDouble", 9), &D_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 1, &(JvmClass*[]){&java_lang_Object_Class}), &mjava_lang_reflect_Field_getDouble__Ljava_lang_Object__D, &invoke_OD 
#ifdef JVM_DEBUG
 , 218, 218, 1, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=218, .endLine=218, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"this",4), .startLine=218, .endLine=218, .type=&java_lang_reflect_Field_Class}}
#endif
 ),
	JvmMakeMethod(&java_lang_reflect_Field_Class, JvmMakeString(L"setDouble", 9), &V_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&java_lang_Object_Class,&D_Class}), &mjava_lang_reflect_Field_setDouble__Ljava_lang_Object_D_V, &invoke_ODV 
#ifdef JVM_DEBUG
 , 221, 221, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"base",4), .startLine=221, .endLine=221, .type=&java_lang_Object_Class},{.name=JvmMakeString(L"value",5), .startLine=221, .endLine=221, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=221, .endLine=221, .type=&java_lang_reflect_Field_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 4, &(JvmField*[]){
	JvmMakeField(&java_lang_reflect_Field_Class, JvmMakeString(L"declaringClass", 14), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_reflect_Field,fjava_lang_reflect_Field_declaringClass))
	,JvmMakeField(&java_lang_reflect_Field_Class, JvmMakeString(L"name", 4), &java_lang_String_Class, 1, (void*)offsetof(java_lang_reflect_Field,fjava_lang_reflect_Field_name))
	,JvmMakeField(&java_lang_reflect_Field_Class, JvmMakeString(L"type", 4), &java_lang_Class_Class, 1, (void*)offsetof(java_lang_reflect_Field,fjava_lang_reflect_Field_type))
	,JvmMakeField(&java_lang_reflect_Field_Class, JvmMakeString(L"modifiers", 9), &I_Class, 1, (void*)offsetof(java_lang_reflect_Field,fjava_lang_reflect_Field_modifiers))
	});

	cls = &ArrOf_java_lang_reflect_Field_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[java.lang.reflect.Field",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &java_lang_reflect_Field_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_java_lang_reflect_Field_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[java.lang.reflect.Field",24);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_java_lang_reflect_Field_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
