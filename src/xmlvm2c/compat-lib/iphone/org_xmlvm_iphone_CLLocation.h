#ifndef __ORG_XMLVM_IPHONE_CLLOCATION__
#define __ORG_XMLVM_IPHONE_CLLOCATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocation)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CLLocationCoordinate2D)
#endif
// Class declarations for org.xmlvm.iphone.CLLocation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLLocation, 22)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocation \
    } org_xmlvm_iphone_CLLocation

struct org_xmlvm_iphone_CLLocation {
    __TIB_DEFINITION_org_xmlvm_iphone_CLLocation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocation
typedef struct org_xmlvm_iphone_CLLocation org_xmlvm_iphone_CLLocation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLLocation 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getAltitude__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getCoordinate__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getCourse__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getSpeed__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getTimestamp__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_getVerticalAccuracy__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation 21

void __INIT_org_xmlvm_iphone_CLLocation();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocation();
void org_xmlvm_iphone_CLLocation___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);
void org_xmlvm_iphone_CLLocation___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3, JAVA_DOUBLE n4, JAVA_OBJECT n5);
// Vtable index: 14
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getAltitude__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_CLLocation_getCoordinate__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getCourse__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getSpeed__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_OBJECT org_xmlvm_iphone_CLLocation_getTimestamp__(JAVA_OBJECT me);
// Vtable index: 20
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getVerticalAccuracy__(JAVA_OBJECT me);
// Vtable index: 21
JAVA_DOUBLE org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
