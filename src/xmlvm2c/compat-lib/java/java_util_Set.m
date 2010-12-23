#include "java_util_Collection.h"
#include "java_util_Iterator.h"
#include "java_util_Collection.h"

#include "java_util_Set.h"

__TIB_DEFINITION_java_util_Set __TIB_java_util_Set;


void __INIT_java_util_Set(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_java_util_Set.classInitialized) {
        __TIB_java_util_Set.className = "java.util.Set";
        __TIB_java_util_Set.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_java_util_Set.numInterfaces = 1;
        //__TIB_java_util_Set.baseInterfaces[0] = &__INTERFACE_java_util_Collection;
        __TIB_java_util_Set.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_java_util_Set));
        XMLVM_MEMCPY(*interface, &__TIB_java_util_Set, sizeof(__TIB_DEFINITION_java_util_Set));
    }
}

