
#include "org_xmlvm_iphone_UIDeviceBatteryState.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIDeviceBatteryState __TIB_org_xmlvm_iphone_UIDeviceBatteryState = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDeviceBatteryState", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full;

void __INIT_org_xmlvm_iphone_UIDeviceBatteryState()
{
    __TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIDeviceBatteryState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceBatteryState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDeviceBatteryState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIDeviceBatteryState.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIDeviceBatteryState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown = 0;
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged = 1;
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging = 2;
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDeviceBatteryState]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIDeviceBatteryState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDeviceBatteryState]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDeviceBatteryState()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    org_xmlvm_iphone_UIDeviceBatteryState* me = (org_xmlvm_iphone_UIDeviceBatteryState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDeviceBatteryState));
    me->tib = &__TIB_org_xmlvm_iphone_UIDeviceBatteryState;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDeviceBatteryState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceBatteryState()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDeviceBatteryState();
    org_xmlvm_iphone_UIDeviceBatteryState___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unknown()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unknown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unplugged()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unplugged(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Charging()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Charging(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Full()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Full(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full = v;
}

void org_xmlvm_iphone_UIDeviceBatteryState___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDeviceBatteryState___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

