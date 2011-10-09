#ifndef __ORG_XMLVM_IPHONE_NSNETSERVICEBROWSERDELEGATE_WRAPPER__
#define __ORG_XMLVM_IPHONE_NSNETSERVICEBROWSERDELEGATE_WRAPPER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSNetServiceBrowserDelegate)
#endif
// Class declarations for org.xmlvm.iphone.NSNetServiceBrowserDelegate$Wrapper
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper

@interface NSNetServiceBrowserDelegateWrapper : DelegateWrapper <NSNetServiceBrowserDelegate>
{
    @public JAVA_OBJECT delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;

- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didFindDomain:(NSString *)domainName moreComing:(BOOL)moreDomainsComing;
- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didFindService:(NSNetService *)netService moreComing:(BOOL)moreServicesComing;
- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didNotSearch:(NSDictionary *)errorInfo;
- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didRemoveDomain:(NSString *)domainName moreComing:(BOOL)moreDomainsComing;
- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didRemoveService:(NSNetService *)netService moreComing:(BOOL)moreServicesComing;
- (void)netServiceBrowserDidStopSearch:(NSNetServiceBrowser *)netServiceBrowser;
- (void)netServiceBrowserWillSearch:(NSNetServiceBrowser *)netServiceBrowser;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT delegate_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper \
    } org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper

struct org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper
typedef struct org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper 7

void __INIT_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper();
void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper();
void __DELETE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper();
void org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper___INIT____org_xmlvm_iphone_NSNetServiceBrowserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
