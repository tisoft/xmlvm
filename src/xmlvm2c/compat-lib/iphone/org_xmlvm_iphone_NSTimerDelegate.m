
#include "org_xmlvm_iphone_NSTimerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSTimerDelegate __CLASS_org_xmlvm_iphone_NSTimerDelegate;


void __INIT_org_xmlvm_iphone_NSTimerDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_NSTimerDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_NSTimerDelegate.className = "org.xmlvm.iphone.NSTimerDelegate";
        __CLASS_org_xmlvm_iphone_NSTimerDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_NSTimerDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_NSTimerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_NSTimerDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
    }
}

