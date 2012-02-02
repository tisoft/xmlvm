#ifndef __ORG_XMLVM_IPHONE_SKPAYMENTTRANSACTIONSTATE__
#define __ORG_XMLVM_IPHONE_SKPAYMENTTRANSACTIONSTATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.SKPaymentTransactionState
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKPaymentTransactionState, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_SKPaymentTransactionState)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentTransactionState
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentTransactionState \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentTransactionState \
    } org_xmlvm_iphone_SKPaymentTransactionState

struct org_xmlvm_iphone_SKPaymentTransactionState {
    __TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransactionState* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentTransactionState;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransactionState
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransactionState
typedef struct org_xmlvm_iphone_SKPaymentTransactionState org_xmlvm_iphone_SKPaymentTransactionState;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKPaymentTransactionState 6

void __INIT_org_xmlvm_iphone_SKPaymentTransactionState();
void __INIT_IMPL_org_xmlvm_iphone_SKPaymentTransactionState();
void __DELETE_org_xmlvm_iphone_SKPaymentTransactionState(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransactionState(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransactionState();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState();
JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchasing();
void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchasing(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchased();
void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchased(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Failed();
void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Failed(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Restored();
void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Restored(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_SKPaymentTransactionState \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_SKPaymentTransactionState \


#endif
