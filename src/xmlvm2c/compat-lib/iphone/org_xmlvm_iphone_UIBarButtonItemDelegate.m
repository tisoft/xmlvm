
#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;


void __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate.className = "org.xmlvm.iphone.UIBarButtonItemDelegate";
        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));
    }
}

