#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAMediaTiming.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CAMediaTiming __CLASS_org_xmlvm_iphone_CAMediaTiming;


void __INIT_org_xmlvm_iphone_CAMediaTiming(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_CAMediaTiming.classInitialized) {
        __CLASS_org_xmlvm_iphone_CAMediaTiming.className = "org.xmlvm.iphone.CAMediaTiming";
        __CLASS_org_xmlvm_iphone_CAMediaTiming.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_CAMediaTiming.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_CAMediaTiming.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_CAMediaTiming, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
    }
}

