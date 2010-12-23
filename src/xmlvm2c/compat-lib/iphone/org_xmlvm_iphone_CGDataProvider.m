
#include "org_xmlvm_iphone_CGDataProvider.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGDataProvider __TIB_org_xmlvm_iphone_CGDataProvider = {
    0, // classInitialized
    "org.xmlvm.iphone.CGDataProvider", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGDataProvider()
{
    __TIB_org_xmlvm_iphone_CGDataProvider.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGDataProvider.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGDataProvider;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGDataProvider.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGDataProvider.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGDataProvider.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGDataProvider(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGDataProvider()
{
    if (!__TIB_org_xmlvm_iphone_CGDataProvider.classInitialized) __INIT_org_xmlvm_iphone_CGDataProvider();
    org_xmlvm_iphone_CGDataProvider* me = (org_xmlvm_iphone_CGDataProvider*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGDataProvider));
    me->tib = &__TIB_org_xmlvm_iphone_CGDataProvider;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGDataProvider()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGDataProvider.classInitialized) __INIT_org_xmlvm_iphone_CGDataProvider();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

