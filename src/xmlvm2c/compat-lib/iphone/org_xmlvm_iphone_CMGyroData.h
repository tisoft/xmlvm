#ifndef __ORG_XMLVM_IPHONE_CMGYRODATA__
#define __ORG_XMLVM_IPHONE_CMGYRODATA__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CMLogItem.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMRotationRate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMRotationRate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CMRotationRate)
#endif
// Class declarations for org.xmlvm.iphone.CMGyroData
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CMGyroData, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CMGyroData)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMGyroData
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CMGyroData \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CMLogItem; \
    struct { \
        JAVA_OBJECT rotationRate_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMGyroData \
    } org_xmlvm_iphone_CMGyroData

struct org_xmlvm_iphone_CMGyroData {
    __TIB_DEFINITION_org_xmlvm_iphone_CMGyroData* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CMGyroData;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroData
typedef struct org_xmlvm_iphone_CMGyroData org_xmlvm_iphone_CMGyroData;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CMGyroData 7

void __INIT_org_xmlvm_iphone_CMGyroData();
void __INIT_IMPL_org_xmlvm_iphone_CMGyroData();
void __DELETE_org_xmlvm_iphone_CMGyroData(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMGyroData(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CMGyroData();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMGyroData();
void org_xmlvm_iphone_CMGyroData___INIT____org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CMGyroData_rotationRate__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CMGyroData \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CMLogItem \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CMGyroData \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CMLogItem \


#endif
