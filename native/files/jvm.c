#define GC_THREADS

#include "jvm.h"
#include <stdarg.h>
#include <unistd.h>

extern JvmClass java_lang_NullPointerException_Class;
void JvmNullPointerException() {
    JvmThrow(JvmAllocObject(&java_lang_NullPointerException_Class));
}
extern JvmClass java_lang_ClassCastException_Class;
void JvmClassCastException() {
    JvmThrow(JvmAllocObject(&java_lang_ClassCastException_Class));
}
extern JvmClass java_lang_ArrayIndexOutOfBoundsException_Class;
void JvmArrayException(int index) {
    //todo: write index
    JvmThrow(JvmAllocObject(&java_lang_ArrayIndexOutOfBoundsException_Class));
}
extern JvmClass java_lang_StackOverflowError_Class;
void JvmStackOverflow() {
    JvmThread* thread = JvmCurrentThread();
    if(thread != jnull) {
        thread->framePtr -= 16;
        JvmThrow(JvmAllocObject(&java_lang_StackOverflowError_Class));
    }
}
///////////////////////////////////////////////
// Thread & Allocator
//////////////////////////////////////////////
JvmThread* JvmMainThread = jnull;
pthread_key_t JvmThreadLocalKey = 0;

void gcRegisterCurrentThread() {
    struct GC_stack_base stackBase;
    if (GC_thread_is_registered()) {
        // Always deregister the current thread to prevent a situation where the
        // thread is registered with the GC yet the GC's thread local alloc TLS
        // has been cleared (see #1025).
        GC_unregister_my_thread();
    }
    GC_get_stack_base(&stackBase);
    GC_register_my_thread(&stackBase);
}

void gcUnregisterCurrentThread() {
    if (GC_thread_is_registered()) {
        GC_unregister_my_thread();
    }
}

JvmThread* JvmCurrentThread() {
    return (JvmThread*)pthread_getspecific(JvmThreadLocalKey);
}

void JvmCreateMainThread() {
    JvmThread* thread = (JvmThread*)GC_malloc(sizeof(JvmThread));
    memset(thread, 0, sizeof(JvmThread));
    thread->klass = &java_lang_Thread_Class;
    thread->name = JvmMakeString(L"Cava Main Thread",16); 
    pthread_setspecific(JvmThreadLocalKey, thread);
    thread->handle = pthread_self();
    JvmMainThread = thread;
    gcRegisterCurrentThread();
}

void JvmRegisterCurrentThread(JvmThread* thread) {
    pthread_setspecific(JvmThreadLocalKey, thread);
}

JvmClass B_Class;
JvmClass C_Class;
JvmClass Z_Class;
JvmClass S_Class;
JvmClass I_Class;
JvmClass F_Class;
JvmClass J_Class;
JvmClass D_Class;
JvmClass V_Class;

JvmClass ArrOf_B_Class;
JvmClass ArrOf_C_Class;
JvmClass ArrOf_Z_Class;
JvmClass ArrOf_S_Class;
JvmClass ArrOf_I_Class;
JvmClass ArrOf_F_Class;
JvmClass ArrOf_J_Class;
JvmClass ArrOf_D_Class;

JvmClass ArrOf_ArrOf_Z_Class;
JvmClass ArrOf_ArrOf_B_Class;
JvmClass ArrOf_ArrOf_C_Class;
JvmClass ArrOf_ArrOf_I_Class;
JvmClass ArrOf_ArrOf_S_Class;
JvmClass ArrOf_ArrOf_J_Class;
JvmClass ArrOf_ArrOf_F_Class;
JvmClass ArrOf_ArrOf_D_Class;

JvmClass ArrOf_ArrOf_ArrOf_Z_Class;
JvmClass ArrOf_ArrOf_ArrOf_B_Class;
JvmClass ArrOf_ArrOf_ArrOf_C_Class;
JvmClass ArrOf_ArrOf_ArrOf_I_Class;
JvmClass ArrOf_ArrOf_ArrOf_S_Class;
JvmClass ArrOf_ArrOf_ArrOf_J_Class;
JvmClass ArrOf_ArrOf_ArrOf_F_Class;
JvmClass ArrOf_ArrOf_ArrOf_D_Class;

//////////////////////////////////////////////
// Alloc
/////////////////////////////////////////////
static void _finalizeObject(GC_PTR addr, GC_PTR client_data) {
    JvmObject* object = (JvmObject*)addr;
    if(object->klass->finalizeFunction)
        object->klass->finalizeFunction(object);
}
static void* gcAlloc(int size) {
    void* m = GC_MALLOC(size);
    if(!m) {
        GC_gcollect();
        m = GC_MALLOC(size);
    }
    return m;
}
static void* gcAllocAtomic(int size) {
    void* m = GC_MALLOC_ATOMIC(size);
    if(!m) {
        GC_gcollect();
        m = GC_MALLOC_ATOMIC(size);
    }
    return m;
}

void JvmAddRoot(void* ptr) {
    GC_add_roots(ptr, ptr + sizeof(void*));
}
JvmObject* JvmAllocObject(JvmClass* klass) {
    JvmObject* object = (JvmObject*)gcAlloc(klass->size);
    object->klass = klass;
    if(klass->finalizeFunction)
        GC_REGISTER_FINALIZER_NO_ORDER(object, _finalizeObject, NULL, NULL, NULL);
    return object;
}
JvmString* JvmAllocString(jchar* chars, jint length) {
    JvmString* string = gcAlloc(sizeof(JvmString));
    string->klass = &java_lang_String_Class;
    string->offset = 0;
    string->count = length;
    JvmArray* array = JvmAllocPrimArray1(&ArrOf_C_Class, length);
    memcpy(JvmArrayData(array), chars, length*sizeof(jchar));
    string->value = array;
    
    return string;
}
JvmString* JvmMakeString(jchar* chars, jint length) {
    JvmString* string = malloc(sizeof(JvmString));
    string->klass = &java_lang_String_Class;
    string->offset = 0;
    string->count = length;
    JvmArray* array = malloc(sizeof(JvmArray) + length * sizeof(jchar));
    array->klass = &ArrOf_C_Class;
    array->len = length;
    memcpy(JvmArrayData(array), chars, length*sizeof(jchar));
    string->value = array;
    return string;
}

JvmArray* JvmMakeObjectArray(JvmClass* klass, jint length, void* data) {
    JvmArray* array = (JvmArray*)malloc(sizeof(JvmArray) + sizeof(jobject) * length);
    array->klass = klass;
    array->len = length;
    if(length > 0)
        memcpy(JvmArrayData(array), data, length * sizeof(jobject));
    return array;
}

JvmMethod* JvmMakeMethod(JvmClass* klass, JvmString* name, JvmClass* type, jint modifiers, JvmArray* parameters, void* methodAddress, void* dynamicWrapper
#ifdef JVM_DEBUG
     ,jint minLine, jint maxLine, jint argCount, jint localCount, JvmLocalVariableInfo* locals
#endif
) {
    JvmMethod* m = malloc(sizeof(JvmMethod));
    m->klass = &java_lang_reflect_Method_Class;
    m->declaringClass = klass;
    m->name = name;
    m->type = type;
    m->modifiers = modifiers;
    m->parameters = parameters;
    m->address = methodAddress;
    m->invoke = dynamicWrapper;
#ifdef JVM_DEBUG
    m->minLine = minLine;
    m->maxLine = maxLine;
    m->argCount = argCount;
    m->localCount = localCount;
    m->locals = (JvmLocalVariableInfo*)malloc(sizeof(JvmLocalVariableInfo) * (argCount + localCount));
    memcpy(m->locals, locals, sizeof(JvmLocalVariableInfo) * (argCount + localCount));
#endif
    return m;
}

JvmField* JvmMakeField(JvmClass* klass, JvmString* name, JvmClass* type, jint modifiers, void* fieldAddress) {
    JvmField* field = malloc(sizeof(JvmField));
    field->klass = &java_lang_reflect_Field_Class;
    field->declaringClass = klass;
    field->name = name;
    field->modifiers = modifiers;
    field->type = type;
    field->address = fieldAddress;
    return field;
}

//1d arrays
JvmArray* JvmAllocPrimArray1(JvmClass* klass, jint length) {
    JvmArray* array = (JvmArray*)gcAllocAtomic(sizeof(JvmArray) + klass->componentType->size * length);
    array->klass = klass;
    array->len = length;
    return array;
}
JvmArray* JvmAllocObjectArray1(JvmClass* klass, jint length) {
    JvmArray* array = (JvmArray*)gcAlloc(sizeof(JvmArray) + (sizeof(jobject)) * length);
    array->klass = klass;
    array->len = length;
    return array;
}
//2d arrays
JvmArray* JvmAllocPrimArray2(JvmClass* klass, jint length, jint length2) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    void** data = JvmArrayData(array);
    for(int i=0; i<length; i++)
        data[i] = JvmAllocPrimArray1(klass->componentType, length2);
    return array;
}
JvmArray* JvmAllocObjectArray2(JvmClass* klass, jint length, jint length2) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    void** data = JvmArrayData(array);
    for(int i=0; i<length; i++)
        data[i] = JvmAllocObjectArray1(klass->componentType, length2);
    return array;
}

JvmArray* JvmInitPrimArray1(JvmClass* klass, jint length, void* data) {
    JvmArray* array = JvmAllocPrimArray1(klass, length);
    memcpy(JvmArrayData(array), data, length * sizeof(klass->componentType->size));
    return array;
}

JvmArray* JvmInitObjectArray1(JvmClass* klass, jint length, void* data) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    memcpy(JvmArrayData(array), data, length * sizeof(jobject));
    return array;
}

//////////////////////////////////////////////
// Array
//////////////////////////////////////////////
#define CHECKBOUNDS(array,index) if(index<0 || index>=JvmArrayLen(array)) JvmArrayException(index);
#define DEFINE_ARRAY_ACCESS(nm, type) \
type JvmArrayGet_##nm (JvmArray* array, int index) { \
    CHECKBOUNDS(array, index); \
    return ((type*)JvmArrayData(array))[index];\
} \
type JvmArraySet_##nm (JvmArray* array, int index, type value) { \
    CHECKBOUNDS(array, index); \
    return ((type*)JvmArrayData(array))[index] = value; \
}

DEFINE_ARRAY_ACCESS(B, jbyte)
DEFINE_ARRAY_ACCESS(C, jchar)
DEFINE_ARRAY_ACCESS(S, jshort)
DEFINE_ARRAY_ACCESS(Z, jbool)
DEFINE_ARRAY_ACCESS(I, jint)
DEFINE_ARRAY_ACCESS(F, jfloat)
DEFINE_ARRAY_ACCESS(J, jlong)
DEFINE_ARRAY_ACCESS(D, jdouble)
DEFINE_ARRAY_ACCESS(O, jobject)

jbool JvmIsAssignableFrom(JvmClass* src, JvmClass* dst) {
    if(src == jnull || dst == jnull) JvmNullPointerException();
    
    if(src->componentType) {
        if(!dst->componentType) return jfalse;
        return JvmIsAssignableFrom(src->componentType, dst->componentType);
    }
    
    return dst->isChildOf(src);
}

jbool JvmInstanceOf(jobject object, jobject klass) {
    if(object == jnull || klass == jnull) return jfalse;
    return JvmIsAssignableFrom((JvmClass*)klass, ((JvmObject*)object)->klass);
}

jobject JvmCheckCast(jobject object, jobject klass) {
    if(object == jnull || klass == jnull) return object;
    if(!JvmIsAssignableFrom((JvmClass*)klass, ((JvmObject*)object)->klass)) {
        JvmClassCastException();
    }
    return object;
}

pthread_mutex_t JvmMonitorListLock;
typedef struct JvmMonitorMutex {
    pthread_mutex_t mutex;
    void* key;
    jbool created;
} JvmMonitorMutex;
#define MAXMONITOR 256
JvmMonitorMutex JvmMonitorMutexList[MAXMONITOR];

void JvmMonitorEnter(JvmObject* object) {
    pthread_mutex_lock(&JvmMonitorListLock);
    int index = -1;
    for(int i=0; i<MAXMONITOR; i++)
        if(JvmMonitorMutexList[i].key == (void*)object) {
            index = i;
            break;
        }
    
    if(index == -1) {
        for(int i=0; i<MAXMONITOR; i++)
            if(JvmMonitorMutexList[i].key == jnull) {
                index = i;
                break;
            }
    }
    if(index < 0 || index >= MAXMONITOR) {
        pthread_mutex_unlock(&JvmMonitorListLock);
        return; //!!
    }
    
    JvmMonitorMutex* mon = &JvmMonitorMutexList[index];
    mon->key = (void*)object;
    if(!mon->created) {
        pthread_mutex_init(&mon->mutex, jnull);
        mon->created = jtrue;
    }
    pthread_mutex_unlock(&JvmMonitorListLock);
    
    pthread_mutex_lock(&mon->mutex);
}

void JvmMonitorExit(JvmObject* object) {
    //we already locked dont need to lock list while searching...
    JvmMonitorMutex* mon = jnull;
    for(int i=0; i<MAXMONITOR; i++)
        if(JvmMonitorMutexList[i].key == (void*)object) {
            mon = &JvmMonitorMutexList[i];
            break;
        }
    if(!mon) return; //this souldn't happen in general!!
    
    mon->key = jnull;
    pthread_mutex_unlock(&mon->mutex);
}


//////////////////////////////////////////////
// Exception Handling
//////////////////////////////////////////////
void JvmExit();
extern void mjava_lang_Throwable_printStackTrace___V(jobject pthis);
void JvmThrow(jobject exception) {
    JvmThread* thread = JvmCurrentThread();
    if(thread == jnull) {
        printf("Exception caught on non jvm thread!!!!!\n");
        return;
    }
    
    thread->exception = exception;
    
    //fill stack trace
    if(exception) {
        JvmArray* array = JvmAllocObjectArray1(&ArrOf_java_lang_StackTraceElement_Class, thread->framePtr);
        for(int i=0; i<thread->framePtr; i++) {
            JvmFrame* frame = &thread->frames[thread->framePtr - 1 - i];
            JvmStackTraceElement* element = (JvmStackTraceElement*)JvmAllocObject(&java_lang_StackTraceElement_Class);
            element->lineNumber = frame->line;
            if(frame->method) {
                element->declaringClass = frame->method->declaringClass->name;
                element->methodName = frame->method->name;
            }
            
            JvmArraySet_O(array,i, element);
        }
        ((JvmThrowable*)exception)->stackTrace = array;
        
        if(thread->exceptionCount > 0) {
            JvmExceptionPoint* p = &thread->exceptions[thread->exceptionCount-1];
            //restore line number
            thread->framePtr = p->framePtr;
            longjmp(p->jmp, 1);
        } else {
            //unhandled exception
            mjava_lang_Throwable_printStackTrace___V(exception);
            JvmExit();
        }
    } else {
        //unknown signal!!!!
    }
}



void JvmSignalHandler(const int code, siginfo_t *const si, void *const sc) {
    JvmNullPointerException();
}

#define SIG_CATCH_COUNT 7
static const int native_sig_catch[SIG_CATCH_COUNT + 1]
= { SIGABRT, SIGILL, SIGTRAP, SIGBUS, SIGFPE, SIGSEGV
#ifdef SIGSTKFLT
    , SIGSTKFLT
#endif
    , 0 };
struct sigaction old_signals[SIG_CATCH_COUNT];

void JvmSetupSignals() {
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = JvmSignalHandler;
    sa.sa_flags = SA_SIGINFO;
    
    for (int i = 0; native_sig_catch[i] != 0; i++) {
        const int sig = native_sig_catch[i];
        const struct sigaction * const action = &sa;
        sigaction(sig, action, &old_signals[i]);
    }
}

void JvmExit() {
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = JvmSignalHandler;
    sa.sa_flags = SA_SIGINFO;
    
    for (int i = 0; native_sig_catch[i] != 0; i++) {
        const int sig = native_sig_catch[i];
        sigaction(sig, &old_signals[i], &sa);
    }
    int a = 1/0;
}

//////////////////////////////////////////////
// Setup
/////////////////////////////////////////////
void JvmSetup() {
    pthread_mutex_init(&JvmMonitorListLock, jnull);
    memset(&JvmMonitorMutexList, 0, sizeof(JvmMonitorMutexList));
    
    //Initialize GC
    GC_set_no_dls(1);
    GC_set_java_finalization(1);
    GC_enable_incremental();
    GC_INIT();
    GC_allow_register_threads();
    
    //Setup Primitives
    #define PRIMITIVE(cls,ctype,nm) \
    cls.klass = &java_lang_Class_Class; \
    cls.size = sizeof(ctype); \
    cls.name = nm; \
    cls.superClass = &java_lang_Object_Class; \
    cls.componentType = jnull; \
    cls.modifiers = 0; \
    cls.fields = jnull; \
    cls.interfaces = jnull; \
    cls.methods = jnull; \
    cls.finalizeFunction = jnull;

    PRIMITIVE(Z_Class, jbool, JvmMakeString(L"boolean",7));
    PRIMITIVE(B_Class, jbyte, JvmMakeString(L"byte",4));
    PRIMITIVE(C_Class, jchar, JvmMakeString(L"char",4));
    PRIMITIVE(S_Class, jshort, JvmMakeString(L"short",5));
    PRIMITIVE(I_Class, jint, JvmMakeString(L"int",3));
    PRIMITIVE(F_Class, jfloat, JvmMakeString(L"float",5));
    PRIMITIVE(J_Class, jlong, JvmMakeString(L"long",4));
    PRIMITIVE(D_Class, jdouble, JvmMakeString(L"double",6));
    PRIMITIVE(V_Class, void, JvmMakeString(L"void", 4));
    
    //Setup Primitive Arrays
    #define ARROF_PRIMITIVE(cls,component,nm) \
    cls.klass = &java_lang_Class_Class; \
    cls.size = sizeof(JvmArray); \
    cls.name = nm; \
    cls.superClass = &java_lang_Object_Class; \
    cls.componentType = &component; \
    cls.modifiers = 0; \
    cls.fields = jnull; \
    cls.interfaces = jnull; \
    cls.methods = jnull; \
    cls.finalizeFunction = jnull;
    
    ARROF_PRIMITIVE(ArrOf_Z_Class, Z_Class, JvmMakeString(L"[Z", 2));
    ARROF_PRIMITIVE(ArrOf_B_Class, B_Class, JvmMakeString(L"[B", 2));
    ARROF_PRIMITIVE(ArrOf_C_Class, C_Class, JvmMakeString(L"[C", 2));
    ARROF_PRIMITIVE(ArrOf_S_Class, S_Class, JvmMakeString(L"[S", 2));
    ARROF_PRIMITIVE(ArrOf_I_Class, I_Class, JvmMakeString(L"[I", 2));
    ARROF_PRIMITIVE(ArrOf_F_Class, F_Class, JvmMakeString(L"[F", 2));
    ARROF_PRIMITIVE(ArrOf_J_Class, J_Class, JvmMakeString(L"[J", 2));
    ARROF_PRIMITIVE(ArrOf_D_Class, D_Class, JvmMakeString(L"[D", 2));

    ARROF_PRIMITIVE(ArrOf_ArrOf_Z_Class, ArrOf_Z_Class, JvmMakeString(L"[[Z", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_B_Class, ArrOf_B_Class, JvmMakeString(L"[[B", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_C_Class, ArrOf_C_Class, JvmMakeString(L"[[C", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_S_Class, ArrOf_S_Class, JvmMakeString(L"[[S", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_I_Class, ArrOf_I_Class, JvmMakeString(L"[[I", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_F_Class, ArrOf_F_Class, JvmMakeString(L"[[F", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_J_Class, ArrOf_J_Class, JvmMakeString(L"[[J", 3));
    ARROF_PRIMITIVE(ArrOf_ArrOf_D_Class, ArrOf_D_Class, JvmMakeString(L"[[D", 3));

    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_Z_Class, ArrOf_ArrOf_Z_Class, JvmMakeString(L"[[[Z", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_B_Class, ArrOf_ArrOf_B_Class, JvmMakeString(L"[[[B", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_C_Class, ArrOf_ArrOf_C_Class, JvmMakeString(L"[[[C", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_S_Class, ArrOf_ArrOf_S_Class, JvmMakeString(L"[[[S", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_I_Class, ArrOf_ArrOf_I_Class, JvmMakeString(L"[[[I", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_F_Class, ArrOf_ArrOf_F_Class, JvmMakeString(L"[[[F", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_J_Class, ArrOf_ArrOf_J_Class, JvmMakeString(L"[[[J", 4));
    ARROF_PRIMITIVE(ArrOf_ArrOf_ArrOf_D_Class, ArrOf_ArrOf_D_Class, JvmMakeString(L"[[[D", 4));

    //Setup exception & signals
    JvmSetupSignals();
    
    //Setup main thread
    pthread_key_create(&JvmThreadLocalKey, NULL);
    JvmCreateMainThread();
    
    JvmInitDebug();
}

void JvmSetup2() {
    //link primitive classes
    
    B_Class.vtable = Z_Class.vtable = C_Class.vtable = S_Class.vtable =
    I_Class.vtable = F_Class.vtable = J_Class.vtable = D_Class.vtable =

    ArrOf_B_Class.vtable = ArrOf_Z_Class.vtable = ArrOf_C_Class.vtable = ArrOf_S_Class.vtable =
    ArrOf_I_Class.vtable = ArrOf_F_Class.vtable = ArrOf_J_Class.vtable = ArrOf_D_Class.vtable =

    ArrOf_ArrOf_B_Class.vtable = ArrOf_ArrOf_Z_Class.vtable = ArrOf_ArrOf_C_Class.vtable = ArrOf_ArrOf_S_Class.vtable =
    ArrOf_ArrOf_I_Class.vtable = ArrOf_ArrOf_F_Class.vtable = ArrOf_ArrOf_J_Class.vtable = ArrOf_ArrOf_D_Class.vtable =

    ArrOf_ArrOf_ArrOf_B_Class.vtable = ArrOf_ArrOf_ArrOf_Z_Class.vtable = ArrOf_ArrOf_ArrOf_C_Class.vtable = ArrOf_ArrOf_ArrOf_S_Class.vtable =
    ArrOf_ArrOf_ArrOf_I_Class.vtable = ArrOf_ArrOf_ArrOf_F_Class.vtable = ArrOf_ArrOf_ArrOf_J_Class.vtable = ArrOf_ArrOf_ArrOf_D_Class.vtable =

    java_lang_Object_Class.vtable;
}

/////////////////////////////////
// Boxing
////////////////////////////////
#include "java_lang_Byte.h"
#include "java_lang_Boolean.h"
#include "java_lang_Character.h"
#include "java_lang_Short.h"
#include "java_lang_Integer.h"
#include "java_lang_Float.h"
#include "java_lang_Long.h"
#include "java_lang_Double.h"

jbyte JvmUnbox_B(jobject object) {
    return virtual_mjava_lang_Number_byteValue___B(JvmCheckCast(object, &java_lang_Number_Class));
}
jbool JvmUnbox_Z(jobject object) {
    return mjava_lang_Boolean_booleanValue___Z(JvmCheckCast(object, &java_lang_Boolean_Class));
}
jchar JvmUnbox_C(jobject object) {
    return mjava_lang_Character_charValue___C(JvmCheckCast(object, &java_lang_Character_Class));
}
jshort JvmUnbox_S(jobject object) {
    return virtual_mjava_lang_Number_shortValue___S(JvmCheckCast(object, &java_lang_Number_Class));
}
jint JvmUnbox_I(jobject object) {
    return virtual_mjava_lang_Number_intValue___I(JvmCheckCast(object, &java_lang_Number_Class));
}
jfloat JvmUnbox_F(jobject object) {
    return virtual_mjava_lang_Number_floatValue___F(JvmCheckCast(object, &java_lang_Number_Class));
}
jlong JvmUnbox_J(jobject object) {
    return virtual_mjava_lang_Number_longValue___J(JvmCheckCast(object, &java_lang_Number_Class));
}
jdouble JvmUnbox_D(jobject object) {
    return virtual_mjava_lang_Number_doubleValue___D(JvmCheckCast(object, &java_lang_Number_Class));
}

jobject JvmBox_B(jbyte value) {
    return mjava_lang_Byte_valueOf__B_Ljava_lang_Byte_(value);
}
jobject JvmBox_Z(jbool value) {
    return mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(value);
}
jobject JvmBox_C(jchar value) {
    return mjava_lang_Character_valueOf__C_Ljava_lang_Character_(value);
}
jobject JvmBox_S(jshort value) {
    return mjava_lang_Short_valueOf__S_Ljava_lang_Short_(value);
}
jobject JvmBox_I(jint value) {
    return mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(value);
}
jobject JvmBox_F(jfloat value) {
    return mjava_lang_Float_valueOf__F_Ljava_lang_Float_(value);
}
jobject JvmBox_J(jlong value) {
    return mjava_lang_Long_valueOf__J_Ljava_lang_Long_(value);
}
jobject JvmBox_D(jdouble value) {
    return mjava_lang_Double_valueOf__D_Ljava_lang_Double_(value);
}


/////////////////////////////////
// DEBUG
////////////////////////////////
#ifdef JVM_DEBUG
#define MAXBREAKPOINT   128
pthread_mutex_t JvmBreakpointMutex;
typedef struct JvmBreakpoint {
    jlong method;
    jint line;
    jint requestId;
} JvmBreakpoint;
JvmBreakpoint JvmBreakpoints[MAXBREAKPOINT];
int JvmBreakpointCount;

void JvmInitDebug() {
    pthread_mutex_init(&JvmBreakpointMutex, jnull);
    JvmBreakpointCount = 0;
}

jbool JvmAddBreakpoint(jlong method, jint line, jint requestId) {
    if(JvmBreakpointCount >= MAXBREAKPOINT) return jfalse;
    for(int i=0; i<JvmBreakpointCount; i++) {
        if(JvmBreakpoints[i].method == method && JvmBreakpoints[i].line == line)
            return jtrue;
    }
    int i = JvmBreakpointCount++;
    JvmBreakpoints[i].method = method;
    JvmBreakpoints[i].line = line;
    JvmBreakpoints[i].requestId = requestId;
    return jtrue;
}

void JvmRemoveBreakpoint(jlong method, jint line) {
    if(JvmBreakpointCount == 0) return;
    for(int i=0; i<JvmBreakpointCount; i++) {
        if(JvmBreakpoints[i].method == method && JvmBreakpoints[i].line == line) {
            if(i < JvmBreakpointCount-1)
                JvmBreakpoints[i] = JvmBreakpoints[JvmBreakpointCount-1];
            JvmBreakpointCount--;
            break;
        }
    }
}

void JvmRemoveAllBreakpoints() {
    JvmBreakpointCount = 0;
}
extern void mcom_cava_debugger_VM_onHitBreakpoint__JII_V(jlong pmethodId, jint pline, jint prequestId);
void JvmCheckBreakpoint(JvmThread* thread, JvmMethod* method, jint line) {
    if(thread->skipBreakpointCheck) return;
    if(thread->targetFramePtr > 0) {
        if(thread->framePtr <= thread->targetFramePtr) {
            thread->suspendCount++;
            thread->targetFramePtr = 0;
            thread->skipBreakpointCheck = jtrue;
            mcom_cava_debugger_VM_onHitBreakpoint__JII_V((jlong)method, line, -1);
            thread->skipBreakpointCheck = jfalse;
        }
    } else {
        for(int i=0; i<JvmBreakpointCount; i++)
            if(JvmBreakpoints[i].method == (jlong)method && JvmBreakpoints[i].line == line) {
                thread->suspendCount++;
                thread->targetFramePtr = 0;
                thread->skipBreakpointCheck = jtrue;
                mcom_cava_debugger_VM_onHitBreakpoint__JII_V((jlong)method, line, JvmBreakpoints[i].requestId);
                thread->skipBreakpointCheck = jfalse;
                break;
            }
    }
    
    while(thread->suspendCount > 0) {
        usleep(1000);
    }
}

extern void mcom_cava_debugger_Debugger_start__I_V(jint pport);
#ifndef JVM_DEBUG_PORT
    #define JVM_DEBUG_POR 10000
#endif
void JvmStartDebugger() {
    mcom_cava_debugger_Debugger_start__I_V(JVM_DEBUG_PORT);
}

#endif
