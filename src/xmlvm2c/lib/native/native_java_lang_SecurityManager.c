
#include "java_lang_SecurityManager.h"

JAVA_OBJECT java_lang_SecurityManager_getClassContext__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_SecurityManager_getClassContext__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_SecurityManager_currentClassLoader0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_SecurityManager_currentClassLoader0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_SecurityManager_classDepth___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_SecurityManager_classDepth___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_SecurityManager_classLoaderDepth0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_SecurityManager_classLoaderDepth0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_SecurityManager_currentLoadedClass0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_SecurityManager_currentLoadedClass0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_SecurityManager()
{
    __TIB_java_lang_SecurityManager.vtable[XMLVM_VTABLE_IDX_java_lang_SecurityManager_getClassContext__] = 
        (VTABLE_PTR) java_lang_SecurityManager_getClassContext__;
    __TIB_java_lang_SecurityManager.vtable[XMLVM_VTABLE_IDX_java_lang_SecurityManager_classDepth___java_lang_String] = 
        (VTABLE_PTR) java_lang_SecurityManager_classDepth___java_lang_String;
}
