#ifndef __ORG_XMLVM_IPHONE_MKCOORDINATEREGION__
#define __ORG_XMLVM_IPHONE_MKCOORDINATEREGION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocationCoordinate2D)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateSpan
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateSpan
XMLVM_FORWARD_DECL(org_xmlvm_iphone_MKCoordinateSpan)
#endif
// Class declarations for org.xmlvm.iphone.MKCoordinateRegion
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKCoordinateRegion, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MKCoordinateRegion)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKCoordinateRegion
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKCoordinateRegion \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT center_; \
        JAVA_OBJECT span_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKCoordinateRegion \
    } org_xmlvm_iphone_MKCoordinateRegion

struct org_xmlvm_iphone_MKCoordinateRegion {
    __TIB_DEFINITION_org_xmlvm_iphone_MKCoordinateRegion* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MKCoordinateRegion;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateRegion
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateRegion
typedef struct org_xmlvm_iphone_MKCoordinateRegion org_xmlvm_iphone_MKCoordinateRegion;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKCoordinateRegion 7

void __INIT_org_xmlvm_iphone_MKCoordinateRegion();
void __INIT_IMPL_org_xmlvm_iphone_MKCoordinateRegion();
void __DELETE_org_xmlvm_iphone_MKCoordinateRegion(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateRegion(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKCoordinateRegion();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateRegion();
void org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_MKCoordinateRegion \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_MKCoordinateRegion \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
