#ifndef __ORG_XMLVM_IPHONE_NSURLCONNECTIONDELEGATE__
#define __ORG_XMLVM_IPHONE_NSURLCONNECTIONDELEGATE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnection
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnection
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURLConnection)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSError)
#endif
// Class declarations for org.xmlvm.iphone.NSURLConnectionDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSURLConnectionDelegate, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSURLConnectionDelegate)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#include "org_xmlvm_iphone_NSURLConnection.h"

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnectionDelegate

@interface NSURLConnectionDelegateWrapper : NSObject {
    org_xmlvm_iphone_NSURLConnectionDelegate* delegate_;
    org_xmlvm_iphone_NSURLConnection* connection_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;
- (void) setConnection: (org_xmlvm_iphone_NSURLConnection*) c_;
- (void) connectionDidFinishLoading: (NSURLConnection*) connection;
- (void) connection: (NSURLConnection*) connection didFailWithError: (NSError*) error;
- (void) connection: (NSURLConnection*) connection didReceiveData: (NSData*) data;

@end


//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnectionDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnectionDelegate \
    } org_xmlvm_iphone_NSURLConnectionDelegate

struct org_xmlvm_iphone_NSURLConnectionDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_NSURLConnectionDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSURLConnectionDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURLConnectionDelegate
typedef struct org_xmlvm_iphone_NSURLConnectionDelegate org_xmlvm_iphone_NSURLConnectionDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSURLConnectionDelegate 6

void __INIT_org_xmlvm_iphone_NSURLConnectionDelegate();
void __INIT_IMPL_org_xmlvm_iphone_NSURLConnectionDelegate();
void __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnectionDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnectionDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnectionDelegate();
void org_xmlvm_iphone_NSURLConnectionDelegate___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
