#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAMediaTiming.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming __TIB_org_xmlvm_iphone_CAMediaTiming;


void __INIT_org_xmlvm_iphone_CAMediaTiming(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized) {
        __TIB_org_xmlvm_iphone_CAMediaTiming.className = "org.xmlvm.iphone.CAMediaTiming";
        __TIB_org_xmlvm_iphone_CAMediaTiming.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_CAMediaTiming.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_CAMediaTiming, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
    }
}

