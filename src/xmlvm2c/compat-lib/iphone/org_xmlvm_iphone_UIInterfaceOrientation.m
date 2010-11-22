
#include "org_xmlvm_iphone_UIInterfaceOrientation.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIInterfaceOrientation __CLASS_org_xmlvm_iphone_UIInterfaceOrientation = {
    0, // classInitialized
    "org.xmlvm.iphone.UIInterfaceOrientation", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight;

void __INIT_org_xmlvm_iphone_UIInterfaceOrientation()
{
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIInterfaceOrientation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait = 1;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown = 2;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft = 3;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight = 4;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIInterfaceOrientation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIInterfaceOrientation()
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    org_xmlvm_iphone_UIInterfaceOrientation* me = (org_xmlvm_iphone_UIInterfaceOrientation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIInterfaceOrientation));
    me->__class = &__CLASS_org_xmlvm_iphone_UIInterfaceOrientation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIInterfaceOrientation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIInterfaceOrientation();
    org_xmlvm_iphone_UIInterfaceOrientation___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_Portrait()
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_Portrait(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_PortraitUpsideDown()
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_PortraitUpsideDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeLeft()
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeRight()
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight = v;
}

void org_xmlvm_iphone_UIInterfaceOrientation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIInterfaceOrientation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

