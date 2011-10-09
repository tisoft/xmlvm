#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSDictionary.h"
#include "org_xmlvm_iphone_NSNetService.h"
#include "org_xmlvm_iphone_NSNetServiceDelegate_Wrapper.h"

#include "org_xmlvm_iphone_NSNetServiceDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate __TIB_org_xmlvm_iphone_NSNetServiceDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetServiceDelegate, // classInitializer
    "org.xmlvm.iphone.NSNetServiceDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSNetServiceDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetServiceDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetServiceDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate()
{
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.clazz = __CLASS_org_xmlvm_iphone_NSNetServiceDelegate;
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate);
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitialized = 1;
}

