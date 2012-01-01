#include "xmlvm.h"
#include "org_xmlvm_iphone_CMGyroData.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_CMGyroHandler.h"

__TIB_DEFINITION_org_xmlvm_iphone_CMGyroHandler __TIB_org_xmlvm_iphone_CMGyroHandler = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CMGyroHandler, // classInitializer
    "org.xmlvm.iphone.CMGyroHandler", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroHandler;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroHandler_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroHandler_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroHandler_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CMGyroData,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"run",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CMGyroData;Lorg/xmlvm/iphone/NSError;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_CMGyroHandler()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CMGyroHandler);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CMGyroHandler.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CMGyroHandler.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CMGyroHandler);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CMGyroHandler.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CMGyroHandler.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CMGyroHandler.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CMGyroHandler();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CMGyroHandler()
{
    __TIB_org_xmlvm_iphone_CMGyroHandler.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_CMGyroHandler.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMGyroHandler.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_CMGyroHandler.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CMGyroHandler.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMGyroHandler.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CMGyroHandler = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CMGyroHandler);
    __TIB_org_xmlvm_iphone_CMGyroHandler.clazz = __CLASS_org_xmlvm_iphone_CMGyroHandler;
    __TIB_org_xmlvm_iphone_CMGyroHandler.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CMGyroHandler_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroHandler);
    __CLASS_org_xmlvm_iphone_CMGyroHandler_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroHandler_1ARRAY);
    __CLASS_org_xmlvm_iphone_CMGyroHandler_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroHandler_2ARRAY);

    __TIB_org_xmlvm_iphone_CMGyroHandler.classInitialized = 1;
}

