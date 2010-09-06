
#include "java_lang_Runnable.h"

__CLASS_DEFINITION_java_lang_Runnable __CLASS_java_lang_Runnable;


void __INIT_java_lang_Runnable(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_java_lang_Runnable.classInitialized) {
        __CLASS_java_lang_Runnable.className = "java.lang.Runnable";
        __CLASS_java_lang_Runnable.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_java_lang_Runnable.numInterfaces = 0;
        __CLASS_java_lang_Runnable.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_java_lang_Runnable));
        XMLVM_MEMCPY(*interface, &__CLASS_java_lang_Runnable, sizeof(__CLASS_DEFINITION_java_lang_Runnable));
    }
}

