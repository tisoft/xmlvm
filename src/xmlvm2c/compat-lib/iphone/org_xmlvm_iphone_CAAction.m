
#include "org_xmlvm_iphone_CAAction.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAAction __TIB_org_xmlvm_iphone_CAAction;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_CAAction(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_CAAction.classInitialized) {
        __TIB_org_xmlvm_iphone_CAAction.className = "org.xmlvm.iphone.CAAction";
        __TIB_org_xmlvm_iphone_CAAction.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_CAAction.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_CAAction.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAAction));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_CAAction, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAAction));    __TIB_org_xmlvm_iphone_CAAction.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CAAction = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_CAAction);
    __TIB_org_xmlvm_iphone_CAAction.clazz = __CLASS_org_xmlvm_iphone_CAAction;
    }
}

