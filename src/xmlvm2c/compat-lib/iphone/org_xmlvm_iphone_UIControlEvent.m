
#include "org_xmlvm_iphone_UIControlEvent.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIControlEvent __CLASS_org_xmlvm_iphone_UIControlEvent = {
    0, // classInitialized
    "org.xmlvm.iphone.UIControlEvent", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents;

void __INIT_org_xmlvm_iphone_UIControlEvent()
{
    __CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIControlEvent.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIControlEvent.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIControlEvent.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIControlEvent.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown = 1;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat = 2;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside = 4;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside = 8;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter = 16;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit = 32;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside = 64;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside = 128;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel = 256;
    _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged = 4096;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin = 65536;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged = 131072;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd = 262144;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit = 524288;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents = 4095;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents = 983040;
    _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved = 251658240;
    _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved = -268435456;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents = -1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIControlEvent(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlEvent()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    org_xmlvm_iphone_UIControlEvent* me = (org_xmlvm_iphone_UIControlEvent*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlEvent));
    me->__class = &__CLASS_org_xmlvm_iphone_UIControlEvent;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIControlEvent();
    org_xmlvm_iphone_UIControlEvent___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDown()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDownRepeat()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDownRepeat(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragInside()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragInside(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragOutside()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragOutside(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragEnter()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragEnter(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragExit()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragExit(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchUpInside()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchUpInside(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchUpOutside()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchUpOutside(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchCancel()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchCancel(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_ValueChanged()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged;
}

void org_xmlvm_iphone_UIControlEvent_PUT_ValueChanged(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidBegin()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidBegin(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingChanged()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingChanged(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidEnd()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidEnd(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidEndOnExit()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidEndOnExit(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllTouchEvents()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllTouchEvents(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllEditingEvents()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllEditingEvents(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_ApplicationReserved()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved;
}

void org_xmlvm_iphone_UIControlEvent_PUT_ApplicationReserved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_SystemReserved()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved;
}

void org_xmlvm_iphone_UIControlEvent_PUT_SystemReserved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllEvents()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllEvents(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents = v;
}

void org_xmlvm_iphone_UIControlEvent___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControlEvent___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

