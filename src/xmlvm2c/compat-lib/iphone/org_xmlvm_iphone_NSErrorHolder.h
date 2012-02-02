#ifndef __ORG_XMLVM_IPHONE_NSERRORHOLDER__
#define __ORG_XMLVM_IPHONE_NSERRORHOLDER__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSError)
#endif
// Class declarations for org.xmlvm.iphone.NSErrorHolder
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSErrorHolder, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSErrorHolder)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSErrorHolder
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSErrorHolder \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT error_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSErrorHolder \
    } org_xmlvm_iphone_NSErrorHolder

struct org_xmlvm_iphone_NSErrorHolder {
    __TIB_DEFINITION_org_xmlvm_iphone_NSErrorHolder* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSErrorHolder;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
typedef struct org_xmlvm_iphone_NSErrorHolder org_xmlvm_iphone_NSErrorHolder;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSErrorHolder 7

void __INIT_org_xmlvm_iphone_NSErrorHolder();
void __INIT_IMPL_org_xmlvm_iphone_NSErrorHolder();
void __DELETE_org_xmlvm_iphone_NSErrorHolder(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSErrorHolder();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSErrorHolder();
void org_xmlvm_iphone_NSErrorHolder___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSErrorHolder_description__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSErrorHolder \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSErrorHolder \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
