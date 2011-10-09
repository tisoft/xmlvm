#ifndef __ORG_XMLVM_IPHONE_NSNETSERVICEDELEGATE_WRAPPER__
#define __ORG_XMLVM_IPHONE_NSNETSERVICEDELEGATE_WRAPPER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSNetServiceDelegate)
#endif
// Class declarations for org.xmlvm.iphone.NSNetServiceDelegate$Wrapper
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNetServiceDelegate_Wrapper, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper

@interface NSNetServiceDelegateWrapper : DelegateWrapper <NSNetServiceDelegate>
{
    @public JAVA_OBJECT delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;

- (void)netService:(NSNetService *)sender didNotPublish:(NSDictionary *)errorDict;
- (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict;
- (void)netService:(NSNetService *)sender didUpdateTXTRecordData:(NSData *)data;
- (void)netServiceDidPublish:(NSNetService *)sender;
- (void)netServiceDidResolveAddress:(NSNetService *)sender;
- (void)netServiceDidStop:(NSNetService *)sender;
- (void)netServiceWillPublish:(NSNetService *)sender;
- (void)netServiceWillResolve:(NSNetService *)sender;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT delegate_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper \
    } org_xmlvm_iphone_NSNetServiceDelegate_Wrapper

struct org_xmlvm_iphone_NSNetServiceDelegate_Wrapper {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper
typedef struct org_xmlvm_iphone_NSNetServiceDelegate_Wrapper org_xmlvm_iphone_NSNetServiceDelegate_Wrapper;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper 7

void __INIT_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper();
void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper();
void __DELETE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper();
void org_xmlvm_iphone_NSNetServiceDelegate_Wrapper___INIT____org_xmlvm_iphone_NSNetServiceDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
