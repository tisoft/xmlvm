#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UISwitch.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UISwitch __CLASS_org_xmlvm_iphone_UISwitch = {
    0, // classInitialized
    "org.xmlvm.iphone.UISwitch", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;

void __INIT_org_xmlvm_iphone_UISwitch()
{
    __CLASS_org_xmlvm_iphone_UISwitch.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __CLASS_org_xmlvm_iphone_UISwitch.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISwitch;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UISwitch.vtable, __CLASS_org_xmlvm_iphone_UIControl.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UISwitch.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_setOn___boolean;
    __CLASS_org_xmlvm_iphone_UISwitch.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_isOn__;
    __CLASS_org_xmlvm_iphone_UISwitch.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect;
    __CLASS_org_xmlvm_iphone_UISwitch.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UISwitch.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UISwitch.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = 94.0;
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = 27.0;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISwitch()
{
    if (!__CLASS_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    org_xmlvm_iphone_UISwitch* me = (org_xmlvm_iphone_UISwitch*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISwitch));
    me->__class = &__CLASS_org_xmlvm_iphone_UISwitch;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISwitch()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISwitch();
    org_xmlvm_iphone_UISwitch___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UISwitch(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonWidth()
{
    if (!__CLASS_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonWidth(JAVA_FLOAT v)
{
    if (!__CLASS_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = v;
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonHeight()
{
    if (!__CLASS_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonHeight(JAVA_FLOAT v)
{
    if (!__CLASS_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = v;
}

void org_xmlvm_iphone_UISwitch___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setOn___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setOn___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISwitch_isOn__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_isOn__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

