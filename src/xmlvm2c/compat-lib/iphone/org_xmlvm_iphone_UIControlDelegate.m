#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

#include "org_xmlvm_iphone_UIControlDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate __TIB_org_xmlvm_iphone_UIControlDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_UIControlDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UIControlDelegate.className = "org.xmlvm.iphone.UIControlDelegate";
        __TIB_org_xmlvm_iphone_UIControlDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_UIControlDelegate.flags = XMLVM_TYPE_INTERFACE;
        __TIB_org_xmlvm_iphone_UIControlDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIControlDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIControlDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UIControlDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlDelegate);
        __TIB_org_xmlvm_iphone_UIControlDelegate.clazz = __CLASS_org_xmlvm_iphone_UIControlDelegate;
        __CLASS_org_xmlvm_iphone_UIControlDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlDelegate, 1);
        __TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIControlDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate));
    }
}

void __INIT_org_xmlvm_iphone_UIControlDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_UIControlDelegate(JAVA_NULL);
}

