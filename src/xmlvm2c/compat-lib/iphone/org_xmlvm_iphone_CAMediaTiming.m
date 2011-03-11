#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAMediaTiming.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming __TIB_org_xmlvm_iphone_CAMediaTiming = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CAMediaTiming, // classInitializer
    "org.xmlvm.iphone.CAMediaTiming", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_CAMediaTiming(__TIB_DEFINITION_TEMPLATE** interface)
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CAMediaTiming);
    if (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized) {
        __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_CAMediaTiming(interface);
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CAMediaTiming);
}

void __INIT_IMPL_FOR_CLASS_org_xmlvm_iphone_CAMediaTiming(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_CAMediaTiming.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_CAMediaTiming.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CAMediaTiming.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_CAMediaTiming = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAMediaTiming);
        __TIB_org_xmlvm_iphone_CAMediaTiming.clazz = __CLASS_org_xmlvm_iphone_CAMediaTiming;
        __CLASS_org_xmlvm_iphone_CAMediaTiming_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming, 1);
        __TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_CAMediaTiming, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming));
    }
}

void __INIT_org_xmlvm_iphone_CAMediaTiming()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_CAMediaTiming(JAVA_NULL);
}

