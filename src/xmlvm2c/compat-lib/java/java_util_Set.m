#include "java_util_Collection.h"
#include "java_util_Iterator.h"
#include "java_util_Collection.h"

#include "java_util_Set.h"

__CLASS_DEFINITION_java_util_Set __CLASS_java_util_Set;


void __INIT_java_util_Set(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_java_util_Set.classInitialized) {
        __CLASS_java_util_Set.className = "java.util.Set";
        __CLASS_java_util_Set.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_java_util_Set.numInterfaces = 1;
        //__CLASS_java_util_Set.baseInterfaces[0] = &__INTERFACE_java_util_Collection;
        __CLASS_java_util_Set.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_java_util_Set));
        XMLVM_MEMCPY(*interface, &__CLASS_java_util_Set, sizeof(__CLASS_DEFINITION_java_util_Set));
    }
}

