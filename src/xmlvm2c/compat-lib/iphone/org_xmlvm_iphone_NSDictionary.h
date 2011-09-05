#ifndef __ORG_XMLVM_IPHONE_NSDICTIONARY__
#define __ORG_XMLVM_IPHONE_NSDICTIONARY__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSDictionary
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSDictionary, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSDictionary)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDictionary
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSDictionary \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDictionary \
    } org_xmlvm_iphone_NSDictionary

struct org_xmlvm_iphone_NSDictionary {
    __TIB_DEFINITION_org_xmlvm_iphone_NSDictionary* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSDictionary;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDictionary
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDictionary
typedef struct org_xmlvm_iphone_NSDictionary org_xmlvm_iphone_NSDictionary;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSDictionary 6

void __INIT_org_xmlvm_iphone_NSDictionary();
void __INIT_IMPL_org_xmlvm_iphone_NSDictionary();
void __DELETE_org_xmlvm_iphone_NSDictionary(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDictionary(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDictionary();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDictionary();
void org_xmlvm_iphone_NSDictionary___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSDictionary_dictionaryWithContentsOfFile___java_lang_String(JAVA_OBJECT n1);

#endif
