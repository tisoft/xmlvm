#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAccelerometer.h"
#include "org_xmlvm_iphone_UIAcceleration.h"

#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate __TIB_org_xmlvm_iphone_UIAccelerometerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIAccelerometerDelegate, // classInitializer
    "org.xmlvm.iphone.UIAccelerometerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_1ARRAY;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);
    if (!__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIAccelerometerDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_UIAccelerometerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.clazz = __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate, 3);
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate, 2);
        __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate, 1);


    }
}

