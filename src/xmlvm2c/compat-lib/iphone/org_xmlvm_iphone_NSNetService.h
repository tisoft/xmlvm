#ifndef __ORG_XMLVM_IPHONE_NSNETSERVICE__
#define __ORG_XMLVM_IPHONE_NSNETSERVICE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetServiceDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSNetServiceDelegate)
#endif
// Class declarations for org.xmlvm.iphone.NSNetService
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNetService, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNetService)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetService

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetService \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT delegateWrapper_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNetService \
    } org_xmlvm_iphone_NSNetService

struct org_xmlvm_iphone_NSNetService {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNetService* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNetService;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetService
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNetService
typedef struct org_xmlvm_iphone_NSNetService org_xmlvm_iphone_NSNetService;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNetService 7

void __INIT_org_xmlvm_iphone_NSNetService();
void __INIT_IMPL_org_xmlvm_iphone_NSNetService();
void __DELETE_org_xmlvm_iphone_NSNetService(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetService(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetService();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetService();
void org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
void org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4);
void org_xmlvm_iphone_NSNetService_scheduleInMainRunLoop__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetService_setDelegate___org_xmlvm_iphone_NSNetServiceDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSNetService_resolveWithTimeout___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
void org_xmlvm_iphone_NSNetService_publish__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetService_stop__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNetService_removeFromMainRunLoop__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSNetService_getAddresses__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSNetService_getDomain__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSNetService_getHostName__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSNetService_getName__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSNetService_getPort__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSNetService_getType__(JAVA_OBJECT me);

#endif
