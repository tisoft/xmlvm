#include "xmlvm.h"
#include "org_xmlvm_iphone_UINavigationBar.h"
#include "org_xmlvm_iphone_UINavigationItem.h"

#include "org_xmlvm_iphone_UINavigationBarDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate __TIB_org_xmlvm_iphone_UINavigationBarDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UINavigationBarDelegate, // classInitializer
    "org.xmlvm.iphone.UINavigationBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UINavigationBarDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UINavigationBarDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UINavigationBarDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UINavigationBarDelegate()
{
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate);
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized = 1;
}

