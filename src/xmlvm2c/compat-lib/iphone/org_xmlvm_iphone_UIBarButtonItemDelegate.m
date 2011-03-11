#include "xmlvm.h"

#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate, // classInitializer
    "org.xmlvm.iphone.UIBarButtonItemDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized) {
        __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate(interface);
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);
}

void __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate);
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.clazz = __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate;
        __CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate, 1);
        __TIB_org_xmlvm_iphone_UIBarButtonItemDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UIBarButtonItemDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemDelegate));
    }
}

void __INIT_org_xmlvm_iphone_UIBarButtonItemDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_NULL);
}

