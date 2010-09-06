#include "java_util_Iterator.h"

#include "java_lang_Iterable.h"

__CLASS_DEFINITION_java_lang_Iterable __CLASS_java_lang_Iterable;


void __INIT_java_lang_Iterable(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_java_lang_Iterable.classInitialized) {
        __CLASS_java_lang_Iterable.className = "java.lang.Iterable";
        __CLASS_java_lang_Iterable.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_java_lang_Iterable.numInterfaces = 0;
        __CLASS_java_lang_Iterable.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_java_lang_Iterable));
        XMLVM_MEMCPY(*interface, &__CLASS_java_lang_Iterable, sizeof(__CLASS_DEFINITION_java_lang_Iterable));
    }
}

