#include "org_xmlvm_iphone_NSObject.h"
#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAAction.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CAAction __CLASS_org_xmlvm_iphone_CAAction;


void __INIT_org_xmlvm_iphone_CAAction(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_CAAction.classInitialized) {
        __CLASS_org_xmlvm_iphone_CAAction.className = "org.xmlvm.iphone.CAAction";
        __CLASS_org_xmlvm_iphone_CAAction.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_CAAction.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_CAAction.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_CAAction));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_CAAction, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_CAAction));
    }
}

