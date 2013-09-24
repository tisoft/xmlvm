#include "xmlvm.h"
#include "org_xmlvm_iphone_UIGestureRecognizer.h"
#include "org_xmlvm_iphone_UITouch.h"

#include "org_xmlvm_iphone_UIGestureRecognizerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIGestureRecognizerDelegate __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIGestureRecognizerDelegate, // classInitializer
    "org.xmlvm.iphone.UIGestureRecognizerDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
    &__CLASS_org_xmlvm_iphone_UITouch,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"gestureRecognizerShouldBegin",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldRecognizeSimultaneouslyWithGestureRecognizer",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;Lorg/xmlvm/iphone/UIGestureRecognizer;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldReceiveTouch",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;Lorg/xmlvm/iphone/UITouch;)Z",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIGestureRecognizerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIGestureRecognizerDelegate")
        __INIT_IMPL_org_xmlvm_iphone_UIGestureRecognizerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIGestureRecognizerDelegate()
{
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate);
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.clazz = __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate;
    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate);
    __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_UIGestureRecognizerDelegate.classInitialized = 1;
}

