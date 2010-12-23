#include "java_lang_Iterable.h"
#include "java_util_Iterator.h"

#include "java_util_Collection.h"

__TIB_DEFINITION_java_util_Collection __TIB_java_util_Collection;


void __INIT_java_util_Collection(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_java_util_Collection.classInitialized) {
        __TIB_java_util_Collection.className = "java.util.Collection";
        __TIB_java_util_Collection.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_java_util_Collection.numInterfaces = 1;
        //__TIB_java_util_Collection.baseInterfaces[0] = &__INTERFACE_java_lang_Iterable;
        __TIB_java_util_Collection.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_java_util_Collection));
        XMLVM_MEMCPY(*interface, &__TIB_java_util_Collection, sizeof(__TIB_DEFINITION_java_util_Collection));
    }
}

