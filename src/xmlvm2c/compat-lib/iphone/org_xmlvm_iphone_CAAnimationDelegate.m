#include "xmlvm.h"
#include "org_xmlvm_iphone_CAAnimation.h"
#include "org_xmlvm_iphone_CAAnimationDelegate_Wrapper.h"

#include "org_xmlvm_iphone_CAAnimationDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAAnimationDelegate __TIB_org_xmlvm_iphone_CAAnimationDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CAAnimationDelegate, // classInitializer
    "org.xmlvm.iphone.CAAnimationDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CAAnimation,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CAAnimation,
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"animationDidStart",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CAAnimation;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"animationDidStop",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CAAnimation;Z)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_CAAnimationDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CAAnimationDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CAAnimationDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CAAnimationDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CAAnimationDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CAAnimationDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CAAnimationDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CAAnimationDelegate")
        __INIT_IMPL_org_xmlvm_iphone_CAAnimationDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CAAnimationDelegate()
{
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_CAAnimationDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CAAnimationDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAAnimationDelegate);
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.clazz = __CLASS_org_xmlvm_iphone_CAAnimationDelegate;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate);
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_CAAnimationDelegate.classInitialized = 1;
}

