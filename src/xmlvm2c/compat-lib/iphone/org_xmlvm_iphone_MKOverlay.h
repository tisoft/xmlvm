#ifndef __ORG_XMLVM_IPHONE_MKOVERLAY__
#define __ORG_XMLVM_IPHONE_MKOVERLAY__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_MKAnnotation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocationCoordinate2D)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_MKMapRect)
#endif
// Class declarations for org.xmlvm.iphone.MKOverlay
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKOverlay, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MKOverlay)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKOverlay
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKOverlay \
    __INSTANCE_FIELDS_org_xmlvm_iphone_MKAnnotation; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKOverlay \
    } org_xmlvm_iphone_MKOverlay

struct org_xmlvm_iphone_MKOverlay {
    __TIB_DEFINITION_org_xmlvm_iphone_MKOverlay* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MKOverlay;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKOverlay
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKOverlay
typedef struct org_xmlvm_iphone_MKOverlay org_xmlvm_iphone_MKOverlay;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKOverlay 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKOverlay_getBoundingMapRect__ 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKOverlay_getCoordinate__ 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKOverlay_intersectsMapRect___org_xmlvm_iphone_MKMapRect 11

void __INIT_org_xmlvm_iphone_MKOverlay();
void __INIT_IMPL_org_xmlvm_iphone_MKOverlay();
void __DELETE_org_xmlvm_iphone_MKOverlay(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKOverlay(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKOverlay();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKOverlay();
void org_xmlvm_iphone_MKOverlay___INIT___(JAVA_OBJECT me);
// Vtable index: 10
JAVA_OBJECT org_xmlvm_iphone_MKOverlay_getBoundingMapRect__(JAVA_OBJECT me);
// Vtable index: 7
JAVA_OBJECT org_xmlvm_iphone_MKOverlay_getCoordinate__(JAVA_OBJECT me);
// Vtable index: 11
JAVA_BOOLEAN org_xmlvm_iphone_MKOverlay_intersectsMapRect___org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_MKOverlay \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_MKAnnotation \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_MKOverlay \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_MKAnnotation \


#endif
