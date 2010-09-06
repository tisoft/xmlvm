#include "java_lang_Iterable.h"
#include "java_util_Iterator.h"

#include "java_util_Collection.h"

__CLASS_DEFINITION_java_util_Collection __CLASS_java_util_Collection;


void __INIT_java_util_Collection(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_java_util_Collection.classInitialized) {
        __CLASS_java_util_Collection.className = "java.util.Collection";
        __CLASS_java_util_Collection.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_java_util_Collection.numInterfaces = 1;
        //__CLASS_java_util_Collection.baseInterfaces[0] = &__INTERFACE_java_lang_Iterable;
        __CLASS_java_util_Collection.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_java_util_Collection));
        XMLVM_MEMCPY(*interface, &__CLASS_java_util_Collection, sizeof(__CLASS_DEFINITION_java_util_Collection));
    }
}

