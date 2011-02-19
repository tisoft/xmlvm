
#include "xmlvm.h"
#include "java_lang_Thread.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include <pthread.h>

void threadRunner(JAVA_OBJECT me)
{
    JAVA_LONG nativeThreadId = (JAVA_LONG)pthread_self();
    java_lang_Thread_run0___long(me, nativeThreadId);
}
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_INT java_lang_Thread_activeCount__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_activeCount__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_checkAccess__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_checkAccess__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Thread_countStackFrames__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_countStackFrames__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_Thread_getCurrentThreadNativeId__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getCurrentThreadNativeId__]
    JAVA_LONG nativeThreadId = (JAVA_LONG)pthread_self();
    return nativeThreadId;
    //XMLVM_END_NATIVE
}

void java_lang_Thread_destroy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_destroy__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_dumpStack__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_dumpStack__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Thread_enumerate___java_lang_Thread_ARRAYTYPE(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_enumerate___java_lang_Thread_ARRAYTYPE]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getAllStackTraces__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getAllStackTraces__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getContextClassLoader__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getContextClassLoader__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getDefaultUncaughtExceptionHandler__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getDefaultUncaughtExceptionHandler__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getStackTrace__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getStackTrace__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getState__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getThreadLocal___java_lang_ThreadLocal(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getThreadLocal___java_lang_ThreadLocal]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getUncaughtExceptionHandler__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getUncaughtExceptionHandler__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_interrupted__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_interrupted__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_isAlive__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_isAlive__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_isInterrupted__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_isInterrupted__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_join__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_join__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_join___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_join___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_join___long_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_join___long_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_resume__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_resume__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setContextClassLoader___java_lang_ClassLoader(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setContextClassLoader___java_lang_ClassLoader]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setDaemon___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setDaemon___boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setDefaultUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setDefaultUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setPriority___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setPriority___int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setThreadLocal___java_lang_ThreadLocal_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setThreadLocal___java_lang_ThreadLocal_java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_sleep___long(JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_sleep___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_start__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_start__]
    pthread_t pt;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
    int rc = pthread_create(&pt, &attr, threadRunner, (void *)me);
    if (rc != 0) {
        printf("ERROR creating thread. Return code: %i", rc);
        exit(-1);
    }
    pthread_attr_destroy(&attr);
    //XMLVM_END_NATIVE
}

void java_lang_Thread_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_stop__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_stop___java_lang_Throwable(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_stop___java_lang_Throwable]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_suspend__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_suspend__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_yield__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_yield__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_holdsLock___java_lang_Object(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_holdsLock___java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Thread()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_checkAccess__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_checkAccess__] = 
        (VTABLE_PTR) java_lang_Thread_checkAccess__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_countStackFrames__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_countStackFrames__] = 
        (VTABLE_PTR) java_lang_Thread_countStackFrames__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_destroy__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_destroy__] = 
        (VTABLE_PTR) java_lang_Thread_destroy__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_getContextClassLoader__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_getContextClassLoader__] = 
        (VTABLE_PTR) java_lang_Thread_getContextClassLoader__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_getStackTrace__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_getStackTrace__] = 
        (VTABLE_PTR) java_lang_Thread_getStackTrace__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_getState__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_getState__] = 
        (VTABLE_PTR) java_lang_Thread_getState__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_getThreadLocal___java_lang_ThreadLocal
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_getThreadLocal___java_lang_ThreadLocal] = 
        (VTABLE_PTR) java_lang_Thread_getThreadLocal___java_lang_ThreadLocal;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_getUncaughtExceptionHandler__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_getUncaughtExceptionHandler__] = 
        (VTABLE_PTR) java_lang_Thread_getUncaughtExceptionHandler__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_isAlive__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_isAlive__] = 
        (VTABLE_PTR) java_lang_Thread_isAlive__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_isInterrupted__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_isInterrupted__] = 
        (VTABLE_PTR) java_lang_Thread_isInterrupted__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_join__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_join__] = 
        (VTABLE_PTR) java_lang_Thread_join__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_join___long
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_join___long] = 
        (VTABLE_PTR) java_lang_Thread_join___long;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_join___long_int
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_join___long_int] = 
        (VTABLE_PTR) java_lang_Thread_join___long_int;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_resume__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_resume__] = 
        (VTABLE_PTR) java_lang_Thread_resume__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_setContextClassLoader___java_lang_ClassLoader
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_setContextClassLoader___java_lang_ClassLoader] = 
        (VTABLE_PTR) java_lang_Thread_setContextClassLoader___java_lang_ClassLoader;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_setDaemon___boolean
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_setDaemon___boolean] = 
        (VTABLE_PTR) java_lang_Thread_setDaemon___boolean;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_setPriority___int
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_setPriority___int] = 
        (VTABLE_PTR) java_lang_Thread_setPriority___int;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_setThreadLocal___java_lang_ThreadLocal_java_lang_Object
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_setThreadLocal___java_lang_ThreadLocal_java_lang_Object] = 
        (VTABLE_PTR) java_lang_Thread_setThreadLocal___java_lang_ThreadLocal_java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_setUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_setUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler] = 
        (VTABLE_PTR) java_lang_Thread_setUncaughtExceptionHandler___java_lang_Thread_UncaughtExceptionHandler;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_start__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_start__] = 
        (VTABLE_PTR) java_lang_Thread_start__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_stop__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_stop__] = 
        (VTABLE_PTR) java_lang_Thread_stop__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_stop___java_lang_Throwable
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_stop___java_lang_Throwable] = 
        (VTABLE_PTR) java_lang_Thread_stop___java_lang_Throwable;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Thread_suspend__
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_suspend__] = 
        (VTABLE_PTR) java_lang_Thread_suspend__;
#endif
}
