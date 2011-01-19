#ifndef __ORG_XMLVM_IPHONE_SKREQUEST__
#define __ORG_XMLVM_IPHONE_SKREQUEST__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequestDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequestDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKRequestDelegate)
#endif
// Class declarations for org.xmlvm.iphone.SKRequest
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKRequest, 18)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKRequest
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKRequest \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKRequest \
    } org_xmlvm_iphone_SKRequest

struct org_xmlvm_iphone_SKRequest {
    __TIB_DEFINITION_org_xmlvm_iphone_SKRequest* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKRequest;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequest
typedef struct org_xmlvm_iphone_SKRequest org_xmlvm_iphone_SKRequest;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKRequest 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequest_start__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequest_cancel__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequest_getDelegate__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate 17

void __INIT_org_xmlvm_iphone_SKRequest();
void __DELETE_org_xmlvm_iphone_SKRequest(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequest();
void org_xmlvm_iphone_SKRequest___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_SKRequest_start__(JAVA_OBJECT me);
// Vtable index: 15
void org_xmlvm_iphone_SKRequest_cancel__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_SKRequest_getDelegate__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
