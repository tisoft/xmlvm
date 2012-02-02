#ifndef __ORG_XMLVM_IPHONE_UIACCELERATION__
#define __ORG_XMLVM_IPHONE_UIACCELERATION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIAcceleration
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAcceleration, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIAcceleration)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAcceleration \
    JAVA_DOUBLE x; \
    JAVA_DOUBLE y; \
    JAVA_DOUBLE z;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIAcceleration \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAcceleration \
    } org_xmlvm_iphone_UIAcceleration

struct org_xmlvm_iphone_UIAcceleration {
    __TIB_DEFINITION_org_xmlvm_iphone_UIAcceleration* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIAcceleration;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAcceleration
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAcceleration
typedef struct org_xmlvm_iphone_UIAcceleration org_xmlvm_iphone_UIAcceleration;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAcceleration 7

void __INIT_org_xmlvm_iphone_UIAcceleration();
void __INIT_IMPL_org_xmlvm_iphone_UIAcceleration();
void __DELETE_org_xmlvm_iphone_UIAcceleration(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAcceleration();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAcceleration();
void org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3);
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_x__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_y__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_z__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIAcceleration \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIAcceleration \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
