#ifndef __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSE__
#define __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSHTTPURLResponse
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSHTTPURLResponse, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponse
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponse \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponse \
    } org_xmlvm_iphone_NSHTTPURLResponse

struct org_xmlvm_iphone_NSHTTPURLResponse {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSHTTPURLResponse* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponse;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponse
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponse
typedef struct org_xmlvm_iphone_NSHTTPURLResponse org_xmlvm_iphone_NSHTTPURLResponse;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSHTTPURLResponse 14

void __INIT_org_xmlvm_iphone_NSHTTPURLResponse();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPURLResponse();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPURLResponse();
void org_xmlvm_iphone_NSHTTPURLResponse___INIT___(JAVA_OBJECT me);

#endif
