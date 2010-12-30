
#include "java_lang_ClassLoader_NativeLibrary.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_ClassLoader_NativeLibrary_load___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_ClassLoader_NativeLibrary_load___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_ClassLoader_NativeLibrary_find___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_ClassLoader_NativeLibrary_find___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_ClassLoader_NativeLibrary_unload__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_ClassLoader_NativeLibrary_unload__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_ClassLoader_NativeLibrary()
{
    __TIB_java_lang_ClassLoader_NativeLibrary.vtable[XMLVM_VTABLE_IDX_java_lang_ClassLoader_NativeLibrary_load___java_lang_String] = 
        (VTABLE_PTR) java_lang_ClassLoader_NativeLibrary_load___java_lang_String;
    __TIB_java_lang_ClassLoader_NativeLibrary.vtable[XMLVM_VTABLE_IDX_java_lang_ClassLoader_NativeLibrary_find___java_lang_String] = 
        (VTABLE_PTR) java_lang_ClassLoader_NativeLibrary_find___java_lang_String;
    __TIB_java_lang_ClassLoader_NativeLibrary.vtable[XMLVM_VTABLE_IDX_java_lang_ClassLoader_NativeLibrary_unload__] = 
        (VTABLE_PTR) java_lang_ClassLoader_NativeLibrary_unload__;
}
