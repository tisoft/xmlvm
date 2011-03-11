#ifndef __ORG_XMLVM_IPHONE_MKUSERLOCATION__
#define __ORG_XMLVM_IPHONE_MKUSERLOCATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_MKAnnotation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKAnnotation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKAnnotation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_MKAnnotation)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.MKUserLocation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKUserLocation, 24)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_ARRAYTYPE;

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKUserLocation 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getLocation__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_isUpdating__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getSubtitle__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getTitle__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getCoordinate__ 14

void __INIT_org_xmlvm_iphone_MKUserLocation();
void __INIT_IMPL_org_xmlvm_iphone_MKUserLocation();
void __DELETE_org_xmlvm_iphone_MKUserLocation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKUserLocation(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation();
void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me);
// Vtable index: 20
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me);
// Vtable index: 21
void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me);
// Vtable index: 23
void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getCoordinate__(JAVA_OBJECT me);

#endif
