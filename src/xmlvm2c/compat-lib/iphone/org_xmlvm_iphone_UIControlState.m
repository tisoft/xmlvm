
#include "org_xmlvm_iphone_UIControlState.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIControlState __CLASS_org_xmlvm_iphone_UIControlState = {
    0, // classInitialized
    "org.xmlvm.iphone.UIControlState", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Normal;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Highlighted;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Disabled;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Selected;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Reserved;

void __INIT_org_xmlvm_iphone_UIControlState()
{
    __CLASS_org_xmlvm_iphone_UIControlState.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIControlState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIControlState.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIControlState.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIControlState.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIControlState_Normal = 0;
    _STATIC_org_xmlvm_iphone_UIControlState_Highlighted = 1;
    _STATIC_org_xmlvm_iphone_UIControlState_Disabled = 2;
    _STATIC_org_xmlvm_iphone_UIControlState_Selected = 4;
    _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved = 16711680;
    _STATIC_org_xmlvm_iphone_UIControlState_Reserved = -16777216;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIControlState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlState()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    org_xmlvm_iphone_UIControlState* me = (org_xmlvm_iphone_UIControlState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlState));
    me->__class = &__CLASS_org_xmlvm_iphone_UIControlState;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlState()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIControlState();
    org_xmlvm_iphone_UIControlState___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Normal()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Normal;
}

void org_xmlvm_iphone_UIControlState_PUT_Normal(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Normal = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Highlighted()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Highlighted;
}

void org_xmlvm_iphone_UIControlState_PUT_Highlighted(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Highlighted = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Disabled()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Disabled;
}

void org_xmlvm_iphone_UIControlState_PUT_Disabled(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Disabled = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Selected()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Selected;
}

void org_xmlvm_iphone_UIControlState_PUT_Selected(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Selected = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_ApplicationReserved()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved;
}

void org_xmlvm_iphone_UIControlState_PUT_ApplicationReserved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Reserved()
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Reserved;
}

void org_xmlvm_iphone_UIControlState_PUT_Reserved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Reserved = v;
}

void org_xmlvm_iphone_UIControlState___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControlState___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

