#include "xmlvm.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UIViewController.h"

#include "org_xmlvm_iphone_UINavigationControllerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate __TIB_org_xmlvm_iphone_UINavigationControllerDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UINavigationControllerDelegate, // classInitializer
    "org.xmlvm.iphone.UINavigationControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_UINavigationControllerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationControllerDelegate);
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate;
        __CLASS_org_xmlvm_iphone_UINavigationControllerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationControllerDelegate, 1);
        __TIB_org_xmlvm_iphone_UINavigationControllerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_UINavigationControllerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_UINavigationControllerDelegate));
    }
}

void __INIT_org_xmlvm_iphone_UINavigationControllerDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_UINavigationControllerDelegate(JAVA_NULL);
}

