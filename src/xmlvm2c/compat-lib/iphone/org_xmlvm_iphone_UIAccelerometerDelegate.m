#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAcceleration.h"
#include "org_xmlvm_iphone_UIAccelerometer.h"

#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometerDelegate __TIB_org_xmlvm_iphone_UIAccelerometerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIAccelerometerDelegate, // classInitializer
    "org.xmlvm.iphone.UIAccelerometerDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIAccelerometer,
    &__CLASS_org_xmlvm_iphone_UIAcceleration,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"accelerometerDidAccelerate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIAccelerometer;Lorg/xmlvm/iphone/UIAcceleration;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIAccelerometerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIAccelerometerDelegate()
{
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_UIAccelerometerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAccelerometerDelegate);
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.clazz = __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate;
    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate);
    __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_UIAccelerometerDelegate.classInitialized = 1;
}

