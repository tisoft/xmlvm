#ifndef __ORG_XMLVM_IPHONE_NSNETSERVICEDELEGATE__
#define __ORG_XMLVM_IPHONE_NSNETSERVICEDELEGATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDictionary
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDictionary
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDictionary)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetService
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetService
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSNetService)
#endif

XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNetServiceDelegate, 0, 0)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_3ARRAY;
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
typedef struct org_xmlvm_iphone_NSNetServiceDelegate org_xmlvm_iphone_NSNetServiceDelegate;
#endif

void __INIT_org_xmlvm_iphone_NSNetServiceDelegate();
void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate();

@interface NSNetServiceDelegateWrapper : DelegateWrapper <NSNetServiceDelegate>
{
    @public JAVA_OBJECT delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;

- (void)netServiceWillPublish:(NSNetService *)n1;
- (void)netService:(NSNetService *)n1 didNotPublish:(NSDictionary *)n2;
- (void)netServiceDidPublish:(NSNetService *)n1;
- (void)netServiceWillResolve:(NSNetService *)n1;
- (void)netService:(NSNetService *)n1 didNotResolve:(NSDictionary *)n2;
- (void)netServiceDidResolveAddress:(NSNetService *)n1;
- (void)netService:(NSNetService *)n1 didUpdateTXTRecordData:(NSData *)n2;
- (void)netServiceDidStop:(NSNetService *)n1;

@end

typedef struct org_xmlvm_iphone_NSNetServiceDelegate_Wrapper {
    JAVA_OBJECT delegate_; // the Java delegate interface implementation. This also maintains a reference so that the instance is not garbage collected early.
    NSNetServiceDelegateWrapper* nativeDelegateWrapper_; // the Obj-C delegate which will forward its invocations to the Java interface implementation's appropriate method
} org_xmlvm_iphone_NSNetServiceDelegate_Wrapper;

void __DELETE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper(void* me, void* client_data);
org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_iphone_NSNetServiceDelegate(org_xmlvm_iphone_NSNetServiceDelegate* delegate);


#endif
