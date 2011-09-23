#ifndef __ORG_XMLVM_IPHONE_NSMUTABLEURLREQUEST__
#define __ORG_XMLVM_IPHONE_NSMUTABLEURLREQUEST__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSURLRequest.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLRequest)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSMutableURLRequest
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSMutableURLRequest, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSMutableURLRequest)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLRequest; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest \
    } org_xmlvm_iphone_NSMutableURLRequest

struct org_xmlvm_iphone_NSMutableURLRequest {
    __TIB_DEFINITION_org_xmlvm_iphone_NSMutableURLRequest* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
typedef struct org_xmlvm_iphone_NSMutableURLRequest org_xmlvm_iphone_NSMutableURLRequest;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSMutableURLRequest 7

void __INIT_org_xmlvm_iphone_NSMutableURLRequest();
void __INIT_IMPL_org_xmlvm_iphone_NSMutableURLRequest();
void __DELETE_org_xmlvm_iphone_NSMutableURLRequest(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableURLRequest(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableURLRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest();
void org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
