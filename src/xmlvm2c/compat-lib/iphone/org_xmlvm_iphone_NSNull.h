#ifndef __ORG_XMLVM_IPHONE_NSNULL__
#define __ORG_XMLVM_IPHONE_NSNULL__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSNull
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNull, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNull)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNull
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNull \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNull \
    } org_xmlvm_iphone_NSNull

struct org_xmlvm_iphone_NSNull {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNull* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNull;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNull
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNull
typedef struct org_xmlvm_iphone_NSNull org_xmlvm_iphone_NSNull;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNull 7

void __INIT_org_xmlvm_iphone_NSNull();
void __INIT_IMPL_org_xmlvm_iphone_NSNull();
void __DELETE_org_xmlvm_iphone_NSNull(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNull(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNull();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNull();
JAVA_OBJECT org_xmlvm_iphone_NSNull_GET_singleton();
void org_xmlvm_iphone_NSNull_PUT_singleton(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSNull_Null__();
void org_xmlvm_iphone_NSNull___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNull___CLINIT_();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSNull \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSNull \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
