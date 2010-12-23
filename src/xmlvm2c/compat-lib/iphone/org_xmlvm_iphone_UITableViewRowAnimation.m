
#include "org_xmlvm_iphone_UITableViewRowAnimation.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewRowAnimation __TIB_org_xmlvm_iphone_UITableViewRowAnimation = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableViewRowAnimation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Fade;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Right;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Left;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Top;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Bottom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_None;

void __INIT_org_xmlvm_iphone_UITableViewRowAnimation()
{
    __TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITableViewRowAnimation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewRowAnimation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewRowAnimation.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewRowAnimation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewRowAnimation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Fade = 0;
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Right = 1;
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Left = 2;
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Top = 3;
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Bottom = 4;
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_None = 5;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewRowAnimation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewRowAnimation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewRowAnimation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewRowAnimation()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    org_xmlvm_iphone_UITableViewRowAnimation* me = (org_xmlvm_iphone_UITableViewRowAnimation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewRowAnimation));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewRowAnimation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewRowAnimation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewRowAnimation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewRowAnimation();
    org_xmlvm_iphone_UITableViewRowAnimation___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Fade()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Fade;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Fade(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Fade = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Right()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Right;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Right(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Right = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Left()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Left;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Left(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Left = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Top()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Top;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Top(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Top = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Bottom()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Bottom;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Bottom(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_Bottom = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    return _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_None;
}

void org_xmlvm_iphone_UITableViewRowAnimation_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewRowAnimation.classInitialized) __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
    _STATIC_org_xmlvm_iphone_UITableViewRowAnimation_None = v;
}

void org_xmlvm_iphone_UITableViewRowAnimation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewRowAnimation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

