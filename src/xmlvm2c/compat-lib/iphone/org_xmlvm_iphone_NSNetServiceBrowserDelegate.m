#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSDictionary.h"
#include "org_xmlvm_iphone_NSNetService.h"
#include "org_xmlvm_iphone_NSNetServiceBrowser.h"
#include "org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper.h"

#include "org_xmlvm_iphone_NSNetServiceBrowserDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceBrowserDelegate __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetServiceBrowserDelegate, // classInitializer
    "org.xmlvm.iphone.NSNetServiceBrowserDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSNetServiceBrowserDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowserDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowserDelegate()
{
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.clazz = __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitialized = 1;
}

