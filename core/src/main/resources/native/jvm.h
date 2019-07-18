#ifndef __JVM_H__
#define __JVM_H__

#define JVM_DEBUG

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <math.h>
#include <string.h>
#include <signal.h>
#include <setjmp.h>
#include <pthread.h>
#include "gc.h"

#ifdef __APPLE__
#   include <mach/mach_time.h>
#endif

typedef wchar_t jchar;
typedef char jbyte;
typedef char jbool;
typedef short jshort;
typedef int jint;
typedef float jfloat;
typedef double jdouble;
typedef long long jlong;
typedef void* jobject;

typedef unsigned short u_jchar;
typedef unsigned char u_jbyte;
typedef unsigned char u_jbool;
typedef unsigned short u_jshort;
typedef unsigned int u_jint;
typedef unsigned long long u_jlong;


#define jtrue 1
#define jfalse 0

#define jnull NULL

#define Infinity    INFINITY
#define NaN         NAN
#define NOGC	-1


#define JvmObjectHeader \
struct JvmClass* klass 

struct JvmString;

typedef struct JvmClass {
    //java/lang/Class
    JvmObjectHeader;
    jint size;
	struct JvmString* name;
	struct JvmClass* superClass;
	struct JvmClass* componentType;
	jint modifiers;
	struct JvmArray* fields;
	struct JvmArray* interfaces;
	struct JvmArray* methods;
    
    //internal
    void** vtable;
    void** itable;
	void (*finalizeFunction)(jobject);
    jbool (*isChildOf)(struct JvmClass* klass);
    
#ifdef JVM_DEBUG
    struct JvmString* sourceFile;
#endif
} JvmClass;

typedef struct JvmObject {
    JvmObjectHeader;
} JvmObject;

typedef struct JvmArray {
    JvmObjectHeader;
	int len;
	//void* data;
} JvmArray;

typedef struct JvmString {
	JvmObjectHeader;
	struct JvmArray* value;
	jint offset;
	jint count;
    jint hashCode;
} JvmString;

#ifdef JVM_DEBUG
typedef struct JvmLocalVariableInfo {
    JvmString* name;
    jint startLine;
    jint endLine;
    JvmClass* type;
} JvmLocalVariableInfo;
#endif

typedef struct JvmMethod {
    JvmObjectHeader;
    JvmClass* declaringClass;
    JvmString* name;
    JvmClass* type;
    jint modifiers;
    JvmArray* parameters;
    void* address;
   jobject* (*invoke)(jobject,jobject,jobject);   //checks and translates parameters on runtime
#ifdef JVM_DEBUG
    jint minLine;
    jint maxLine;
    jint argCount;
    jint localCount;
    JvmLocalVariableInfo* locals;
#endif
} JvmMethod;

typedef struct JvmField {
    JvmObjectHeader;
    JvmClass* declaringClass;
    JvmString* name;
    JvmClass* type;
    jint modifiers;
    void* address;
} JvmField;

typedef struct JvmThrowable {
    JvmObjectHeader;
    JvmString* detailMessage;
    JvmObject* cause;
    JvmArray* stackTrace;
} JvmThrowable;

typedef struct JvmStackTraceElement {
    JvmObjectHeader;
    JvmString* fileName;
    jint lineNumber;
    JvmString* declaringClass;
    JvmString* methodName;
} JvmStackTraceElement;

#define JvmArrayLen(a) ((JvmArray*)a)->len
#define JvmArrayData(a) ((void*)(((JvmArray*)(a))+1))

#define JVM_MAX_STACK               512
#define JVM_MAX_EXCEPTION_HANDLER   256

typedef struct JvmExceptionPoint {
    jint framePtr;
    jmp_buf jmp;
} JvmExceptionPoint;

#ifdef JVM_DEBUG
union JvmLocalVariable {
    jbyte vjbyte;
    jbool vjbool;
    jchar vjchar;
    jshort vjshort;
    jint vjint;
    jfloat vjfloat;
    jlong vjlong;
    jdouble vjdouble;
    jobject vjobject;
} ;
#endif

typedef struct JvmFrame {
    JvmMethod* method;
    jint line;
#ifdef JVM_DEBUG
    union JvmLocalVariable locals[128];
#endif
} JvmFrame;

typedef struct JvmThread {
    JvmObjectHeader;
    
    //same with java/lang/Thread
    void* target;
    jbool alive;
    JvmString* name;
    jint priority;
    pthread_t handle;
    
    jobject exception;
    
    jint exceptionCount;
    JvmExceptionPoint exceptions[JVM_MAX_EXCEPTION_HANDLER];
    
    jint framePtr;
    JvmFrame frames[JVM_MAX_STACK];
    
#ifdef JVM_DEBUG
    jint suspendCount;
    jint targetFramePtr;
    jbool skipBreakpointCheck;
#endif
} JvmThread;

extern jobject JvmArrayGet_O(JvmArray* array, int index);
extern jobject JvmArraySet_O(JvmArray* array, int index, jobject value);

extern jbyte JvmArrayGet_B(JvmArray* array, int index);
extern jbyte JvmArraySet_B(JvmArray* array, int index, jbyte value);

extern jchar JvmArrayGet_C(JvmArray* array, int index);
extern jchar JvmArraySet_C(JvmArray* array, int index, jchar value);

extern jbool JvmArrayGet_Z(JvmArray* array, int index);
extern jbool JvmArraySet_Z(JvmArray* array, int index, jbool value);

extern jshort JvmArrayGet_S(JvmArray* array, int index);
extern jshort JvmArraySet_S(JvmArray* array, int index, jshort value);

extern jint JvmArrayGet_I(JvmArray* array, int index);
extern jint JvmArraySet_I(JvmArray* array, int index, jint value);

extern jfloat JvmArrayGet_F(JvmArray* array, int index);
extern jfloat JvmArraySet_F(JvmArray* array, int index, jfloat value);

extern jlong JvmArrayGet_J(JvmArray* array, int index);
extern jlong JvmArraySet_J(JvmArray* array, int index, jlong value);

extern jdouble JvmArrayGet_D(JvmArray* array, int index);
extern jdouble JvmArraySet_D(JvmArray* array, int index, jdouble value);

//Alloc
extern JvmObject* JvmAllocObject(JvmClass* klass);
extern JvmString* JvmAllocString(jchar* chars, jint length);
//creates non Gc'd string
extern JvmString* JvmMakeString(jchar* chars, jint length);
//created non Gc'd object array
extern JvmArray* JvmMakeObjectArray(JvmClass* klass, jint length, void* data);
extern JvmMethod* JvmMakeMethod(JvmClass* klass, JvmString* name, JvmClass* type, jint modifiers, JvmArray* parameters, void* methodAddress, void* dynamicWrapper
#ifdef JVM_DEBUG
    ,jint minLine, jint maxLine, jint argCount, jint localCount, JvmLocalVariableInfo* locals
#endif
);
extern JvmField* JvmMakeField(JvmClass* klass, JvmString* name, JvmClass* type, jint modifiers, void* fieldAddress);

extern JvmArray* JvmAllocPrimArray1(JvmClass* klass, jint length);
extern JvmArray* JvmAllocObjectArray1(JvmClass* klass, jint length);
extern JvmArray* JvmAllocPrimArray2(JvmClass* klass, jint length, jint length2);
extern JvmArray* JvmAllocObjectArray2(JvmClass* klass, jint length, jint length2);

extern JvmArray* JvmInitPrimArray1(JvmClass* klass, jint length, void* data);
extern JvmArray* JvmInitObjectArray1(JvmClass* klass, jint length, void* data);

extern void gcRegisterCurrentThread();
extern void gcUnregisterCurrentThread();

extern void JvmThrow(jobject exception);
extern void JvmStackOverflow();

extern jbool JvmIsAssignableFrom(JvmClass* src, JvmClass* dst);
extern jbool JvmInstanceOf(jobject object, jobject klass);
extern jobject JvmCheckCast(jobject object, jobject klass);

extern JvmThread* JvmCurrentThread();
extern void JvmRegisterCurrentThread(JvmThread* thread);

extern void JvmMonitorEnter(JvmObject* object);
extern void JvmMonitorExit(JvmObject* object);

// Boxing methods
extern jbyte JvmUnbox_B(jobject object);
extern jbool JvmUnbox_Z(jobject object);
extern jchar JvmUnbox_C(jobject object);
extern jshort JvmUnbox_S(jobject object);
extern jint JvmUnbox_I(jobject object);
extern jfloat JvmUnbox_F(jobject object);
extern jlong JvmUnbox_J(jobject object);
extern jdouble JvmUnbox_D(jobject object);
extern jobject JvmBox_B(jbyte value);
extern jobject JvmBox_Z(jbool value);
extern jobject JvmBox_C(jchar value);
extern jobject JvmBox_S(jshort value);
extern jobject JvmBox_I(jint value);
extern jobject JvmBox_F(jfloat value);
extern jobject JvmBox_J(jlong value);
extern jobject JvmBox_D(jdouble value);

extern JvmClass Z_Class;
extern JvmClass B_Class;
extern JvmClass C_Class;
extern JvmClass I_Class;
extern JvmClass S_Class;
extern JvmClass J_Class;
extern JvmClass F_Class;
extern JvmClass D_Class;
extern JvmClass V_Class;

extern JvmClass ArrOf_Z_Class;
extern JvmClass ArrOf_B_Class;
extern JvmClass ArrOf_C_Class;
extern JvmClass ArrOf_I_Class;
extern JvmClass ArrOf_S_Class;
extern JvmClass ArrOf_J_Class;
extern JvmClass ArrOf_F_Class;
extern JvmClass ArrOf_D_Class;

extern JvmClass ArrOf_ArrOf_Z_Class;
extern JvmClass ArrOf_ArrOf_B_Class;
extern JvmClass ArrOf_ArrOf_C_Class;
extern JvmClass ArrOf_ArrOf_I_Class;
extern JvmClass ArrOf_ArrOf_S_Class;
extern JvmClass ArrOf_ArrOf_J_Class;
extern JvmClass ArrOf_ArrOf_F_Class;
extern JvmClass ArrOf_ArrOf_D_Class;

extern JvmClass ArrOf_ArrOf_ArrOf_Z_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_B_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_C_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_I_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_S_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_J_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_F_Class;
extern JvmClass ArrOf_ArrOf_ArrOf_D_Class;

extern JvmClass java_lang_Object_Class;
extern JvmClass java_lang_Class_Class;
extern JvmClass java_lang_String_Class;
extern JvmClass java_lang_reflect_Method_Class;
extern JvmClass java_lang_Thread_Class;
extern JvmClass java_lang_StackTraceElement_Class;
extern JvmClass java_lang_reflect_Field_Class;
extern JvmClass ArrOf_java_lang_reflect_Field_Class;
extern JvmClass ArrOf_java_lang_StackTraceElement_Class;

//All static fields
extern jobject** JVMGLOBALS;
extern void** JVMCLASSPATH;

#define JVMMETHOD(cls, ndx) frame->method = ((JvmMethod**)JvmArrayData(cls.methods))[ndx];

#ifdef JVM_DEBUG
    extern void JvmInitDebug();
    extern jbool JvmAddBreakpoint(jlong method, jint line, jint requestId);
    extern void JvmRemoveBreakpoint(jlong method, jint line);
    extern void JvmCheckBreakpoint(JvmThread* thread, JvmMethod* method, jint line);
    extern void JvmRemoveAllBreakpoints();
    #define JVMLINE(lineNo) frame->line = lineNo; JvmCheckBreakpoint(thread, frame->method, frame->line);
    #define DEFLOCAL(n,t,i) union JvmLocalVariable* dbg_##n = &frame->locals[i]; LOCAL(n,jlong) = 0;
    #define DEFARG(n,t,i) union JvmLocalVariable* dbg_##n = &frame->locals[i]; LOCAL(n,t) = n;
    #define LOCAL(n,t) dbg_##n->v##t

#else
    #define JvmInitDebug()
    #define JvmAddBreakpoint(m,l)
    #define JvmRemoveBreakpoint(m,l)
    #define JvmCheckBreakpoint(t,m,l)
    #define JvmRemoveAllBreakpoints
    #define JVMLINE(lineNo) frame->line = lineNo;
    #define DEFLOCAL(n,t,i) t n;
    #define DEFARG(n,t,i)
    #define LOCAL(n,t) n
#endif

#endif
