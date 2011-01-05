
#include "org_xmlvm_iphone_SKPaymentTransactionState.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransactionState __TIB_org_xmlvm_iphone_SKPaymentTransactionState = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentTransactionState", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Purchasing",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing,
    "",
    JAVA_NULL},
    {"Purchased",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased,
    "",
    JAVA_NULL},
    {"Failed",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed,
    "",
    JAVA_NULL},
    {"Restored",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_SKPaymentTransactionState()
{
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentTransactionState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = 0;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = 1;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = 2;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = 3;

    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_SKPaymentTransactionState);
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransactionState;

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
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    org_xmlvm_iphone_SKPaymentTransactionState* me = (org_xmlvm_iphone_SKPaymentTransactionState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransactionState));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentTransactionState;
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
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchasing(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchased()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchased(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Failed()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Failed(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Restored()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Restored(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = v;
}

void org_xmlvm_iphone_SKPaymentTransactionState___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionState___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

