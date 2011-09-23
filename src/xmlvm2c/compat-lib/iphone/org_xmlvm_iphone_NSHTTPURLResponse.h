#ifndef __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSE__
#define __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSHTTPURLResponse
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSHTTPURLResponse, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSHTTPURLResponse)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponse;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponse_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponse_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponse_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponse
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponse \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponse \
    } org_xmlvm_iphone_NSHTTPURLResponse

struct org_xmlvm_iphone_NSHTTPURLResponse {
    __TIB_DEFINITION_org_xmlvm_iphone_NSHTTPURLResponse* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponse;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponse
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponse
typedef struct org_xmlvm_iphone_NSHTTPURLResponse org_xmlvm_iphone_NSHTTPURLResponse;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSHTTPURLResponse 7

void __INIT_org_xmlvm_iphone_NSHTTPURLResponse();
void __INIT_IMPL_org_xmlvm_iphone_NSHTTPURLResponse();
void __DELETE_org_xmlvm_iphone_NSHTTPURLResponse(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponse(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPURLResponse();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPURLResponse();
void org_xmlvm_iphone_NSHTTPURLResponse___INIT___(JAVA_OBJECT me);

#endif
