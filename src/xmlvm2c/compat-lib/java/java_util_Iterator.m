
#include "java_util_Iterator.h"

__CLASS_DEFINITION_java_util_Iterator __CLASS_java_util_Iterator;


void __INIT_java_util_Iterator(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_java_util_Iterator.classInitialized) {
        __CLASS_java_util_Iterator.className = "java.util.Iterator";
        __CLASS_java_util_Iterator.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_java_util_Iterator.numInterfaces = 0;
        __CLASS_java_util_Iterator.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_java_util_Iterator));
        XMLVM_MEMCPY(*interface, &__CLASS_java_util_Iterator, sizeof(__CLASS_DEFINITION_java_util_Iterator));
    }
}

