#ifndef __ORG_XMLVM_IPHONE_NSCALENDAR__
#define __ORG_XMLVM_IPHONE_NSCALENDAR__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSCalendar)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDateComponents)
#endif
// Class declarations for org.xmlvm.iphone.NSCalendar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSCalendar, 18)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendar
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendar \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendar \
    } org_xmlvm_iphone_NSCalendar

struct org_xmlvm_iphone_NSCalendar {
    __TIB_DEFINITION_org_xmlvm_iphone_NSCalendar* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendar;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
typedef struct org_xmlvm_iphone_NSCalendar org_xmlvm_iphone_NSCalendar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSCalendar 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents 17

void __INIT_org_xmlvm_iphone_NSCalendar();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar();
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_currentCalendar__();
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
