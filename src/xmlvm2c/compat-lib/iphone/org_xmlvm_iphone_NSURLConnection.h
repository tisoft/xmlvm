#ifndef __ORG_XMLVM_IPHONE_NSURLCONNECTION__
#define __ORG_XMLVM_IPHONE_NSURLCONNECTION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSErrorHolder)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSHTTPURLResponseHolder)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLConnectionDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLRequest)
#endif
// Class declarations for org.xmlvm.iphone.NSURLConnection
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSURLConnection, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSURLConnection)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSURLConnection 7

void __INIT_org_xmlvm_iphone_NSURLConnection();
void __INIT_IMPL_org_xmlvm_iphone_NSURLConnection();
void __DELETE_org_xmlvm_iphone_NSURLConnection(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnection();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnection();
JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_sendSynchronousRequest___org_xmlvm_iphone_NSURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_connectionWithRequest___org_xmlvm_iphone_NSURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate(JAVA_OBJECT n1, JAVA_OBJECT n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSURLConnection \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSURLConnection \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
