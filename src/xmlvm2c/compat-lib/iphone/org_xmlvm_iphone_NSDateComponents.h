#ifndef __ORG_XMLVM_IPHONE_NSDATECOMPONENTS__
#define __ORG_XMLVM_IPHONE_NSDATECOMPONENTS__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSDateComponents
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSDateComponents, 34)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDateComponents
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSDateComponents \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDateComponents \
    } org_xmlvm_iphone_NSDateComponents

struct org_xmlvm_iphone_NSDateComponents {
    __TIB_DEFINITION_org_xmlvm_iphone_NSDateComponents* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSDateComponents;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDateComponents
typedef struct org_xmlvm_iphone_NSDateComponents org_xmlvm_iphone_NSDateComponents;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSDateComponents 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_era__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_year__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_month__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_day__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_hour__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_minute__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_second__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_week__ 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_weekday__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__ 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setEra___int 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setYear___int 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setMonth___int 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setDay___int 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setHour___int 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setMinute___int 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setSecond___int 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setWeek___int 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setWeekday___int 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int 33

void __INIT_org_xmlvm_iphone_NSDateComponents();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDateComponents();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDateComponents();
JAVA_INT org_xmlvm_iphone_NSDateComponents_GET_Wrap();
void org_xmlvm_iphone_NSDateComponents_PUT_Wrap(JAVA_INT v);
// Vtable index: 14
JAVA_INT org_xmlvm_iphone_NSDateComponents_era__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_NSDateComponents_year__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_INT org_xmlvm_iphone_NSDateComponents_month__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_INT org_xmlvm_iphone_NSDateComponents_day__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_INT org_xmlvm_iphone_NSDateComponents_hour__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_INT org_xmlvm_iphone_NSDateComponents_minute__(JAVA_OBJECT me);
// Vtable index: 20
JAVA_INT org_xmlvm_iphone_NSDateComponents_second__(JAVA_OBJECT me);
// Vtable index: 21
JAVA_INT org_xmlvm_iphone_NSDateComponents_week__(JAVA_OBJECT me);
// Vtable index: 22
JAVA_INT org_xmlvm_iphone_NSDateComponents_weekday__(JAVA_OBJECT me);
// Vtable index: 23
JAVA_INT org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__(JAVA_OBJECT me);
// Vtable index: 24
void org_xmlvm_iphone_NSDateComponents_setEra___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 25
void org_xmlvm_iphone_NSDateComponents_setYear___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 26
void org_xmlvm_iphone_NSDateComponents_setMonth___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 27
void org_xmlvm_iphone_NSDateComponents_setDay___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 28
void org_xmlvm_iphone_NSDateComponents_setHour___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 29
void org_xmlvm_iphone_NSDateComponents_setMinute___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 30
void org_xmlvm_iphone_NSDateComponents_setSecond___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 31
void org_xmlvm_iphone_NSDateComponents_setWeek___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 32
void org_xmlvm_iphone_NSDateComponents_setWeekday___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 33
void org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
