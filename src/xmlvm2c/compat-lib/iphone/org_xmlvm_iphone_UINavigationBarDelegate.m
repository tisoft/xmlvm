
#include "org_xmlvm_iphone_UINavigationBarDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate __TIB_org_xmlvm_iphone_UINavigationBarDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UINavigationBarDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.className = "org.xmlvm.iphone.UINavigationBarDelegate";
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UINavigationBarDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate));    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
    }
}

