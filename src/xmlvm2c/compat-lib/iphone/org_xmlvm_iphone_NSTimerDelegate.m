
#include "org_xmlvm_iphone_NSTimerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate __TIB_org_xmlvm_iphone_NSTimerDelegate;


void __INIT_org_xmlvm_iphone_NSTimerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_NSTimerDelegate.className = "org.xmlvm.iphone.NSTimerDelegate";
        __TIB_org_xmlvm_iphone_NSTimerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_NSTimerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_NSTimerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
    }
}

