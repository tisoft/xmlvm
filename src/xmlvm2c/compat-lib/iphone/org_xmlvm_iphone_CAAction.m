#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSObject.h"

#include "org_xmlvm_iphone_CAAction.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAAction __TIB_org_xmlvm_iphone_CAAction = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CAAction, // classInitializer
    "org.xmlvm.iphone.CAAction", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_CAAction()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CAAction);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CAAction.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CAAction.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CAAction);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CAAction.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CAAction.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CAAction.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CAAction();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CAAction()
{
    __TIB_org_xmlvm_iphone_CAAction.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_CAAction.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CAAction = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAAction);
    __TIB_org_xmlvm_iphone_CAAction.clazz = __CLASS_org_xmlvm_iphone_CAAction;
    __TIB_org_xmlvm_iphone_CAAction.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CAAction_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction);
    __CLASS_org_xmlvm_iphone_CAAction_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction_1ARRAY);
    __CLASS_org_xmlvm_iphone_CAAction_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction_2ARRAY);

    __TIB_org_xmlvm_iphone_CAAction.classInitialized = 1;
}

