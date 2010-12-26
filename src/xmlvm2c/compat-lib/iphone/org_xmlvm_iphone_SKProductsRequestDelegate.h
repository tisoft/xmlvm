#ifndef __ORG_XMLVM_IPHONE_SKPRODUCTSREQUESTDELEGATE__
#define __ORG_XMLVM_IPHONE_SKPRODUCTSREQUESTDELEGATE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.SKProductsRequestDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKProductsRequestDelegate, 15)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsRequestDelegate
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsRequestDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsRequestDelegate \
    } org_xmlvm_iphone_SKProductsRequestDelegate

struct org_xmlvm_iphone_SKProductsRequestDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_SKProductsRequestDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKProductsRequestDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProductsRequestDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProductsRequestDelegate
typedef struct org_xmlvm_iphone_SKProductsRequestDelegate org_xmlvm_iphone_SKProductsRequestDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKProductsRequestDelegate 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProductsRequestDelegate_didReceiveResponse___org_xmlvm_iphone_SKProductsRequest_org_xmlvm_iphone_SKProductsResponse 14

void __INIT_org_xmlvm_iphone_SKProductsRequestDelegate();
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsRequestDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequestDelegate();
void org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_SKProductsRequestDelegate_didReceiveResponse___org_xmlvm_iphone_SKProductsRequest_org_xmlvm_iphone_SKProductsResponse(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
