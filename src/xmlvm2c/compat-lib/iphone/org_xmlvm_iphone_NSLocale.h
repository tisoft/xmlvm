#ifndef __ORG_XMLVM_IPHONE_NSLOCALE__
#define __ORG_XMLVM_IPHONE_NSLOCALE__

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
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
// Class declarations for org.xmlvm.iphone.NSLocale
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSLocale, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSLocale)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSLocale
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSLocale \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSLocale \
    } org_xmlvm_iphone_NSLocale

struct org_xmlvm_iphone_NSLocale {
    __TIB_DEFINITION_org_xmlvm_iphone_NSLocale* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSLocale;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
typedef struct org_xmlvm_iphone_NSLocale org_xmlvm_iphone_NSLocale;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSLocale 7

void __INIT_org_xmlvm_iphone_NSLocale();
void __INIT_IMPL_org_xmlvm_iphone_NSLocale();
void __DELETE_org_xmlvm_iphone_NSLocale(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLocale();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSLocale();
JAVA_OBJECT org_xmlvm_iphone_NSLocale_systemLocale__();
JAVA_OBJECT org_xmlvm_iphone_NSLocale_currentLocale__();
JAVA_OBJECT org_xmlvm_iphone_NSLocale_localeIdentifier__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSLocale_preferredLanguages__();

#endif
