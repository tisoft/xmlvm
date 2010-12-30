
#include "java_lang_String.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_String_intern__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_String_intern__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_String()
{
    __TIB_java_lang_String.vtable[XMLVM_VTABLE_IDX_java_lang_String_intern__] = 
        (VTABLE_PTR) java_lang_String_intern__;
}
