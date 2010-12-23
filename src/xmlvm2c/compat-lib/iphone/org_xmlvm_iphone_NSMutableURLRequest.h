#ifndef __ORG_XMLVM_IPHONE_NSMUTABLEURLREQUEST__
#define __ORG_XMLVM_IPHONE_NSMUTABLEURLREQUEST__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSMutableURLRequest
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSMutableURLRequest, 15)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableURLRequest \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSMutableURLRequest 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String 14

void __INIT_org_xmlvm_iphone_NSMutableURLRequest();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableURLRequest();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest();
void org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 14
void org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
