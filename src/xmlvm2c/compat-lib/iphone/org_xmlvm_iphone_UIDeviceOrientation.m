
#include "org_xmlvm_iphone_UIDeviceOrientation.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIDeviceOrientation __CLASS_org_xmlvm_iphone_UIDeviceOrientation = {
    0, // classInitialized
    "org.xmlvm.iphone.UIDeviceOrientation", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Unknown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Portrait;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_PortraitUpsideDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceDown;

void __INIT_org_xmlvm_iphone_UIDeviceOrientation()
{
    __CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIDeviceOrientation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceOrientation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIDeviceOrientation.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIDeviceOrientation.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIDeviceOrientation.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Unknown = 0;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Portrait = 1;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_PortraitUpsideDown = 2;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeLeft = 3;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeRight = 4;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceUp = 5;
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceDown = 6;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDeviceOrientation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDeviceOrientation()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    org_xmlvm_iphone_UIDeviceOrientation* me = (org_xmlvm_iphone_UIDeviceOrientation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDeviceOrientation));
    me->__class = &__CLASS_org_xmlvm_iphone_UIDeviceOrientation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDeviceOrientation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceOrientation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDeviceOrientation();
    org_xmlvm_iphone_UIDeviceOrientation___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UIDeviceOrientation(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDeviceOrientation]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_Unknown()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Unknown;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_Unknown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Unknown = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_Portrait()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Portrait;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_Portrait(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_Portrait = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_PortraitUpsideDown()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_PortraitUpsideDown;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_PortraitUpsideDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_PortraitUpsideDown = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_LandscapeLeft()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeLeft;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_LandscapeLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_LandscapeRight()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeRight;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_LandscapeRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_LandscapeRight = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_FaceUp()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceUp;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_FaceUp(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceUp = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_FaceDown()
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceDown;
}

void org_xmlvm_iphone_UIDeviceOrientation_PUT_FaceDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceOrientation();
    _STATIC_org_xmlvm_iphone_UIDeviceOrientation_FaceDown = v;
}

void org_xmlvm_iphone_UIDeviceOrientation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDeviceOrientation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

