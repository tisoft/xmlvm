
#include "org_xmlvm_iphone_SKPaymentTransactionState.h"

__CLASS_DEFINITION_org_xmlvm_iphone_SKPaymentTransactionState __CLASS_org_xmlvm_iphone_SKPaymentTransactionState = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentTransactionState", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;

void __INIT_org_xmlvm_iphone_SKPaymentTransactionState()
{
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = 0;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = 1;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = 2;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPaymentTransactionState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransactionState()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    org_xmlvm_iphone_SKPaymentTransactionState* me = (org_xmlvm_iphone_SKPaymentTransactionState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransactionState));
    me->__class = &__CLASS_org_xmlvm_iphone_SKPaymentTransactionState;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKPaymentTransactionState();
    org_xmlvm_iphone_SKPaymentTransactionState___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchasing()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchasing(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchased()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchased(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Failed()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Failed(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Restored()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Restored(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = v;
}

void org_xmlvm_iphone_SKPaymentTransactionState___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionState___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

