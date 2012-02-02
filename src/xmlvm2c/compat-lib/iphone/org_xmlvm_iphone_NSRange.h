#ifndef __ORG_XMLVM_IPHONE_NSRANGE__
#define __ORG_XMLVM_IPHONE_NSRANGE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSRange
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSRange, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSRange)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSRange

JAVA_OBJECT fromNSRange(NSRange range);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSRange \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_INT location_; \
        JAVA_INT length_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSRange \
    } org_xmlvm_iphone_NSRange

struct org_xmlvm_iphone_NSRange {
    __TIB_DEFINITION_org_xmlvm_iphone_NSRange* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSRange;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRange
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRange
typedef struct org_xmlvm_iphone_NSRange org_xmlvm_iphone_NSRange;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSRange 7

void __INIT_org_xmlvm_iphone_NSRange();
void __INIT_IMPL_org_xmlvm_iphone_NSRange();
void __DELETE_org_xmlvm_iphone_NSRange(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRange(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSRange();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSRange();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSRange \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSRange \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
