#ifndef __ORG_XMLVM_IPHONE_CMROTATIONRATE__
#define __ORG_XMLVM_IPHONE_CMROTATIONRATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CMRotationRate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CMRotationRate, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CMRotationRate)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMRotationRate
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CMRotationRate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE x_; \
        JAVA_DOUBLE y_; \
        JAVA_DOUBLE z_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMRotationRate \
    } org_xmlvm_iphone_CMRotationRate

struct org_xmlvm_iphone_CMRotationRate {
    __TIB_DEFINITION_org_xmlvm_iphone_CMRotationRate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CMRotationRate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMRotationRate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMRotationRate
typedef struct org_xmlvm_iphone_CMRotationRate org_xmlvm_iphone_CMRotationRate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CMRotationRate 7

void __INIT_org_xmlvm_iphone_CMRotationRate();
void __INIT_IMPL_org_xmlvm_iphone_CMRotationRate();
void __DELETE_org_xmlvm_iphone_CMRotationRate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CMRotationRate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMRotationRate();
void org_xmlvm_iphone_CMRotationRate___INIT____org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_CMRotationRate___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CMRotationRate \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CMRotationRate \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
