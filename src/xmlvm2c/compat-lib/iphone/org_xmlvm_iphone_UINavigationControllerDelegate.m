#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UIViewController.h"

#include "org_xmlvm_iphone_UINavigationControllerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate;


void __INIT_org_xmlvm_iphone_UINavigationControllerDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate.className = "org.xmlvm.iphone.UINavigationControllerDelegate";
        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_UINavigationControllerDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
    }
}

