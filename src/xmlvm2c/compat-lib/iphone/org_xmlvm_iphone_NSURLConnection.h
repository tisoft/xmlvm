#ifndef __ORG_XMLVM_IPHONE_NSURLCONNECTION__
#define __ORG_XMLVM_IPHONE_NSURLCONNECTION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSMutableURLRequest)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSHTTPURLResponseHolder)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLConnectionDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSErrorHolder)
#endif
// Class declarations for org.xmlvm.iphone.NSURLConnection
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSURLConnection, 14)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnection \
    org_xmlvm_iphone_NSURLConnectionDelegate* delegate_;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnection \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnection \
    } org_xmlvm_iphone_NSURLConnection

struct org_xmlvm_iphone_NSURLConnection {
    __TIB_DEFINITION_org_xmlvm_iphone_NSURLConnection* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnection;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnection
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnection
typedef struct org_xmlvm_iphone_NSURLConnection org_xmlvm_iphone_NSURLConnection;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSURLConnection 14

void __INIT_org_xmlvm_iphone_NSURLConnection();
void __INIT_IMPL_org_xmlvm_iphone_NSURLConnection();
void __DELETE_org_xmlvm_iphone_NSURLConnection(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnection();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnection();
JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate(JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
