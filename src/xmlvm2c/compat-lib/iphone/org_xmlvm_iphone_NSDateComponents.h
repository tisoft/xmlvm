#ifndef __ORG_XMLVM_IPHONE_NSDATECOMPONENTS__
#define __ORG_XMLVM_IPHONE_NSDATECOMPONENTS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSDateComponents
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSDateComponents, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSDateComponents)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDateComponents;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDateComponents_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDateComponents_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDateComponents_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDateComponents
//XMLVM_END_DECLARATIONS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSDateComponents 7

void __INIT_org_xmlvm_iphone_NSDateComponents();
void __INIT_IMPL_org_xmlvm_iphone_NSDateComponents();
void __DELETE_org_xmlvm_iphone_NSDateComponents(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDateComponents(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDateComponents();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDateComponents();
JAVA_INT org_xmlvm_iphone_NSDateComponents_GET_Wrap();
void org_xmlvm_iphone_NSDateComponents_PUT_Wrap(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSDateComponents_era__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_year__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_month__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_day__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_hour__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_minute__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_second__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_week__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_weekday__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSDateComponents_setEra___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setYear___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setMonth___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setDay___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setHour___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setMinute___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setSecond___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setWeek___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setWeekday___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int(JAVA_OBJECT me, JAVA_INT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSDateComponents \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSDateComponents \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
