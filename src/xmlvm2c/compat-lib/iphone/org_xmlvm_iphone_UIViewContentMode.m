
#include "org_xmlvm_iphone_UIViewContentMode.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIViewContentMode __CLASS_org_xmlvm_iphone_UIViewContentMode = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewContentMode", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Center;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Top;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Left;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Right;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight;

void __INIT_org_xmlvm_iphone_UIViewContentMode()
{
    __CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIViewContentMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewContentMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIViewContentMode.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIViewContentMode.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIViewContentMode.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill = 0;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit = 1;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill = 2;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw = 3;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Center = 4;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Top = 5;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom = 6;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Left = 7;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Right = 8;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft = 9;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight = 10;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft = 11;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight = 12;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIViewContentMode(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewContentMode()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    org_xmlvm_iphone_UIViewContentMode* me = (org_xmlvm_iphone_UIViewContentMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewContentMode));
    me->__class = &__CLASS_org_xmlvm_iphone_UIViewContentMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIViewContentMode);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewContentMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewContentMode();
    org_xmlvm_iphone_UIViewContentMode___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleToFill()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleToFill(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFit()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFit(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFill()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFill(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Redraw()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Redraw(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Center()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Center;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Center(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Center = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Top()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Top;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Top(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Top = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Bottom()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Bottom(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Left()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Left;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Left(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Left = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Right()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Right;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Right(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Right = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopLeft()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_TopLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopRight()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_TopRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomLeft()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_BottomLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomRight()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_BottomRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight = v;
}

void org_xmlvm_iphone_UIViewContentMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewContentMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

