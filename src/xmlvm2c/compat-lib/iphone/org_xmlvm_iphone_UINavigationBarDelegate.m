#include "org_xmlvm_iphone_UINavigationBar.h"
#include "org_xmlvm_iphone_UINavigationItem.h"

#include "org_xmlvm_iphone_UINavigationBarDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;


void __INIT_org_xmlvm_iphone_UINavigationBarDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_UINavigationBarDelegate.className = "org.xmlvm.iphone.UINavigationBarDelegate";
        __CLASS_org_xmlvm_iphone_UINavigationBarDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_UINavigationBarDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_UINavigationBarDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate));
    }
}

