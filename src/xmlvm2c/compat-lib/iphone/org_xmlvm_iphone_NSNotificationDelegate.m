#include "xmlvm.h"
#include "org_xmlvm_iphone_NSNotification.h"

#include "org_xmlvm_iphone_NSNotificationDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNotificationDelegate __TIB_org_xmlvm_iphone_NSNotificationDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNotificationDelegate, // classInitializer
    "org.xmlvm.iphone.NSNotificationDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNotification,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"notify",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNotification;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSNotificationDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNotificationDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNotificationDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNotificationDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNotificationDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNotificationDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNotificationDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNotificationDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNotificationDelegate()
{
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_NSNotificationDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSNotificationDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNotificationDelegate);
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.clazz = __CLASS_org_xmlvm_iphone_NSNotificationDelegate;
    __TIB_org_xmlvm_iphone_NSNotificationDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNotificationDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationDelegate);
    __CLASS_org_xmlvm_iphone_NSNotificationDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNotificationDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_NSNotificationDelegate.classInitialized = 1;
}

