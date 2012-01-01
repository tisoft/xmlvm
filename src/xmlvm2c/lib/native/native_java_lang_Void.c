
#include "xmlvm.h"
#include "java_lang_Void.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "java_lang_Class.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_Void_initVoid__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Void_initVoid__]
    if (!__TIB_java_lang_Class.classInitialized) __INIT_java_lang_Class();
    java_lang_Void_PUT_TYPE(__CLASS_void);
    //XMLVM_END_NATIVE
}

