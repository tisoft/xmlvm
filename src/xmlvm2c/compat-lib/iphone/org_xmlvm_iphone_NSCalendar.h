#ifndef __ORG_XMLVM_IPHONE_NSCALENDAR__
#define __ORG_XMLVM_IPHONE_NSCALENDAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDateComponents)
#endif
// Class declarations for org.xmlvm.iphone.NSCalendar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSCalendar, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSCalendar)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar_1ARRAY;

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSCalendar 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents 12

void __INIT_org_xmlvm_iphone_NSCalendar();
void __INIT_IMPL_org_xmlvm_iphone_NSCalendar();
void __DELETE_org_xmlvm_iphone_NSCalendar(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSCalendar(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar();
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_currentCalendar__();
// Vtable index: 9
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2);
// Vtable index: 10
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3);
// Vtable index: 12
JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
