
#include "org_xmlvm_iphone_NSLocale.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSLocale __TIB_org_xmlvm_iphone_NSLocale = {
    0, // classInitialized
    "org.xmlvm.iphone.NSLocale", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSLocale()
{
    __TIB_org_xmlvm_iphone_NSLocale.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSLocale.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSLocale;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSLocale.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSLocale.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSLocale.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSLocale.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSLocale = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSLocale);
    __TIB_org_xmlvm_iphone_NSLocale.clazz = __CLASS_org_xmlvm_iphone_NSLocale;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSLocale(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLocale()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    org_xmlvm_iphone_NSLocale* me = (org_xmlvm_iphone_NSLocale*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSLocale));
    me->tib = &__TIB_org_xmlvm_iphone_NSLocale;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSLocale()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_systemLocale__()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_systemLocale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_currentLocale__()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_currentLocale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

