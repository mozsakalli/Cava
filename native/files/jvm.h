#ifndef __JVM_H__
#define __JVM_H__

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
#include <mach/mach_time.h>
#endif

#ifdef __ANDROID__
#include <jni.h>
#endif

typedef wchar_t JCHAR;
typedef char JBYTE;
typedef char JBOOL;
typedef short JSHORT;
typedef int JINT;
typedef float JFLOAT;
typedef double JDOUBLE;
typedef long long JLONG;
typedef void* JOBJECT;

typedef unsigned short u_JCHAR;
typedef unsigned char u_JBYTE;
typedef unsigned char u_JBOOL;
typedef unsigned short u_JSHORT;
typedef unsigned int u_JINT;
typedef unsigned long long u_JLONG;

#define jtrue 1
#define jfalse 0

#define jnull NULL

#define Infinity    INFINITY
#define NaN         NAN

#define JVMINLINE __attribute__((always_inline)) inline

#define JvmObjectHeader \
struct JvmClass* klass 

struct JvmString;

typedef struct JvmClass {
    //java/lang/Class
    JvmObjectHeader;
    JINT size;
    struct JvmString* name;
    struct JvmClass* superClass;
    struct JvmClass* componentType;
    JINT modifiers;
    struct JvmArray* fields;
    struct JvmArray* interfaces;
    struct JvmArray* methods;
    
    //internal
    void** vtable;
    void** itable;
    void (*finalizeFunction)(JOBJECT);
    JBOOL (*isChildOf)(struct JvmClass* klass);
    void* objcClass;
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
    JINT offset;
    JINT count;
    JINT hashCode;
} JvmString;

#ifdef JVM_DEBUG
typedef struct JvmLocalVariableInfo {
    JvmString* name;
    JINT startLine;
    JINT endLine;
    JvmClass* type;
} JvmLocalVariableInfo;
#endif

typedef struct JvmMethod {
    JvmObjectHeader;
    JvmClass* declaringClass;
    JvmString* name;
    JvmClass* type;
    JINT modifiers;
    JvmArray* parameters;
    void* address;
   JOBJECT* (*invoke)(JOBJECT,JOBJECT,JOBJECT);   //checks and translates parameters on runtime
#ifdef JVM_DEBUG
    JINT minLine;
    JINT maxLine;
    JINT argCount;
    JINT localCount;
    JvmLocalVariableInfo* locals;
#endif
} JvmMethod;

typedef struct JvmField {
    JvmObjectHeader;
    JvmClass* declaringClass;
    JvmString* name;
    JvmClass* type;
    JINT modifiers;
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
    JINT lineNumber;
    JvmString* declaringClass;
    JvmString* methodName;
} JvmStackTraceElement;

#define JvmArrayLen(a) ((JvmArray*)a)->len
#define JvmArrayData(a) ((void*)(((JvmArray*)(a))+1))

#define JVM_MAX_STACK               512
#define JVM_MAX_EXCEPTION_HANDLER   256

typedef struct JvmExceptionPoint {
    JINT framePtr;
    jmp_buf jmp;
} JvmExceptionPoint;

#ifdef JVM_DEBUG
union JvmLocalVariable {
    JBYTE vJBYTE;
    JBOOL vJBOOL;
    JCHAR vJCHAR;
    JSHORT vJSHORT;
    JINT vJINT;
    JFLOAT vJFLOAT;
    JLONG vJLONG;
    JDOUBLE vJDOUBLE;
    JOBJECT vJOBJECT;
} ;
#endif

typedef struct JvmFrame {
    JvmMethod* method;
    JINT line;
#ifdef JVM_DEBUG
    union JvmLocalVariable locals[128];
#endif
} JvmFrame;

typedef struct JvmThread {
    JvmObjectHeader;
    
    //same with java/lang/Thread
    void* target;
    JBOOL alive;
    JvmString* name;
    JINT priority;
    pthread_t handle;
    
    JOBJECT exception;
    
    JINT exceptionCount;
    JvmExceptionPoint exceptions[JVM_MAX_EXCEPTION_HANDLER];
    
    JINT framePtr;
    JvmFrame frames[JVM_MAX_STACK];
    
#ifdef JVM_DEBUG
    JINT suspendCount;
    JINT targetFramePtr;
    JBOOL skipBreakpointCheck;
#endif
} JvmThread;

extern JVMINLINE JOBJECT JvmArrayGet_O(JvmArray* array, int index);
extern JVMINLINE JOBJECT JvmArraySet_O(JvmArray* array, int index, JOBJECT value);
extern JVMINLINE JBYTE JvmArrayGet_B(JvmArray* array, int index);
extern JVMINLINE JBYTE JvmArraySet_B(JvmArray* array, int index, JBYTE value);
extern JVMINLINE JCHAR JvmArrayGet_C(JvmArray* array, int index);
extern JVMINLINE JCHAR JvmArraySet_C(JvmArray* array, int index, JCHAR value);
extern JVMINLINE JBOOL JvmArrayGet_Z(JvmArray* array, int index);
extern JVMINLINE JBOOL JvmArraySet_Z(JvmArray* array, int index, JBOOL value);
extern JVMINLINE JSHORT JvmArrayGet_S(JvmArray* array, int index);
extern JVMINLINE JSHORT JvmArraySet_S(JvmArray* array, int index, JSHORT value);
extern JVMINLINE JINT JvmArrayGet_I(JvmArray* array, int index);
extern JVMINLINE JINT JvmArraySet_I(JvmArray* array, int index, JINT value);
extern JVMINLINE JFLOAT JvmArrayGet_F(JvmArray* array, int index);
extern JVMINLINE JFLOAT JvmArraySet_F(JvmArray* array, int index, JFLOAT value);
extern JVMINLINE JLONG JvmArrayGet_J(JvmArray* array, int index);
extern JVMINLINE JLONG JvmArraySet_J(JvmArray* array, int index, JLONG value);
extern JVMINLINE JDOUBLE JvmArrayGet_D(JvmArray* array, int index);
extern JVMINLINE JDOUBLE JvmArraySet_D(JvmArray* array, int index, JDOUBLE value);

extern JOBJECT JvmArrayGet_O_NBC(JvmArray* array, int index);
extern JOBJECT JvmArraySet_O_NBC(JvmArray* array, int index, JOBJECT value);
extern JBYTE JvmArrayGet_B_NBC(JvmArray* array, int index);
extern JBYTE JvmArraySet_B_NBC(JvmArray* array, int index, JBYTE value);
extern JCHAR JvmArrayGet_C_NBC(JvmArray* array, int index);
extern JCHAR JvmArraySet_C_NBC(JvmArray* array, int index, JCHAR value);
extern JBOOL JvmArrayGet_Z_NBC(JvmArray* array, int index);
extern JBOOL JvmArraySet_Z_NBC(JvmArray* array, int index, JBOOL value);
extern JSHORT JvmArrayGet_S_NBC(JvmArray* array, int index);
extern JSHORT JvmArraySet_S_NBC(JvmArray* array, int index, JSHORT value);
extern JINT JvmArrayGet_I_NBC(JvmArray* array, int index);
extern JINT JvmArraySet_I_NBC(JvmArray* array, int index, JINT value);
extern JFLOAT JvmArrayGet_F_NBC(JvmArray* array, int index);
extern JFLOAT JvmArraySet_F_NBC(JvmArray* array, int index, JFLOAT value);
extern JLONG JvmArrayGet_J_NBC(JvmArray* array, int index);
extern JLONG JvmArraySet_J_NBC(JvmArray* array, int index, JLONG value);
extern JDOUBLE JvmArrayGet_D_NBC(JvmArray* array, int index);
extern JDOUBLE JvmArraySet_D_NBC(JvmArray* array, int index, JDOUBLE value);

//Alloc
extern JvmObject* JvmAllocObject(JvmClass* klass);
extern JvmString* JvmAllocString(JCHAR* chars, JINT length);
//creates non Gc'd string
extern JvmString* JvmMakeString(JCHAR* chars, JINT length);
//created non Gc'd object array
extern JvmArray* JvmMakeObjectArray(JvmClass* klass, JINT length, void* data);
extern JvmMethod* JvmMakeMethod(JvmClass* klass, JvmString* name, JvmClass* type, JINT modifiers, JvmArray* parameters, void* methodAddress, void* dynamicWrapper
#ifdef JVM_DEBUG
    ,JINT minLine, JINT maxLine, JINT argCount, JINT localCount, JvmLocalVariableInfo* locals
#endif
);
extern JvmField* JvmMakeField(JvmClass* klass, JvmString* name, JvmClass* type, JINT modifiers, void* fieldAddress);

extern JvmArray* JvmAllocPrimArray1(JvmClass* klass, JINT length);
extern JvmArray* JvmAllocObjectArray1(JvmClass* klass, JINT length);
extern JvmArray* JvmAllocPrimArray2(JvmClass* klass, JINT length, JINT length2);
extern JvmArray* JvmAllocObjectArray2(JvmClass* klass, JINT length, JINT length2);

extern JvmArray* JvmInitPrimArray1(JvmClass* klass, JINT length, void* data);
extern JvmArray* JvmInitObjectArray1(JvmClass* klass, JINT length, void* data);

extern void gcRegisterCurrentThread();
extern void gcUnregisterCurrentThread();

extern void JvmThrow(JOBJECT exception);
extern void JvmStackOverflow();

extern JBOOL JvmIsAssignableFrom(JvmClass* src, JvmClass* dst);
extern JBOOL JvmInstanceOf(JOBJECT object, JOBJECT klass);
extern JOBJECT JvmCheckCast(JOBJECT object, JOBJECT klass);

extern JvmThread* JvmCurrentThread();
extern void JvmRegisterCurrentThread(JvmThread* thread);

extern void JvmMonitorEnter(JvmObject* object);
extern void JvmMonitorExit(JvmObject* object);

// Boxing methods
extern JBYTE JvmUnbox_B(JOBJECT object);
extern JBOOL JvmUnbox_Z(JOBJECT object);
extern JCHAR JvmUnbox_C(JOBJECT object);
extern JSHORT JvmUnbox_S(JOBJECT object);
extern JINT JvmUnbox_I(JOBJECT object);
extern JFLOAT JvmUnbox_F(JOBJECT object);
extern JLONG JvmUnbox_J(JOBJECT object);
extern JDOUBLE JvmUnbox_D(JOBJECT object);
extern JOBJECT JvmBox_B(JBYTE value);
extern JOBJECT JvmBox_Z(JBOOL value);
extern JOBJECT JvmBox_C(JCHAR value);
extern JOBJECT JvmBox_S(JSHORT value);
extern JOBJECT JvmBox_I(JINT value);
extern JOBJECT JvmBox_F(JFLOAT value);
extern JOBJECT JvmBox_J(JLONG value);
extern JOBJECT JvmBox_D(JDOUBLE value);

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
extern JOBJECT** JVMGLOBALS;
extern void** JVMCLASSPATH;

#define JVMMETHOD(cls, ndx) frame->method = ((JvmMethod**)JvmArrayData(cls.methods))[ndx];

#ifdef JVM_DEBUG
    extern void JvmInitDebug();
    extern JBOOL JvmAddBreakpoint(JLONG method, JINT line, JINT requestId);
    extern void JvmRemoveBreakpoint(JLONG method, JINT line);
    extern void JvmCheckBreakpoint(JvmThread* thread, JvmMethod* method, JINT line);
    extern void JvmRemoveAllBreakpoints();
    extern void JvmStartDebugger();
    #define JVMLINE(lineNo) frame->line = lineNo; JvmCheckBreakpoint(thread, frame->method, frame->line);
    #define DEFLOCAL(n,t,i) union JvmLocalVariable* dbg_##n = &frame->locals[i]; LOCAL(n,JLONG) = 0;
    #define DEFARG(n,t,i) union JvmLocalVariable* dbg_##n = &frame->locals[i]; LOCAL(n,t) = n;
    #define LOCAL(n,t) dbg_##n->v##t

#else
    #define JvmInitDebug()
    #define JvmAddBreakpoint(m,l)
    #define JvmRemoveBreakpoint(m,l)
    #define JvmCheckBreakpoint(t,m,l)
    #define JvmRemoveAllBreakpoints
    #define JvmStartDebugger()
    #define JVMLINE(lineNo) frame->line = lineNo;
    #define DEFLOCAL(n,t,i) t n;
    #define DEFARG(n,t,i)
    #define LOCAL(n,t) n
#endif

#endif
