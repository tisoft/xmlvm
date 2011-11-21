#include "xmlvm.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_UIPrintInteractionController.h"

#include "org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler, // classInitializer
    "org.xmlvm.iphone.UIPrintInteractionController$UIPrintInteractionCompletionHandler", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler()
{
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler);
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.clazz = __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler);
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler_2ARRAY);

    __TIB_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.classInitialized = 1;
}

