#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.h"

#include "org_xmlvm_iphone_UIViewAnimationDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationDelegate __TIB_org_xmlvm_iphone_UIViewAnimationDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewAnimationDelegate, // classInitializer
    "org.xmlvm.iphone.UIViewAnimationDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIViewAnimationDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewAnimationDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewAnimationDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationDelegate()
{
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate);
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.clazz = __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate);
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate.classInitialized = 1;
}

