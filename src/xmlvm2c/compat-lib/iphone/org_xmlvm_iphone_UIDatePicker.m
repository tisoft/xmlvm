#include "org_xmlvm_iphone_NSTimeZone.h"
#include "org_xmlvm_iphone_NSLocale.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_NSCalendar.h"

#include "org_xmlvm_iphone_UIDatePicker.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIDatePicker __CLASS_org_xmlvm_iphone_UIDatePicker = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDatePicker", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIDatePicker()
{
    __CLASS_org_xmlvm_iphone_UIDatePicker.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __CLASS_org_xmlvm_iphone_UIDatePicker.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDatePicker;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIDatePicker.vtable, __CLASS_org_xmlvm_iphone_UIControl.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getCalendar__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getCountDownDuration__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getDate__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getDatePickerMode__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getLocale__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMaximumDate__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMinimumDate__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMinuteInterval__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getTimeZone__;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone;
    __CLASS_org_xmlvm_iphone_UIDatePicker.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIDatePicker.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIDatePicker.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDatePicker]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIDatePicker(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDatePicker]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDatePicker()
{
    if (!__CLASS_org_xmlvm_iphone_UIDatePicker.classInitialized) __INIT_org_xmlvm_iphone_UIDatePicker();
    org_xmlvm_iphone_UIDatePicker* me = (org_xmlvm_iphone_UIDatePicker*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDatePicker));
    me->__class = &__CLASS_org_xmlvm_iphone_UIDatePicker;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDatePicker]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDatePicker()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDatePicker();
    org_xmlvm_iphone_UIDatePicker___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIDatePicker___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getCalendar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getCalendar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIDatePicker_getCountDownDuration__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getCountDownDuration__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDatePicker_getDatePickerMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getDatePickerMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getLocale__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getLocale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getMaximumDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getMaximumDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getMinimumDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getMinimumDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDatePicker_getMinuteInterval__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getMinuteInterval__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDatePicker_getTimeZone__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_getTimeZone__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

