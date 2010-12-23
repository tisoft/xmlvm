
#include "org_xmlvm_iphone_CGBitmapContext.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGBitmapContext __TIB_org_xmlvm_iphone_CGBitmapContext = {
    0, // classInitialized
    "org.xmlvm.iphone.CGBitmapContext", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CGContext, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGBitmapContext()
{
    __TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    __TIB_org_xmlvm_iphone_CGBitmapContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGBitmapContext.vtable, __TIB_org_xmlvm_iphone_CGContext.vtable, sizeof(__TIB_org_xmlvm_iphone_CGContext.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGBitmapContext.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGBitmapContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGBitmapContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    org_xmlvm_iphone_CGBitmapContext* me = (org_xmlvm_iphone_CGBitmapContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGBitmapContext));
    me->tib = &__TIB_org_xmlvm_iphone_CGBitmapContext;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage(JAVA_INT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

