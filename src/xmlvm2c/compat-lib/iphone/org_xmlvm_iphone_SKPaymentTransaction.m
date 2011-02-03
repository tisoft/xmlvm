#include "xmlvm.h"

#include "org_xmlvm_iphone_SKPaymentTransaction.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransaction __TIB_org_xmlvm_iphone_SKPaymentTransaction = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_SKPaymentTransaction, // classInitializer
    "org.xmlvm.iphone.SKPaymentTransaction", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKPaymentTransaction();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

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
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPaymentTransaction);
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransaction;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransaction, 1);

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

