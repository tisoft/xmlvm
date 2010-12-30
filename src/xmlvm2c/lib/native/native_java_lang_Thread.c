
#include "java_lang_Thread.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_Thread_registerNatives__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_registerNatives__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_currentThread__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_currentThread__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_yield__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_yield__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_sleep___long(JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_sleep___long]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_start0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_start0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_isInterrupted___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_isInterrupted___boolean]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_isAlive__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_isAlive__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Thread_countStackFrames__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_countStackFrames__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Thread_holdsLock___java_lang_Object(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_holdsLock___java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_dumpThreads___java_lang_Thread_ARRAYTYPE(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_dumpThreads___java_lang_Thread_ARRAYTYPE]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Thread_getThreads__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_getThreads__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_setPriority0___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_setPriority0___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_stop0___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_stop0___java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_suspend0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_suspend0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_resume0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_resume0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Thread_interrupt0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Thread_interrupt0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Thread()
{
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_isAlive__] = 
        (VTABLE_PTR) java_lang_Thread_isAlive__;
    __TIB_java_lang_Thread.vtable[XMLVM_VTABLE_IDX_java_lang_Thread_countStackFrames__] = 
        (VTABLE_PTR) java_lang_Thread_countStackFrames__;
}
