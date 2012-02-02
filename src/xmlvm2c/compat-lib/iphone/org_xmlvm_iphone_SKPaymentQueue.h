#ifndef __ORG_XMLVM_IPHONE_SKPAYMENTQUEUE__
#define __ORG_XMLVM_IPHONE_SKPAYMENTQUEUE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKPayment)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransaction
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransaction
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKPaymentTransaction)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransactionObserver
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentTransactionObserver
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKPaymentTransactionObserver)
#endif
// Class declarations for org.xmlvm.iphone.SKPaymentQueue
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKPaymentQueue, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_SKPaymentQueue)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentQueue
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentQueue \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentQueue \
    } org_xmlvm_iphone_SKPaymentQueue

struct org_xmlvm_iphone_SKPaymentQueue {
    __TIB_DEFINITION_org_xmlvm_iphone_SKPaymentQueue* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKPaymentQueue;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentQueue
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPaymentQueue
typedef struct org_xmlvm_iphone_SKPaymentQueue org_xmlvm_iphone_SKPaymentQueue;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKPaymentQueue 7

void __INIT_org_xmlvm_iphone_SKPaymentQueue();
void __INIT_IMPL_org_xmlvm_iphone_SKPaymentQueue();
void __DELETE_org_xmlvm_iphone_SKPaymentQueue(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentQueue(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentQueue();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentQueue();
JAVA_BOOLEAN org_xmlvm_iphone_SKPaymentQueue_canMakePayments__();
JAVA_OBJECT org_xmlvm_iphone_SKPaymentQueue_defaultQueue__();
void org_xmlvm_iphone_SKPaymentQueue_addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_SKPaymentQueue_removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_SKPaymentQueue_getTransactions__(JAVA_OBJECT me);
void org_xmlvm_iphone_SKPaymentQueue_addPayment___org_xmlvm_iphone_SKPayment(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_SKPaymentQueue_finishTransaction___org_xmlvm_iphone_SKPaymentTransaction(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_SKPaymentQueue_restoreCompletedTransactions__(JAVA_OBJECT me);
void org_xmlvm_iphone_SKPaymentQueue___CLINIT_();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_SKPaymentQueue \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_SKPaymentQueue \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
