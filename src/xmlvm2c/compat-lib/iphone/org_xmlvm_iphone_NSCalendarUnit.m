
#include "org_xmlvm_iphone_NSCalendarUnit.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSCalendarUnit __TIB_org_xmlvm_iphone_NSCalendarUnit = {
    0, // classInitialized
    "org.xmlvm.iphone.NSCalendarUnit", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendarUnit_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Era;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Year;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Month;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Day;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Hour;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Minute;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Second;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Week;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_Weekday;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSCalendarUnit_WeekdayOrdinal;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Era",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Era,
    "",
    JAVA_NULL},
    {"Year",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Year,
    "",
    JAVA_NULL},
    {"Month",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Month,
    "",
    JAVA_NULL},
    {"Day",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Day,
    "",
    JAVA_NULL},
    {"Hour",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Hour,
    "",
    JAVA_NULL},
    {"Minute",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Minute,
    "",
    JAVA_NULL},
    {"Second",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Second,
    "",
    JAVA_NULL},
    {"Week",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Week,
    "",
    JAVA_NULL},
    {"Weekday",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_Weekday,
    "",
    JAVA_NULL},
    {"WeekdayOrdinal",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSCalendarUnit_WeekdayOrdinal,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSCalendarUnit()
{
    __TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSCalendarUnit.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSCalendarUnit;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSCalendarUnit.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSCalendarUnit.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSCalendarUnit.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Era = 2;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Year = 4;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Month = 8;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Day = 16;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Hour = 32;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Minute = 64;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Second = 128;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Week = 256;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Weekday = 512;
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_WeekdayOrdinal = 1024;

    __TIB_org_xmlvm_iphone_NSCalendarUnit.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSCalendarUnit.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSCalendarUnit = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSCalendarUnit);
    __TIB_org_xmlvm_iphone_NSCalendarUnit.clazz = __CLASS_org_xmlvm_iphone_NSCalendarUnit;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSCalendarUnit]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSCalendarUnit(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSCalendarUnit]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendarUnit()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    org_xmlvm_iphone_NSCalendarUnit* me = (org_xmlvm_iphone_NSCalendarUnit*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSCalendarUnit));
    me->tib = &__TIB_org_xmlvm_iphone_NSCalendarUnit;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSCalendarUnit]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendarUnit()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSCalendarUnit();
    org_xmlvm_iphone_NSCalendarUnit___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Era()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Era;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Era(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Era = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Year()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Year;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Year(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Year = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Month()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Month;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Month(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Month = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Day()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Day;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Day(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Day = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Hour()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Hour;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Hour(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Hour = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Minute()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Minute;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Minute(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Minute = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Second()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Second;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Second(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Second = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Week()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Week;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Week(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Week = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_Weekday()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_Weekday;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_Weekday(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_Weekday = v;
}

JAVA_INT org_xmlvm_iphone_NSCalendarUnit_GET_WeekdayOrdinal()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    return _STATIC_org_xmlvm_iphone_NSCalendarUnit_WeekdayOrdinal;
}

void org_xmlvm_iphone_NSCalendarUnit_PUT_WeekdayOrdinal(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSCalendarUnit.classInitialized) __INIT_org_xmlvm_iphone_NSCalendarUnit();
    _STATIC_org_xmlvm_iphone_NSCalendarUnit_WeekdayOrdinal = v;
}

void org_xmlvm_iphone_NSCalendarUnit___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendarUnit___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

