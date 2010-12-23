
#include "org_xmlvm_iphone_UIControlDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate __TIB_org_xmlvm_iphone_UIControlDelegate;


void __INIT_org_xmlvm_iphone_UIControlDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UIControlDelegate.className = "org.xmlvm.iphone.UIControlDelegate";
        __TIB_org_xmlvm_iphone_UIControlDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UIControlDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIControlDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
    }
}

