#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

#include "org_xmlvm_iphone_UIControlDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIControlDelegate __TIB_org_xmlvm_iphone_UIControlDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIControlDelegate, // classInitializer
    "org.xmlvm.iphone.UIControlDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIControlDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIControlDelegate);
    if (!__TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIControlDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIControlDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_UIControlDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIControlDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIControlDelegate.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_UIControlDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIControlDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIControlDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_UIControlDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlDelegate);
        __TIB_org_xmlvm_iphone_UIControlDelegate.clazz = __CLASS_org_xmlvm_iphone_UIControlDelegate;
        __TIB_org_xmlvm_iphone_UIControlDelegate.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UIControlDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlDelegate);
        __CLASS_org_xmlvm_iphone_UIControlDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlDelegate_1ARRAY);
        __CLASS_org_xmlvm_iphone_UIControlDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlDelegate_2ARRAY);

        __TIB_org_xmlvm_iphone_UIControlDelegate.classInitialized = 1;

    }
}

