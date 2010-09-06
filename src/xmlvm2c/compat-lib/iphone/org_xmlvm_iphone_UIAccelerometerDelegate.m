#include "org_xmlvm_iphone_UIAccelerometer.h"
#include "org_xmlvm_iphone_UIAcceleration.h"

#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;


void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate.className = "org.xmlvm.iphone.UIAccelerometerDelegate";
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
    }
}

