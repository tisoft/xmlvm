
#include "java_lang_Runnable.h"

__TIB_DEFINITION_java_lang_Runnable __TIB_java_lang_Runnable;


void __INIT_java_lang_Runnable(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_java_lang_Runnable.classInitialized) {
        __TIB_java_lang_Runnable.className = "java.lang.Runnable";
        __TIB_java_lang_Runnable.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_java_lang_Runnable.numInterfaces = 0;
        __TIB_java_lang_Runnable.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_java_lang_Runnable));
        XMLVM_MEMCPY(*interface, &__TIB_java_lang_Runnable, sizeof(__TIB_DEFINITION_java_lang_Runnable));
    }
}

