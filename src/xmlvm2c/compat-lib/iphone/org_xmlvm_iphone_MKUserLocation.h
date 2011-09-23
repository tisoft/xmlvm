#ifndef __ORG_XMLVM_IPHONE_MKUSERLOCATION__
#define __ORG_XMLVM_IPHONE_MKUSERLOCATION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_MKAnnotation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocation)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocationCoordinate2D)
#endif
// Class declarations for org.xmlvm.iphone.MKUserLocation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKUserLocation, 10, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MKUserLocation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_MKAnnotation; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation \
    } org_xmlvm_iphone_MKUserLocation

struct org_xmlvm_iphone_MKUserLocation {
    __TIB_DEFINITION_org_xmlvm_iphone_MKUserLocation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKUserLocation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKUserLocation
typedef struct org_xmlvm_iphone_MKUserLocation org_xmlvm_iphone_MKUserLocation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKUserLocation 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getCoordinate__ 7

void __INIT_org_xmlvm_iphone_MKUserLocation();
void __INIT_IMPL_org_xmlvm_iphone_MKUserLocation();
void __DELETE_org_xmlvm_iphone_MKUserLocation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKUserLocation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation();
void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me);
void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me);
void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 7
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getCoordinate__(JAVA_OBJECT me);

#endif
