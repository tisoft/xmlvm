#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAccelerometer.h"
#include "org_xmlvm_iphone_UIAcceleration.h"

#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate __TIB_org_xmlvm_iphone_UIAccelerometerDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_UIAccelerometerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.className = "org.xmlvm.iphone.UIAccelerometerDelegate";
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.flags = XMLVM_TYPE_INTERFACE;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.clazz = __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate, 1);
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIAccelerometerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate));
    }
}

void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_UIAccelerometerDelegate(JAVA_NULL);
}

