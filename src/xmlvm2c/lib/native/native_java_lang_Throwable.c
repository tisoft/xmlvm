
#include "java_lang_Throwable.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_Throwable_fillInStackTrace__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Throwable_fillInStackTrace__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Throwable_getStackTraceDepth__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Throwable_getStackTraceDepth__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Throwable_getStackTraceElement___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Throwable_getStackTraceElement___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Throwable()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_Throwable_fillInStackTrace__
    __TIB_java_lang_Throwable.vtable[XMLVM_VTABLE_IDX_java_lang_Throwable_fillInStackTrace__] = 
        (VTABLE_PTR) java_lang_Throwable_fillInStackTrace__;
#endif
}
