
#include "org_xmlvm_iphone_NSDateComponents.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSDateComponents __CLASS_org_xmlvm_iphone_NSDateComponents = {
    0, // classInitialized
    "org.xmlvm.iphone.NSDateComponents", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSDateComponents_Wrap;

void __INIT_org_xmlvm_iphone_NSDateComponents()
{
    __CLASS_org_xmlvm_iphone_NSDateComponents.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSDateComponents.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSDateComponents;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSDateComponents.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_era__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_year__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_month__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_day__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_hour__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_minute__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_second__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_week__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_weekday__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setEra___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setYear___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setMonth___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setDay___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setHour___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setMinute___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setSecond___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setWeek___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setWeekday___int;
    __CLASS_org_xmlvm_iphone_NSDateComponents.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSDateComponents.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSDateComponents.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_NSDateComponents_Wrap = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSDateComponents]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSDateComponents(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSDateComponents]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDateComponents()
{
    if (!__CLASS_org_xmlvm_iphone_NSDateComponents.classInitialized) __INIT_org_xmlvm_iphone_NSDateComponents();
    org_xmlvm_iphone_NSDateComponents* me = (org_xmlvm_iphone_NSDateComponents*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSDateComponents));
    me->__class = &__CLASS_org_xmlvm_iphone_NSDateComponents;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSDateComponents]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSDateComponents);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDateComponents()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_GET_Wrap()
{
    if (!__CLASS_org_xmlvm_iphone_NSDateComponents.classInitialized) __INIT_org_xmlvm_iphone_NSDateComponents();
    return _STATIC_org_xmlvm_iphone_NSDateComponents_Wrap;
}

void org_xmlvm_iphone_NSDateComponents_PUT_Wrap(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_NSDateComponents.classInitialized) __INIT_org_xmlvm_iphone_NSDateComponents();
    _STATIC_org_xmlvm_iphone_NSDateComponents_Wrap = v;
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_era__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_era__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_year__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_year__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_month__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_month__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_day__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_day__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_hour__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_hour__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_minute__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_minute__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_second__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_second__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_week__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_week__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_weekday__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_weekday__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_weekdayOrdinal__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setEra___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setEra___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setYear___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setYear___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setMonth___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setMonth___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setDay___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setDay___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setHour___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setHour___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setMinute___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setMinute___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setSecond___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setSecond___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setWeek___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setWeek___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setWeekday___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setWeekday___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDateComponents_setWeekdayOrdinal___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

