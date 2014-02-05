#ifndef __ORG_XMLVM_IPHONE_NSUUID__
#define __ORG_XMLVM_IPHONE_NSUUID__

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
// Class declarations for org.xmlvm.iphone.NSUUID
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSUUID, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSUUID)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSUUID
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSUUID \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT bytes_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSUUID \
    } org_xmlvm_iphone_NSUUID

struct org_xmlvm_iphone_NSUUID {
    __TIB_DEFINITION_org_xmlvm_iphone_NSUUID* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSUUID;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSUUID
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSUUID
typedef struct org_xmlvm_iphone_NSUUID org_xmlvm_iphone_NSUUID;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSUUID 7

void __INIT_org_xmlvm_iphone_NSUUID();
void __INIT_IMPL_org_xmlvm_iphone_NSUUID();
void __DELETE_org_xmlvm_iphone_NSUUID(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUUID(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSUUID();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSUUID();
void org_xmlvm_iphone_NSUUID___INIT____byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUUID___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSUUID_UUIDString__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSUUID_getUUIDBytes___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
