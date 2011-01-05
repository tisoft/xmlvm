#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_SKPayment.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_SKPaymentTransaction.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransaction __TIB_org_xmlvm_iphone_SKPaymentTransaction = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentTransaction", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_SKPaymentTransaction()
{
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransaction;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getError__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getPayment__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_SKPaymentTransaction.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_SKPaymentTransaction);
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransaction;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPaymentTransaction(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransaction()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransaction();
    org_xmlvm_iphone_SKPaymentTransaction* me = (org_xmlvm_iphone_SKPaymentTransaction*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransaction));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentTransaction;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransaction()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getError__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getError__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getPayment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getPayment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

