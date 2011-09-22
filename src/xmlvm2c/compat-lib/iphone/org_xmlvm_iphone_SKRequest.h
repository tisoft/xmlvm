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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKRequest, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_SKRequest)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKRequest 7

void __INIT_org_xmlvm_iphone_SKRequest();
void __INIT_IMPL_org_xmlvm_iphone_SKRequest();
void __DELETE_org_xmlvm_iphone_SKRequest(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequest(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequest();
void org_xmlvm_iphone_SKRequest___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_SKRequest_start__(JAVA_OBJECT me);
void org_xmlvm_iphone_SKRequest_cancel__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_SKRequest_getDelegate__(JAVA_OBJECT me);
void org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
