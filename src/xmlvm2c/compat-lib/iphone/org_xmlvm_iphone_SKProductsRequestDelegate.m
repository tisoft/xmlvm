
#include "org_xmlvm_iphone_SKProductsRequestDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKProductsRequestDelegate __TIB_org_xmlvm_iphone_SKProductsRequestDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.SKProductsRequestDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequestDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKProductsRequestDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKProductsRequestDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    if (!__TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitialized) __INIT_org_xmlvm_iphone_SKProductsRequestDelegate();
    org_xmlvm_iphone_SKProductsRequestDelegate* me = (org_xmlvm_iphone_SKProductsRequestDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsRequestDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_SKProductsRequestDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKProductsRequestDelegate();
    org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequestDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

