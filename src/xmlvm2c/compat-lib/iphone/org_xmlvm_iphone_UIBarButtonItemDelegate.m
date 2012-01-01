#include "xmlvm.h"

#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate, // classInitializer
    "org.xmlvm.iphone.UIBarButtonItemDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"clicked",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIBarButtonItemDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIBarButtonItemDelegate()
{
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.clazz = __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized = 1;
}

