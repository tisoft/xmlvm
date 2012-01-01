#include "xmlvm.h"

#include "org_xmlvm_iphone_NSSelector.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSSelector __TIB_org_xmlvm_iphone_NSSelector = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSSelector, // classInitializer
    "org.xmlvm.iphone.NSSelector", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    "<A:Ljava/lang/Object;>Ljava/lang/Object;", // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSelector;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSelector_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSelector_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSelector_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"invokeWithArgument",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSSelector()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSSelector);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSSelector.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSSelector.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSSelector);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSSelector.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSSelector.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSSelector.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSSelector();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSSelector()
{
    __TIB_org_xmlvm_iphone_NSSelector.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSSelector.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSelector.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_NSSelector.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSSelector.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSelector.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSSelector = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSSelector);
    __TIB_org_xmlvm_iphone_NSSelector.clazz = __CLASS_org_xmlvm_iphone_NSSelector;
    __TIB_org_xmlvm_iphone_NSSelector.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSSelector_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSelector);
    __CLASS_org_xmlvm_iphone_NSSelector_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSelector_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSSelector_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSelector_2ARRAY);

    __TIB_org_xmlvm_iphone_NSSelector.classInitialized = 1;
}

