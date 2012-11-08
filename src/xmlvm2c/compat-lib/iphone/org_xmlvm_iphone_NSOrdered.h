#ifndef __ORG_XMLVM_IPHONE_NSORDERED__
#define __ORG_XMLVM_IPHONE_NSORDERED__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSOrdered
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSOrdered, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSOrdered)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSOrdered
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSOrdered \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSOrdered \
    } org_xmlvm_iphone_NSOrdered

struct org_xmlvm_iphone_NSOrdered {
    __TIB_DEFINITION_org_xmlvm_iphone_NSOrdered* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSOrdered;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOrdered
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOrdered
typedef struct org_xmlvm_iphone_NSOrdered org_xmlvm_iphone_NSOrdered;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSOrdered 6

void __INIT_org_xmlvm_iphone_NSOrdered();
void __INIT_IMPL_org_xmlvm_iphone_NSOrdered();
void __DELETE_org_xmlvm_iphone_NSOrdered(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOrdered(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSOrdered();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSOrdered();
JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Ascending();
void org_xmlvm_iphone_NSOrdered_PUT_Ascending(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Same();
void org_xmlvm_iphone_NSOrdered_PUT_Same(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Descending();
void org_xmlvm_iphone_NSOrdered_PUT_Descending(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSOrdered \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSOrdered \


#endif
