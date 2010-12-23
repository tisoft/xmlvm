
#include "org_xmlvm_iphone_UIDatePickerMode.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIDatePickerMode __TIB_org_xmlvm_iphone_UIDatePickerMode = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDatePickerMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer;

void __INIT_org_xmlvm_iphone_UIDatePickerMode()
{
    __TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIDatePickerMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDatePickerMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDatePickerMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIDatePickerMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIDatePickerMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time = 0;
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date = 1;
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime = 2;
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDatePickerMode]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIDatePickerMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDatePickerMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDatePickerMode()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    org_xmlvm_iphone_UIDatePickerMode* me = (org_xmlvm_iphone_UIDatePickerMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDatePickerMode));
    me->tib = &__TIB_org_xmlvm_iphone_UIDatePickerMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDatePickerMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDatePickerMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDatePickerMode();
    org_xmlvm_iphone_UIDatePickerMode___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Time()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_Time(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Date()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_Date(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_DateAndTime()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_DateAndTime(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_CountDownTimer()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_CountDownTimer(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer = v;
}

void org_xmlvm_iphone_UIDatePickerMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDatePickerMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

