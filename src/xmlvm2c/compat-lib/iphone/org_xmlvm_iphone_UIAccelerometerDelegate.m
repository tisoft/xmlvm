
#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate __TIB_org_xmlvm_iphone_UIAccelerometerDelegate;


void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.className = "org.xmlvm.iphone.UIAccelerometerDelegate";
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIAccelerometerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
    }
}

