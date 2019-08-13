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
    if(object->klass->finalizeFunction) {
        object->klass->finalizeFunction(object);
    }
}
static void* gcAlloc(int size) {
    void* m = GC_MALLOC(size);
    if(!m) {
        GC_gcollect();
        m = GC_MALLOC(size);
    }
    if(m) memset(m, 0, size);    
    return m;
}
static void* gcAllocAtomic(int size) {
    void* m = GC_MALLOC_ATOMIC(size);
    if(!m) {
        GC_gcollect();
        m = GC_MALLOC_ATOMIC(size);
    }
    if(m) memset(m, 0, size);    
    return m;
}
static void* gcAllocAtomicNoZero(int size) {
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
JvmString* JvmAllocString(JCHAR* chars, JINT length) {
    JvmString* string = gcAlloc(sizeof(JvmString));
    string->klass = &java_lang_String_Class;
    string->offset = 0;
    string->count = length;
    JvmArray* array = JvmAllocPrimArray1(&ArrOf_C_Class, length);
    memcpy(JvmArrayData(array), chars, length*sizeof(JCHAR));
    string->value = array;
    
    return string;
}
JvmString* JvmMakeString(JCHAR* chars, JINT length) {
    JvmString* string = malloc(sizeof(JvmString));
    string->klass = &java_lang_String_Class;
    string->offset = 0;
    string->count = length;
    JvmArray* array = malloc(sizeof(JvmArray) + length * sizeof(JCHAR));
    array->klass = &ArrOf_C_Class;
    array->len = length;
    memcpy(JvmArrayData(array), chars, length*sizeof(JCHAR));
    string->value = array;
    return string;
}

JvmArray* JvmMakeObjectArray(JvmClass* klass, JINT length, void* data) {
    JvmArray* array = (JvmArray*)malloc(sizeof(JvmArray) + sizeof(JOBJECT) * length);
    array->klass = klass;
    array->len = length;
    if(length > 0)
        memcpy(JvmArrayData(array), data, length * sizeof(JOBJECT));
    return array;
}

JvmMethod* JvmMakeMethod(JvmClass* klass, JvmString* name, JvmClass* type, JINT modifiers, JvmArray* parameters, void* methodAddress, void* dynamicWrapper
#ifdef JVM_DEBUG
     ,JINT minLine, JINT maxLine, JINT argCount, JINT localCount, JvmLocalVariableInfo* locals
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

JvmField* JvmMakeField(JvmClass* klass, JvmString* name, JvmClass* type, JINT modifiers, void* fieldAddress) {
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
JvmArray* JvmAllocPrimArray1(JvmClass* klass, JINT length) {
    JvmArray* array = (JvmArray*)gcAllocAtomic(sizeof(JvmArray) + klass->componentType->size * length);
    array->klass = klass;
    array->len = length;
    return array;
}
JvmArray* JvmAllocObjectArray1(JvmClass* klass, JINT length) {
    JvmArray* array = (JvmArray*)gcAlloc(sizeof(JvmArray) + (sizeof(JOBJECT)) * length);
    array->klass = klass;
    array->len = length;
    return array;
}
//2d arrays
JvmArray* JvmAllocPrimArray2(JvmClass* klass, JINT length, JINT length2) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    void** data = JvmArrayData(array);
    for(int i=0; i<length; i++)
        data[i] = JvmAllocPrimArray1(klass->componentType, length2);
    return array;
}
JvmArray* JvmAllocObjectArray2(JvmClass* klass, JINT length, JINT length2) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    void** data = JvmArrayData(array);
    for(int i=0; i<length; i++)
        data[i] = JvmAllocObjectArray1(klass->componentType, length2);
    return array;
}

JvmArray* JvmInitPrimArray1(JvmClass* klass, JINT length, void* data) {
    int byteSize = klass->componentType->size * length;
    JvmArray* array = (JvmArray*)gcAllocAtomicNoZero(sizeof(JvmArray) + byteSize);
    array->klass = klass;
    array->len = length;
    memcpy(JvmArrayData(array), data, byteSize);
    return array;
}

JvmArray* JvmInitObjectArray1(JvmClass* klass, JINT length, void* data) {
    JvmArray* array = JvmAllocObjectArray1(klass, length);
    memcpy(JvmArrayData(array), data, length * sizeof(JOBJECT));
    return array;
}

//////////////////////////////////////////////
// Array
//////////////////////////////////////////////
#define CHECKBOUNDS(array,index) if(index<0 || index>=JvmArrayLen(array)) JvmArrayException(index);
#define DEFINE_ARRAY_ACCESS(nm, type) \
JVMINLINE type JvmArrayGet_##nm (JvmArray* array, int index) { \
    CHECKBOUNDS(array, index); \
    return ((type*)JvmArrayData(array))[index];\
} \
JVMINLINE type JvmArraySet_##nm (JvmArray* array, int index, type value) { \
    CHECKBOUNDS(array, index); \
    return ((type*)JvmArrayData(array))[index] = value; \
}

DEFINE_ARRAY_ACCESS(B, JBYTE)
DEFINE_ARRAY_ACCESS(C, JCHAR)
DEFINE_ARRAY_ACCESS(S, JSHORT)
DEFINE_ARRAY_ACCESS(Z, JBOOL)
DEFINE_ARRAY_ACCESS(I, JINT)
DEFINE_ARRAY_ACCESS(F, JFLOAT)
DEFINE_ARRAY_ACCESS(J, JLONG)
DEFINE_ARRAY_ACCESS(D, JDOUBLE)
DEFINE_ARRAY_ACCESS(O, JOBJECT)

#define DEFINE_ARRAY_ACCESS_NBC(nm, type) \
JVMINLINE type JvmArrayGet_##nm_NBC (JvmArray* array, int index) { \
return ((type*)JvmArrayData(array))[index];\
} \
JVMINLINE type JvmArraySet_##nm_NBC (JvmArray* array, int index, type value) { \
return ((type*)JvmArrayData(array))[index] = value; \
}

JBOOL JvmIsAssignableFrom(JvmClass* src, JvmClass* dst) {
    if(src == dst) return jtrue;
    if(src == jnull || dst == jnull) JvmNullPointerException();
    
    if(src->componentType) {
        if(!dst->componentType) return jfalse;
        return JvmIsAssignableFrom(src->componentType, dst->componentType);
    }
    
    return dst->isChildOf ? dst->isChildOf(src) : jfalse;
}

JBOOL JvmInstanceOf(JOBJECT object, JOBJECT klass) {
    if(object == jnull || klass == jnull) return jfalse;
    return JvmIsAssignableFrom((JvmClass*)klass, ((JvmObject*)object)->klass);
}

JOBJECT JvmCheckCast(JOBJECT object, JOBJECT klass) {
    if(object == jnull || klass == jnull) return object;

    if(!JvmIsAssignableFrom((JvmClass*)klass, ((JvmObject*)object)->klass)) {
        JvmClassCastException();
    }
    return object;
}

typedef struct JvmMonitor {
    pthread_mutex_t mutex;
    void* key;
    JBOOL created;
    JvmThread* thread;
    int count;
    struct JvmMonitor* next;
} JvmMonitor;
pthread_mutex_t JvmMonitorListLock;
JvmMonitor* JvmActiveMonitors = jnull;
JvmMonitor* JvmFreeMonitors = jnull;

void JvmMonitorEnter(JvmObject* object) {
    if(object == jnull) {
        JvmNullPointerException();
    }
    pthread_mutex_lock(&JvmMonitorListLock);
    JvmMonitor* mon = jnull;
    if(JvmActiveMonitors != jnull) {
        JvmMonitor* ptr = JvmActiveMonitors;
        while(ptr != jnull) {
            if(ptr->key == (void*)object) {
                mon = ptr;
                break;
            }
            ptr = ptr->next;
        }
    }
    
    if(!mon) {
        if(JvmFreeMonitors) {
            mon = JvmFreeMonitors;
            JvmFreeMonitors = JvmFreeMonitors->next;
        } else {
            mon = malloc(sizeof(JvmMonitor));
            memset(mon, 0, sizeof(JvmMonitor));
        }
        mon->key = (void*)object;
        mon->next = JvmActiveMonitors;
        JvmActiveMonitors = mon;
    }
    
    if(!mon->created) {
        pthread_mutex_init(&mon->mutex, jnull);
        mon->created = jtrue;
    }
    
    JvmThread* thread = JvmCurrentThread();
    if(mon->thread == thread || mon->thread == jnull) {
        mon->thread = thread;
        mon->count++;
        pthread_mutex_unlock(&JvmMonitorListLock);
        return;
    }
    //safe to release list lock
    pthread_mutex_unlock(&JvmMonitorListLock);

    while(jtrue) {
        if(pthread_mutex_trylock(&mon->mutex) == 0) break;
        usleep(1);
    }
    
    //we got the lock!!
    mon->thread = thread;
    mon->count++;
}

void JvmMonitorExit(JvmObject* object) {
    pthread_mutex_lock(&JvmMonitorListLock);
    JvmMonitor* mon = JvmActiveMonitors;
    JvmMonitor* pre = jnull;
    
    while(mon) {
        if(mon->key == (void*)object) break;
        pre = mon;
        mon = mon->next;
    }
    
    if(mon == jnull) {
        //panic!!
        printf("Can't find active monitor!!");
        pthread_mutex_unlock(&JvmMonitorListLock);
        return;
    }
    mon->count--;
    if(mon->count <= 0) {
        if(!pre)
            JvmActiveMonitors = JvmActiveMonitors->next;
        else {
            pre->next = mon->next;
        }
        mon->next = JvmFreeMonitors;
        JvmFreeMonitors = mon;
        mon->count = 0;
        mon->thread = jnull;
        mon->next = jnull;
        mon->key = jnull;
    }
    
    pthread_mutex_unlock(&mon->mutex);
    pthread_mutex_unlock(&JvmMonitorListLock);
}


//////////////////////////////////////////////
// Exception Handling
//////////////////////////////////////////////
void JvmExit();
extern void mjava_lang_Throwable_printStackTrace___V(JOBJECT pthis);
void JvmThrow(JOBJECT exception) {
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
    JvmFreeMonitors = JvmActiveMonitors = jnull;
    
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

    PRIMITIVE(Z_Class, JBOOL, JvmMakeString(L"boolean",7));
    PRIMITIVE(B_Class, JBYTE, JvmMakeString(L"byte",4));
    PRIMITIVE(C_Class, JCHAR, JvmMakeString(L"char",4));
    PRIMITIVE(S_Class, JSHORT, JvmMakeString(L"short",5));
    PRIMITIVE(I_Class, JINT, JvmMakeString(L"int",3));
    PRIMITIVE(F_Class, JFLOAT, JvmMakeString(L"float",5));
    PRIMITIVE(J_Class, JLONG, JvmMakeString(L"long",4));
    PRIMITIVE(D_Class, JDOUBLE, JvmMakeString(L"double",6));
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

JBYTE JvmUnbox_B(JOBJECT object) {
    return virtual_mjava_lang_Number_byteValue___B(JvmCheckCast(object, &java_lang_Number_Class));
}
JBOOL JvmUnbox_Z(JOBJECT object) {
    return mjava_lang_Boolean_booleanValue___Z(JvmCheckCast(object, &java_lang_Boolean_Class));
}
JCHAR JvmUnbox_C(JOBJECT object) {
    return mjava_lang_Character_charValue___C(JvmCheckCast(object, &java_lang_Character_Class));
}
JSHORT JvmUnbox_S(JOBJECT object) {
    return virtual_mjava_lang_Number_shortValue___S(JvmCheckCast(object, &java_lang_Number_Class));
}
JINT JvmUnbox_I(JOBJECT object) {
    return virtual_mjava_lang_Number_intValue___I(JvmCheckCast(object, &java_lang_Number_Class));
}
JFLOAT JvmUnbox_F(JOBJECT object) {
    return virtual_mjava_lang_Number_floatValue___F(JvmCheckCast(object, &java_lang_Number_Class));
}
JLONG JvmUnbox_J(JOBJECT object) {
    return virtual_mjava_lang_Number_longValue___J(JvmCheckCast(object, &java_lang_Number_Class));
}
JDOUBLE JvmUnbox_D(JOBJECT object) {
    return virtual_mjava_lang_Number_doubleValue___D(JvmCheckCast(object, &java_lang_Number_Class));
}

JOBJECT JvmBox_B(JBYTE value) {
    return mjava_lang_Byte_valueOf__B_Ljava_lang_Byte_(value);
}
JOBJECT JvmBox_Z(JBOOL value) {
    return mjava_lang_Boolean_valueOf__Z_Ljava_lang_Boolean_(value);
}
JOBJECT JvmBox_C(JCHAR value) {
    return mjava_lang_Character_valueOf__C_Ljava_lang_Character_(value);
}
JOBJECT JvmBox_S(JSHORT value) {
    return mjava_lang_Short_valueOf__S_Ljava_lang_Short_(value);
}
JOBJECT JvmBox_I(JINT value) {
    return mjava_lang_Integer_valueOf__I_Ljava_lang_Integer_(value);
}
JOBJECT JvmBox_F(JFLOAT value) {
    return mjava_lang_Float_valueOf__F_Ljava_lang_Float_(value);
}
JOBJECT JvmBox_J(JLONG value) {
    return mjava_lang_Long_valueOf__J_Ljava_lang_Long_(value);
}
JOBJECT JvmBox_D(JDOUBLE value) {
    return mjava_lang_Double_valueOf__D_Ljava_lang_Double_(value);
}


/////////////////////////////////
// DEBUG
////////////////////////////////
#ifdef JVM_DEBUG
#define MAXBREAKPOINT   128
pthread_mutex_t JvmBreakpointMutex;
typedef struct JvmBreakpoint {
    JLONG method;
    JINT line;
    JINT requestId;
} JvmBreakpoint;
JvmBreakpoint JvmBreakpoints[MAXBREAKPOINT];
int JvmBreakpointCount;

void JvmInitDebug() {
    pthread_mutex_init(&JvmBreakpointMutex, jnull);
    JvmBreakpointCount = 0;
}

JBOOL JvmAddBreakpoint(JLONG method, JINT line, JINT requestId) {
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

void JvmRemoveBreakpoint(JLONG method, JINT line) {
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
extern void mcom_cava_debugger_VM_onHitBreakpoint__JII_V(JLONG pmethodId, JINT pline, JINT prequestId);
void JvmCheckBreakpoint(JvmThread* thread, JvmMethod* method, JINT line) {
    if(thread->skipBreakpointCheck) return;
    if(thread->targetFramePtr > 0) {
        if(thread->framePtr <= thread->targetFramePtr) {
            thread->suspendCount++;
            thread->targetFramePtr = 0;
            thread->skipBreakpointCheck = jtrue;
            mcom_cava_debugger_VM_onHitBreakpoint__JII_V((JLONG)method, line, -1);
            thread->skipBreakpointCheck = jfalse;
        }
    } else {
        for(int i=0; i<JvmBreakpointCount; i++)
            if(JvmBreakpoints[i].method == (JLONG)method && JvmBreakpoints[i].line == line) {
                thread->suspendCount++;
                thread->targetFramePtr = 0;
                thread->skipBreakpointCheck = jtrue;
                mcom_cava_debugger_VM_onHitBreakpoint__JII_V((JLONG)method, line, JvmBreakpoints[i].requestId);
                thread->skipBreakpointCheck = jfalse;
                break;
            }
    }
    
    while(thread->suspendCount > 0) {
        usleep(1000);
    }
}

extern void mcom_cava_debugger_Debugger_start__Ljava_lang_String_I_V(JOBJECT phost, JINT port);
#ifndef JVM_DEBUG_PORT
    #define JVM_DEBUG_POR 10000
#endif
void JvmStartDebugger() {
    mcom_cava_debugger_Debugger_start__Ljava_lang_String_I_V(JvmMakeString(L"10.10.128.48",13), JVM_DEBUG_PORT);
}

#endif
