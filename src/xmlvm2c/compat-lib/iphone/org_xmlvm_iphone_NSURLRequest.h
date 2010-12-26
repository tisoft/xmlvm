#ifndef __ORG_XMLVM_IPHONE_NSURLREQUEST__
#define __ORG_XMLVM_IPHONE_NSURLREQUEST__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLRequest)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
// Class declarations for org.xmlvm.iphone.NSURLRequest
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSURLRequest, 15)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLRequest
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLRequest \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLRequest \
    } org_xmlvm_iphone_NSURLRequest

struct org_xmlvm_iphone_NSURLRequest {
    __TIB_DEFINITION_org_xmlvm_iphone_NSURLRequest* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLRequest;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
typedef struct org_xmlvm_iphone_NSURLRequest org_xmlvm_iphone_NSURLRequest;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSURLRequest 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSURLRequest_URL__ 14

void __INIT_org_xmlvm_iphone_NSURLRequest();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest();
JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_URL__(JAVA_OBJECT me);

#endif
