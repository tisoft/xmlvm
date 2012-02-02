#ifndef __ORG_XMLVM_IPHONE_CFALLOCATOR__
#define __ORG_XMLVM_IPHONE_CFALLOCATOR__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CFAllocator
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CFAllocator, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CFAllocator)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFAllocator;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFAllocator_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFAllocator_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFAllocator_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFAllocator
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CFAllocator \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFAllocator \
    } org_xmlvm_iphone_CFAllocator

struct org_xmlvm_iphone_CFAllocator {
    __TIB_DEFINITION_org_xmlvm_iphone_CFAllocator* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CFAllocator;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFAllocator
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFAllocator
typedef struct org_xmlvm_iphone_CFAllocator org_xmlvm_iphone_CFAllocator;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CFAllocator 6

void __INIT_org_xmlvm_iphone_CFAllocator();
void __INIT_IMPL_org_xmlvm_iphone_CFAllocator();
void __DELETE_org_xmlvm_iphone_CFAllocator(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFAllocator(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CFAllocator();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFAllocator();
void org_xmlvm_iphone_CFAllocator___INIT___(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFAllocator \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFAllocator \


#endif
