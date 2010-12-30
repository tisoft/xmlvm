
#include "java_lang_Runtime.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_INT java_lang_Runtime_availableProcessors__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_availableProcessors__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_Runtime_freeMemory__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_freeMemory__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_Runtime_totalMemory__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_totalMemory__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_Runtime_maxMemory__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_maxMemory__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Runtime_gc__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_gc__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Runtime_runFinalization0__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_runFinalization0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Runtime_traceInstructions___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_traceInstructions___boolean]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Runtime_traceMethodCalls___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Runtime_traceMethodCalls___boolean]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Runtime()
{
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_availableProcessors__] = 
        (VTABLE_PTR) java_lang_Runtime_availableProcessors__;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_freeMemory__] = 
        (VTABLE_PTR) java_lang_Runtime_freeMemory__;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_totalMemory__] = 
        (VTABLE_PTR) java_lang_Runtime_totalMemory__;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_maxMemory__] = 
        (VTABLE_PTR) java_lang_Runtime_maxMemory__;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_gc__] = 
        (VTABLE_PTR) java_lang_Runtime_gc__;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_traceInstructions___boolean] = 
        (VTABLE_PTR) java_lang_Runtime_traceInstructions___boolean;
    __TIB_java_lang_Runtime.vtable[XMLVM_VTABLE_IDX_java_lang_Runtime_traceMethodCalls___boolean] = 
        (VTABLE_PTR) java_lang_Runtime_traceMethodCalls___boolean;
}
