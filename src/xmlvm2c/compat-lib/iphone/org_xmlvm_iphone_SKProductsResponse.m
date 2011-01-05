#include "java_util_ArrayList.h"

#include "org_xmlvm_iphone_SKProductsResponse.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKProductsResponse __TIB_org_xmlvm_iphone_SKProductsResponse = {
    0, // classInitialized
    "org.xmlvm.iphone.SKProductsResponse", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_SKProductsResponse()
{
    __TIB_org_xmlvm_iphone_SKProductsResponse.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKProductsResponse.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKProductsResponse.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKProductsResponse.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__;
    __TIB_org_xmlvm_iphone_SKProductsResponse.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsResponse_getProducts__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKProductsResponse.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKProductsResponse.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_SKProductsResponse.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsResponse.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKProductsResponse = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_SKProductsResponse);
    __TIB_org_xmlvm_iphone_SKProductsResponse.clazz = __CLASS_org_xmlvm_iphone_SKProductsResponse;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKProductsResponse(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsResponse()
{
    if (!__TIB_org_xmlvm_iphone_SKProductsResponse.classInitialized) __INIT_org_xmlvm_iphone_SKProductsResponse();
    org_xmlvm_iphone_SKProductsResponse* me = (org_xmlvm_iphone_SKProductsResponse*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsResponse));
    me->tib = &__TIB_org_xmlvm_iphone_SKProductsResponse;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKProductsResponse();
    org_xmlvm_iphone_SKProductsResponse___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKProductsResponse___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getProducts__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse_getProducts__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

