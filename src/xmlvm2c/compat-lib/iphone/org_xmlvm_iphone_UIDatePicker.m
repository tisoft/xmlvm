#include "org_xmlvm_iphone_NSTimeZone.h"
#include "org_xmlvm_iphone_NSLocale.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSCalendar.h"

#include "org_xmlvm_iphone_UIDatePicker.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIDatePicker __TIB_org_xmlvm_iphone_UIDatePicker = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDatePicker", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePicker;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePicker_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIDatePicker()
{
    __TIB_org_xmlvm_iphone_UIDatePicker.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UIDatePicker.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDatePicker;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDatePicker.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getCalendar__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setCalendar___org_xmlvm_iphone_NSCalendar;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getCountDownDuration__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setCountDownDuration___double;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getDate__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getDatePickerMode__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDatePickerMode___int;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getLocale__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setLocale___org_xmlvm_iphone_NSLocale;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMaximumDate__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMaximumDate___org_xmlvm_iphone_NSDate;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMinimumDate__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMinimumDate___org_xmlvm_iphone_NSDate;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getMinuteInterval__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setMinuteInterval___int;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_getTimeZone__;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setTimeZone___org_xmlvm_iphone_NSTimeZone;
    __TIB_org_xmlvm_iphone_UIDatePicker.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UIDatePicker_setDate___org_xmlvm_iphone_NSDate_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIDatePicker.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIDatePicker.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIDatePicker.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDatePicker.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIDatePicker = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIDatePicker);
    __TIB_org_xmlvm_iphone_UIDatePicker.clazz = __CLASS_org_xmlvm_iphone_UIDatePicker;

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
    if (!__TIB_org_xmlvm_iphone_UIDatePicker.classInitialized) __INIT_org_xmlvm_iphone_UIDatePicker();
    org_xmlvm_iphone_UIDatePicker* me = (org_xmlvm_iphone_UIDatePicker*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDatePicker));
    me->tib = &__TIB_org_xmlvm_iphone_UIDatePicker;
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

