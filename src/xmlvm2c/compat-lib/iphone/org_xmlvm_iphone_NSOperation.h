#ifndef __ORG_XMLVM_IPHONE_NSOPERATION__
#define __ORG_XMLVM_IPHONE_NSOPERATION__

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
// Class declarations for org.xmlvm.iphone.NSOperation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSOperation, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSOperation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperation_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSOperation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSOperation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSOperation \
    } org_xmlvm_iphone_NSOperation

struct org_xmlvm_iphone_NSOperation {
    __TIB_DEFINITION_org_xmlvm_iphone_NSOperation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSOperation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOperation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOperation
typedef struct org_xmlvm_iphone_NSOperation org_xmlvm_iphone_NSOperation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSOperation 7

void __INIT_org_xmlvm_iphone_NSOperation();
void __INIT_IMPL_org_xmlvm_iphone_NSOperation();
void __DELETE_org_xmlvm_iphone_NSOperation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSOperation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSOperation();
JAVA_OBJECT org_xmlvm_iphone_NSOperation_init__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_start__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_main__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_cancel__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_NSOperation_isCancelled__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_NSOperation_isExecuting__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_NSOperation_isFinished__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_NSOperation_isConcurrent__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_NSOperation_isReady__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_addDependency___org_xmlvm_iphone_NSOperation(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSOperation_removeDependency___org_xmlvm_iphone_NSOperation(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSOperation_getDependencies__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSOperation_getQueuePriority__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_setQueuePriority___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_DOUBLE org_xmlvm_iphone_NSOperation_getThreadPriority__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSOperation_setThreadPriority___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
void org_xmlvm_iphone_NSOperation_waitUntilFinished__(JAVA_OBJECT me);

#endif
