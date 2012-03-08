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

// Define Obj-C method wrapper contents which invoke the Java methods

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_willPublish___org_xmlvm_iphone_NSNetService \
- (void)netServiceWillPublish:(NSNetService *)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_willPublish___org_xmlvm_iphone_NSNetService \
- (void)netServiceWillPublish:(NSNetService *)n1 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_willPublish___org_xmlvm_iphone_NSNetService]))(delegate_, n1_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didNotPublish___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
- (void)netService:(NSNetService *)n1 didNotPublish:(NSDictionary *)n2;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didNotPublish___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
- (void)netService:(NSNetService *)n1 didNotPublish:(NSDictionary *)n2 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary(); \
    JAVA_OBJECT n2_ = xmlvm_get_associated_c_object(n2); \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didNotPublish___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary]))(delegate_, n1_, n2_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didPublish___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidPublish:(NSNetService *)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didPublish___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidPublish:(NSNetService *)n1 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didPublish___org_xmlvm_iphone_NSNetService]))(delegate_, n1_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_willResolve___org_xmlvm_iphone_NSNetService \
- (void)netServiceWillResolve:(NSNetService *)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_willResolve___org_xmlvm_iphone_NSNetService \
- (void)netServiceWillResolve:(NSNetService *)n1 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_willResolve___org_xmlvm_iphone_NSNetService]))(delegate_, n1_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didNotResolve___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
- (void)netService:(NSNetService *)n1 didNotResolve:(NSDictionary *)n2;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didNotResolve___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
- (void)netService:(NSNetService *)n1 didNotResolve:(NSDictionary *)n2 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary(); \
    JAVA_OBJECT n2_ = xmlvm_get_associated_c_object(n2); \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didNotResolve___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary]))(delegate_, n1_, n2_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didResolveAddress___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidResolveAddress:(NSNetService *)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didResolveAddress___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidResolveAddress:(NSNetService *)n1 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didResolveAddress___org_xmlvm_iphone_NSNetService]))(delegate_, n1_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didUpdateTXTRecordData___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSData \
- (void)netService:(NSNetService *)n1 didUpdateTXTRecordData:(NSData *)n2;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didUpdateTXTRecordData___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSData \
- (void)netService:(NSNetService *)n1 didUpdateTXTRecordData:(NSData *)n2 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData(); \
    JAVA_OBJECT n2_ = xmlvm_get_associated_c_object(n2); \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didUpdateTXTRecordData___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSData]))(delegate_, n1_, n2_); \
}

#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didStop___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidStop:(NSNetService *)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didStop___org_xmlvm_iphone_NSNetService \
- (void)netServiceDidStop:(NSNetService *)n1 \
{ \
    JAVA_OBJECT n1_ = [self getSource: n1]; \
    ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNetServiceDelegate_didStop___org_xmlvm_iphone_NSNetService]))(delegate_, n1_); \
}


// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSNetServiceDelegate \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_willPublish___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didNotPublish___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didPublish___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_willResolve___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didNotResolve___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didResolveAddress___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didUpdateTXTRecordData___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSData \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_NSNetServiceDelegate_didStop___org_xmlvm_iphone_NSNetService \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSNetServiceDelegate \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_willPublish___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didNotPublish___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didPublish___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_willResolve___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didNotResolve___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSDictionary \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didResolveAddress___org_xmlvm_iphone_NSNetService \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didUpdateTXTRecordData___org_xmlvm_iphone_NSNetService_org_xmlvm_iphone_NSData \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate_didStop___org_xmlvm_iphone_NSNetService \


#include "xmlvm-ios.h"

@interface NSNetServiceDelegateWrapper : DelegateWrapper <NSNetServiceDelegate>
{
    @public JAVA_OBJECT delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;

// Append the wrapper method declarations defined in the class Macro
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSNetServiceDelegate

@end

typedef struct org_xmlvm_iphone_NSNetServiceDelegate_Wrapper {
    JAVA_OBJECT delegate_; // the Java delegate interface implementation. This also maintains a reference so that the instance is not garbage collected early.
    NSNetServiceDelegateWrapper* nativeDelegateWrapper_; // the Obj-C delegate which will forward its invocations to the Java interface implementation's appropriate method
} org_xmlvm_iphone_NSNetServiceDelegate_Wrapper;

void __DELETE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper(void* me, void* client_data);
org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_iphone_NSNetServiceDelegate(org_xmlvm_iphone_NSNetServiceDelegate* delegate);


#endif
