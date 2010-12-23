
#include "org_xmlvm_iphone_UINavigationControllerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate __TIB_org_xmlvm_iphone_UINavigationControllerDelegate;


void __INIT_org_xmlvm_iphone_UINavigationControllerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.className = "org.xmlvm.iphone.UINavigationControllerDelegate";
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UINavigationControllerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
    }
}

