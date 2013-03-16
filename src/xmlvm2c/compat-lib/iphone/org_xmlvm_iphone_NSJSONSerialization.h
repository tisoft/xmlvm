#ifndef __ORG_XMLVM_IPHONE_NSJSONSERIALIZATION__
#define __ORG_XMLVM_IPHONE_NSJSONSERIALIZATION__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSErrorHolder)
#endif
// Class declarations for org.xmlvm.iphone.NSJSONSerialization
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSJSONSerialization, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSJSONSerialization)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONSerialization
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONSerialization \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONSerialization \
    } org_xmlvm_iphone_NSJSONSerialization

struct org_xmlvm_iphone_NSJSONSerialization {
    __TIB_DEFINITION_org_xmlvm_iphone_NSJSONSerialization* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONSerialization;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSJSONSerialization
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSJSONSerialization
typedef struct org_xmlvm_iphone_NSJSONSerialization org_xmlvm_iphone_NSJSONSerialization;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSJSONSerialization 6

void __INIT_org_xmlvm_iphone_NSJSONSerialization();
void __INIT_IMPL_org_xmlvm_iphone_NSJSONSerialization();
void __DELETE_org_xmlvm_iphone_NSJSONSerialization(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONSerialization(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSJSONSerialization();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSJSONSerialization();
void org_xmlvm_iphone_NSJSONSerialization___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSJSONSerialization_JSONObjectWithData___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSJSONSerialization \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSJSONSerialization \


#endif
