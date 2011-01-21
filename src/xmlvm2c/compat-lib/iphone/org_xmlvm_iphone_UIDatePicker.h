#ifndef __ORG_XMLVM_IPHONE_UIDATEPICKER__
#define __ORG_XMLVM_IPHONE_UIDATEPICKER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControl)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimeZone
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimeZone
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSTimeZone)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSLocale)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSCalendar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSCalendar)
#endif
// Class declarations for org.xmlvm.iphone.UIDatePicker
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDatePicker, 91)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePicker;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePicker_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePicker
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePicker \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePicker \
    } org_xmlvm_iphone_UIDatePicker

struct org_xmlvm_iphone_UIDatePicker {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDatePicker* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePicker;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDatePicker
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDatePicker
typedef struct org_xmlvm_iphone_UIDatePicker org_xmlvm_iphone_UIDatePicker;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDatePicker 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getCalendar__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getCountDownDuration__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getDate__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getDatePickerMode__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getLocale__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getMaximumDate__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getMinimumDate__ 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getMinuteInterval__ 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_getTimeZone__ 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean 90

void __INIT_org_xmlvm_iphone_UIDatePicker();
void __DELETE_org_xmlvm_iphone_UIDatePicker(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDatePicker();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDatePicker();
void org_xmlvm_iphone_UIDatePicker___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIDatePicker___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getCalendar__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 74
JAVA_DOUBLE org_xmlvm_iphone_UIDatePicker_getCountDownDuration__(JAVA_OBJECT me);
// Vtable index: 75
void org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 76
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getDate__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 78
JAVA_INT org_xmlvm_iphone_UIDatePicker_getDatePickerMode__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 80
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getLocale__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 82
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getMaximumDate__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 84
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getMinimumDate__(JAVA_OBJECT me);
// Vtable index: 85
void org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 86
JAVA_INT org_xmlvm_iphone_UIDatePicker_getMinuteInterval__(JAVA_OBJECT me);
// Vtable index: 87
void org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 88
JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getTimeZone__(JAVA_OBJECT me);
// Vtable index: 89
void org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 90
void org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);

#endif
