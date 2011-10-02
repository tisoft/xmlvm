#ifndef __ORG_XMLVM_IPHONE_NSNETSERVICEBROWSER__
#define __ORG_XMLVM_IPHONE_NSNETSERVICEBROWSER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowserDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSNetServiceBrowserDelegate)
#endif
// Class declarations for org.xmlvm.iphone.NSNetServiceBrowser
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNetServiceBrowser, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNetServiceBrowser)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowser
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowser \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT delegate_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowser \
    } org_xmlvm_iphone_NSNetServiceBrowser

struct org_xmlvm_iphone_NSNetServiceBrowser {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceBrowser* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetServiceBrowser;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowser
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceBrowser
typedef struct org_xmlvm_iphone_NSNetServiceBrowser org_xmlvm_iphone_NSNetServiceBrowser;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNetServiceBrowser 7

void __INIT_org_xmlvm_iphone_NSNetServiceBrowser();
void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowser();
void __DELETE_org_xmlvm_iphone_NSNetServiceBrowser(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceBrowser(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetServiceBrowser();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetServiceBrowser();
void org_xmlvm_iphone_NSNetServiceBrowser___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetServiceBrowser_scheduleInMainRunLoop__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetServiceBrowser_setDelegate___org_xmlvm_iphone_NSNetServiceBrowserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSNetServiceBrowser_searchForServicesOfTypeInDomain___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSNetServiceBrowser_stop__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetServiceBrowser_removeFromMainRunLoop__(JAVA_OBJECT me);

#endif
