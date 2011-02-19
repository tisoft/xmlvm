#include "xmlvm.h"

#include "org_xmlvm_iphone_NSTimerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate __TIB_org_xmlvm_iphone_NSTimerDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSTimerDelegate, // classInitializer
    "org.xmlvm.iphone.NSTimerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimerDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_NSTimerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_NSTimerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSTimerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSTimerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_NSTimerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSTimerDelegate);
        __TIB_org_xmlvm_iphone_NSTimerDelegate.clazz = __CLASS_org_xmlvm_iphone_NSTimerDelegate;
        __CLASS_org_xmlvm_iphone_NSTimerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSTimerDelegate, 1);
        __TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_NSTimerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
    }
}

void __INIT_org_xmlvm_iphone_NSTimerDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_NSTimerDelegate(JAVA_NULL);
}

