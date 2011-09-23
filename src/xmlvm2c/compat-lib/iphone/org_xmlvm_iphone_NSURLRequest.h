#ifndef __ORG_XMLVM_IPHONE_NSURLREQUEST__
#define __ORG_XMLVM_IPHONE_NSURLREQUEST__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSMutableURLRequest)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLRequest)
#endif
// Class declarations for org.xmlvm.iphone.NSURLRequest
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSURLRequest, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSURLRequest)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSURLRequest 7

void __INIT_org_xmlvm_iphone_NSURLRequest();
void __INIT_IMPL_org_xmlvm_iphone_NSURLRequest();
void __DELETE_org_xmlvm_iphone_NSURLRequest(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest();
void org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_URL__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSURLRequest_dummy___org_xmlvm_iphone_NSMutableURLRequest(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
