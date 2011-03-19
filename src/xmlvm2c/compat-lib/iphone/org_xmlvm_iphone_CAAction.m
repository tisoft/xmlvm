#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"
#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAAction.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAAction __TIB_org_xmlvm_iphone_CAAction = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CAAction, // classInitializer
    "org.xmlvm.iphone.CAAction", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_1ARRAY;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_CAAction(__TIB_DEFINITION_TEMPLATE** interface)
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CAAction);
    if (!__TIB_org_xmlvm_iphone_CAAction.classInitialized) {
        __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_CAAction(interface);
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CAAction);
}

void __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_CAAction(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_CAAction.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CAAction.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_CAAction.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_CAAction.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CAAction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_CAAction = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAAction);
        __TIB_org_xmlvm_iphone_CAAction.clazz = __CLASS_org_xmlvm_iphone_CAAction;
        __CLASS_org_xmlvm_iphone_CAAction_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction, 3);
        __CLASS_org_xmlvm_iphone_CAAction_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction, 2);
        __CLASS_org_xmlvm_iphone_CAAction_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAction, 1);

        __TIB_org_xmlvm_iphone_CAAction.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAAction));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_CAAction, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAAction));
    }
}

void __INIT_org_xmlvm_iphone_CAAction()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_CAAction(JAVA_NULL);
}

