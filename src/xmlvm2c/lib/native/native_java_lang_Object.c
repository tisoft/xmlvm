
#include "xmlvm.h"
#include "java_lang_Object.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_Object_initNativeLayer__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_initNativeLayer__]
    // Nothing to be done
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Object_clone__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_clone__]
    //TODO check for ImplementsClonable interface
    java_lang_Object* thiz = me;
    int instanceSize = thiz->tib->sizeInstance;
    if (instanceSize == -1) {
        XMLVM_INTERNAL_ERROR();
    }
    JAVA_OBJECT clone = XMLVM_MALLOC(instanceSize);
    XMLVM_MEMCPY(clone, me, sizeInstance);
    return clone;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Object_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_equals___java_lang_Object]
    return me == n1;
    //XMLVM_END_NATIVE
}

void java_lang_Object_finalize_java_lang_Object__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_finalize_java_lang_Object__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
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
    return (JAVA_INT) me;
    //XMLVM_END_NATIVE
}

void java_lang_Object_notify__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_notify__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Object_notifyAll__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_notifyAll__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Object_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_toString__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Object_wait__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_wait__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Object_wait___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_wait___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Object_wait___long_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Object_wait___long_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Object()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_clone__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_clone__] = 
        (VTABLE_PTR) java_lang_Object_clone__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_equals___java_lang_Object
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_equals___java_lang_Object] = 
        (VTABLE_PTR) java_lang_Object_equals___java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__] = 
        (VTABLE_PTR) java_lang_Object_finalize_java_lang_Object__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_getClass__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_getClass__] = 
        (VTABLE_PTR) java_lang_Object_getClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_hashCode__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_hashCode__] = 
        (VTABLE_PTR) java_lang_Object_hashCode__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_notify__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_notify__] = 
        (VTABLE_PTR) java_lang_Object_notify__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_notifyAll__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_notifyAll__] = 
        (VTABLE_PTR) java_lang_Object_notifyAll__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_toString__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_toString__] = 
        (VTABLE_PTR) java_lang_Object_toString__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_wait__
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_wait__] = 
        (VTABLE_PTR) java_lang_Object_wait__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_wait___long
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_wait___long] = 
        (VTABLE_PTR) java_lang_Object_wait___long;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Object_wait___long_int
    __TIB_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_wait___long_int] = 
        (VTABLE_PTR) java_lang_Object_wait___long_int;
#endif
}
