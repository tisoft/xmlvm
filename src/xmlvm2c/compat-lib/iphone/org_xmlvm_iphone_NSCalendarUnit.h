#ifndef __ORG_XMLVM_IPHONE_NSCALENDARUNIT__
#define __ORG_XMLVM_IPHONE_NSCALENDARUNIT__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.NSCalendarUnit
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSCalendarUnit, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSCalendarUnit)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendarUnit
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendarUnit \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendarUnit \
    } org_xmlvm_iphone_NSCalendarUnit

struct org_xmlvm_iphone_NSCalendarUnit {
    __TIB_DEFINITION_org_xmlvm_iphone_NSCalendarUnit* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSCalendarUnit;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendarUnit
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendarUnit
typedef struct org_xmlvm_iphone_NSCalendarUnit org_xmlvm_iphone_NSCalendarUnit;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSCalendarUnit 6

void __INIT_org_xmlvm_iphone_NSCalendarUnit();
void __INIT_IMPL_org_xmlvm_iphone_NSCalendarUnit();
void __DELETE_org_xmlvm_iphone_NSCalendarUnit(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSCalendarUnit(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendarUnit();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendarUnit();
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Era();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Era(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Year();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Year(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Month();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Month(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Day();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Day(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Hour();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Hour(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Minute();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Minute(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Second();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Second(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Week();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Week(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Weekday();
void org_xmlvm_iphone_NSCalendarUnit_PUT_Weekday(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_WeekdayOrdinal();
void org_xmlvm_iphone_NSCalendarUnit_PUT_WeekdayOrdinal(JAVA_INT v);

#endif
