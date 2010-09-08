#include "org_xmlvm_iphone_UIControl.h"

#include "org_xmlvm_iphone_UIControlDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIControlDelegate __CLASS_org_xmlvm_iphone_UIControlDelegate;


void __INIT_org_xmlvm_iphone_UIControlDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_UIControlDelegate.className = "org.xmlvm.iphone.UIControlDelegate";
        __CLASS_org_xmlvm_iphone_UIControlDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_UIControlDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_UIControlDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_UIControlDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
    }
}

