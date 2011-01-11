
#include "java_lang_reflect_Constructor.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_reflect_Constructor_newInstance___java_lang_Object_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Constructor_newInstance___java_lang_Object_ARRAYTYPE]
    java_lang_reflect_Constructor* thiz = (java_lang_reflect_Constructor*) me;
    Func_OOO dispatcher = (Func_OOO) thiz->fields.java_lang_reflect_Constructor.address_;
    return (*dispatcher)(me, n1);
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_reflect_Constructor()
{
    __TIB_java_lang_reflect_Constructor.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Constructor_newInstance___java_lang_Object_ARRAYTYPE] = 
        (VTABLE_PTR) java_lang_reflect_Constructor_newInstance___java_lang_Object_ARRAYTYPE;
}
