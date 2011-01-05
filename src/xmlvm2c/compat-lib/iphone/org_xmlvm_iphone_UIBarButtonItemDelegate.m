
#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.className = "org.xmlvm.iphone.UIBarButtonItemDelegate";
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);
    __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.clazz = __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
    }
}

