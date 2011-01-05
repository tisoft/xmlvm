
#include "org_xmlvm_iphone_NSTimerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate __TIB_org_xmlvm_iphone_NSTimerDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimerDelegate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimerDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSTimerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_NSTimerDelegate.className = "org.xmlvm.iphone.NSTimerDelegate";
        __TIB_org_xmlvm_iphone_NSTimerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_NSTimerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSTimerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_NSTimerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_NSTimerDelegate));    __TIB_org_xmlvm_iphone_NSTimerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSTimerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSTimerDelegate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSTimerDelegate);
    __TIB_org_xmlvm_iphone_NSTimerDelegate.clazz = __CLASS_org_xmlvm_iphone_NSTimerDelegate;
    }
}

