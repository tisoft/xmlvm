#ifndef __ORG_XMLVM_IPHONE_NSERROR_DOMAIN__
#define __ORG_XMLVM_IPHONE_NSERROR_DOMAIN__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSError$Domain
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSError_Domain, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSError_Domain)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSError_Domain
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSError_Domain \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSError_Domain \
    } org_xmlvm_iphone_NSError_Domain

struct org_xmlvm_iphone_NSError_Domain {
    __TIB_DEFINITION_org_xmlvm_iphone_NSError_Domain* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSError_Domain;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError_Domain
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError_Domain
typedef struct org_xmlvm_iphone_NSError_Domain org_xmlvm_iphone_NSError_Domain;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSError_Domain 6

void __INIT_org_xmlvm_iphone_NSError_Domain();
void __INIT_IMPL_org_xmlvm_iphone_NSError_Domain();
void __DELETE_org_xmlvm_iphone_NSError_Domain(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Domain(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError_Domain();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError_Domain();
JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSCocoa();
void org_xmlvm_iphone_NSError_Domain_PUT_NSCocoa(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSURL();
void org_xmlvm_iphone_NSError_Domain_PUT_NSURL(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSPOSIX();
void org_xmlvm_iphone_NSError_Domain_PUT_NSPOSIX(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSOSStatus();
void org_xmlvm_iphone_NSError_Domain_PUT_NSOSStatus(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSMach();
void org_xmlvm_iphone_NSError_Domain_PUT_NSMach(JAVA_OBJECT v);
void org_xmlvm_iphone_NSError_Domain___INIT___(JAVA_OBJECT me);

#endif
