
#include "java_lang_Object.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_Object_registerNatives__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_registerNatives__]
    // Do nothing
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Object_getClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_getClass__]
    java_lang_Object* o = (java_lang_Object*) me;
    return o->tib->clazz;
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Object_hashCode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_hashCode__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Object_clone__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_clone__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Object_notify__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_notify__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Object_notifyAll__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_notifyAll__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_Object_wait___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_wait___long]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Object()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_getClass__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_getClass__] = 
        (VTABLE_PTR) java_lang_Object_getClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_hashCode__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_hashCode__] = 
        (VTABLE_PTR) java_lang_Object_hashCode__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_clone__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_clone__] = 
        (VTABLE_PTR) java_lang_Object_clone__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_notify__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_notify__] = 
        (VTABLE_PTR) java_lang_Object_notify__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_notifyAll__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_notifyAll__] = 
        (VTABLE_PTR) java_lang_Object_notifyAll__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_wait___long
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_wait___long] = 
        (VTABLE_PTR) java_lang_Object_wait___long;
#endif
}
