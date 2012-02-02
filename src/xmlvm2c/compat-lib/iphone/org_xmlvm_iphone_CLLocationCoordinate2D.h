#ifndef __ORG_XMLVM_IPHONE_CLLOCATIONCOORDINATE2D__
#define __ORG_XMLVM_IPHONE_CLLOCATIONCOORDINATE2D__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CLLocationCoordinate2D
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLLocationCoordinate2D, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CLLocationCoordinate2D)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE latitude_; \
        JAVA_DOUBLE longitude_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D \
    } org_xmlvm_iphone_CLLocationCoordinate2D

struct org_xmlvm_iphone_CLLocationCoordinate2D {
    __TIB_DEFINITION_org_xmlvm_iphone_CLLocationCoordinate2D* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
typedef struct org_xmlvm_iphone_CLLocationCoordinate2D org_xmlvm_iphone_CLLocationCoordinate2D;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLLocationCoordinate2D 7

void __INIT_org_xmlvm_iphone_CLLocationCoordinate2D();
void __INIT_IMPL_org_xmlvm_iphone_CLLocationCoordinate2D();
void __DELETE_org_xmlvm_iphone_CLLocationCoordinate2D(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationCoordinate2D();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationCoordinate2D();
void org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CLLocationCoordinate2D \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CLLocationCoordinate2D \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
