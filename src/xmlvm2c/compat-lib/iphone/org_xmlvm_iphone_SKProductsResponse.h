#ifndef __ORG_XMLVM_IPHONE_SKPRODUCTSRESPONSE__
#define __ORG_XMLVM_IPHONE_SKPRODUCTSRESPONSE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
// Class declarations for org.xmlvm.iphone.SKProductsResponse
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKProductsResponse, 16)

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKProductsResponse 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProductsResponse_getProducts__ 15

void __INIT_org_xmlvm_iphone_SKProductsResponse();
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsResponse();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse();
void org_xmlvm_iphone_SKProductsResponse___INIT___(JAVA_OBJECT me);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getProducts__(JAVA_OBJECT me);

#endif
