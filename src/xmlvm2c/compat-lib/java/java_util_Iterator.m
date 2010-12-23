
#include "java_util_Iterator.h"

__TIB_DEFINITION_java_util_Iterator __TIB_java_util_Iterator;


void __INIT_java_util_Iterator(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_java_util_Iterator.classInitialized) {
        __TIB_java_util_Iterator.className = "java.util.Iterator";
        __TIB_java_util_Iterator.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_java_util_Iterator.numInterfaces = 0;
        __TIB_java_util_Iterator.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_java_util_Iterator));
        XMLVM_MEMCPY(*interface, &__TIB_java_util_Iterator, sizeof(__TIB_DEFINITION_java_util_Iterator));
    }
}

