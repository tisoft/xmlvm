
#include "org_xmlvm_iphone_UIDataDetectorType.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIDataDetectorType __CLASS_org_xmlvm_iphone_UIDataDetectorType = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDataDetectorType", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;

void __INIT_org_xmlvm_iphone_UIDataDetectorType()
{
    __CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIDataDetectorType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIDataDetectorType.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIDataDetectorType.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIDataDetectorType.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = 1;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = 2;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = 4;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = 8;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_None = 0;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_All = 2147483647;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIDataDetectorType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDataDetectorType()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    org_xmlvm_iphone_UIDataDetectorType* me = (org_xmlvm_iphone_UIDataDetectorType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDataDetectorType));
    me->__class = &__CLASS_org_xmlvm_iphone_UIDataDetectorType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDataDetectorType();
    org_xmlvm_iphone_UIDataDetectorType___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_PhoneNumber()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_PhoneNumber(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Link()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Link(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Address()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Address(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_CalendarEvent()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_CalendarEvent(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_None(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_None = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_All()
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_All(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_All = v;
}

void org_xmlvm_iphone_UIDataDetectorType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDataDetectorType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

