#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAMediaTiming.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming __TIB_org_xmlvm_iphone_CAMediaTiming = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CAMediaTiming, // classInitializer
    "org.xmlvm.iphone.CAMediaTiming", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_CAMediaTiming()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CAMediaTiming);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CAMediaTiming);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CAMediaTiming.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CAMediaTiming.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CAMediaTiming();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CAMediaTiming()
{
    __TIB_org_xmlvm_iphone_CAMediaTiming.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_CAMediaTiming.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAMediaTiming.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CAMediaTiming = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAMediaTiming);
    __TIB_org_xmlvm_iphone_CAMediaTiming.clazz = __CLASS_org_xmlvm_iphone_CAMediaTiming;
    __TIB_org_xmlvm_iphone_CAMediaTiming.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming);
    __CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY);
    __CLASS_org_xmlvm_iphone_CAMediaTiming_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY);

    __TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized = 1;
}

