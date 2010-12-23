#include "java_util_Iterator.h"

#include "java_lang_Iterable.h"

__TIB_DEFINITION_java_lang_Iterable __TIB_java_lang_Iterable;


void __INIT_java_lang_Iterable(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_java_lang_Iterable.classInitialized) {
        __TIB_java_lang_Iterable.className = "java.lang.Iterable";
        __TIB_java_lang_Iterable.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_java_lang_Iterable.numInterfaces = 0;
        __TIB_java_lang_Iterable.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_java_lang_Iterable));
        XMLVM_MEMCPY(*interface, &__TIB_java_lang_Iterable, sizeof(__TIB_DEFINITION_java_lang_Iterable));
    }
}

