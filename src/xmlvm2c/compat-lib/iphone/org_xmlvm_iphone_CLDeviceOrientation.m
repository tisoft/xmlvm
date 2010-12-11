
#include "org_xmlvm_iphone_CLDeviceOrientation.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLDeviceOrientation __CLASS_org_xmlvm_iphone_CLDeviceOrientation = {
    0, // classInitialized
    "org.xmlvm.iphone.CLDeviceOrientation", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown;

void __INIT_org_xmlvm_iphone_CLDeviceOrientation()
{
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLDeviceOrientation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLDeviceOrientation.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown = 0;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait = 1;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown = 2;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft = 3;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight = 4;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp = 5;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown = 6;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLDeviceOrientation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDeviceOrientation()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    org_xmlvm_iphone_CLDeviceOrientation* me = (org_xmlvm_iphone_CLDeviceOrientation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLDeviceOrientation));
    me->__class = &__CLASS_org_xmlvm_iphone_CLDeviceOrientation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDeviceOrientation()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Unknown()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_Unknown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Portrait()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_Portrait(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_PortraitUpsideDown()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_PortraitUpsideDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeLeft()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeRight()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceUp()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceUp(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceDown()
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown = v;
}

