#ifndef __ORG_XMLVM_IPHONE_SKPRODUCTSRESPONSE__
#define __ORG_XMLVM_IPHONE_SKPRODUCTSRESPONSE__

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
// Class declarations for org.xmlvm.iphone.SKProductsResponse
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKProductsResponse, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_SKProductsResponse)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsResponse_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsResponse
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsResponse \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsResponse \
    } org_xmlvm_iphone_SKProductsResponse

struct org_xmlvm_iphone_SKProductsResponse {
    __TIB_DEFINITION_org_xmlvm_iphone_SKProductsResponse* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsResponse;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProductsResponse
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProductsResponse
typedef struct org_xmlvm_iphone_SKProductsResponse org_xmlvm_iphone_SKProductsResponse;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKProductsResponse 7

void __INIT_org_xmlvm_iphone_SKProductsResponse();
void __INIT_IMPL_org_xmlvm_iphone_SKProductsResponse();
void __DELETE_org_xmlvm_iphone_SKProductsResponse(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsResponse(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsResponse();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse();
void org_xmlvm_iphone_SKProductsResponse___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getProducts__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_SKProductsResponse \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_SKProductsResponse \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
