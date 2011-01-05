#ifndef __ORG_XMLVM_IPHONE_MKUSERLOCATION__
#define __ORG_XMLVM_IPHONE_MKUSERLOCATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocation)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.MKUserLocation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKUserLocation, 20)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKUserLocation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKUserLocation 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getLocation__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_isUpdating__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getSubtitle__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_getTitle__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String 19

void __INIT_org_xmlvm_iphone_MKUserLocation();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation();
void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
