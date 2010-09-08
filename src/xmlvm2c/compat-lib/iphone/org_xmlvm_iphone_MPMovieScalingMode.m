
#include "org_xmlvm_iphone_MPMovieScalingMode.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MPMovieScalingMode __CLASS_org_xmlvm_iphone_MPMovieScalingMode = {
    0, // classInitialized
    "org.xmlvm.iphone.MPMovieScalingMode", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieScalingMode_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFit;
static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieScalingMode_Fill;

void __INIT_org_xmlvm_iphone_MPMovieScalingMode()
{
    __CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_MPMovieScalingMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MPMovieScalingMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MPMovieScalingMode.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MPMovieScalingMode.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MPMovieScalingMode.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_None = 0;
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFit = 1;
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFill = 2;
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_Fill = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MPMovieScalingMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMovieScalingMode()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    org_xmlvm_iphone_MPMovieScalingMode* me = (org_xmlvm_iphone_MPMovieScalingMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MPMovieScalingMode));
    me->__class = &__CLASS_org_xmlvm_iphone_MPMovieScalingMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MPMovieScalingMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMovieScalingMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MPMovieScalingMode();
    org_xmlvm_iphone_MPMovieScalingMode___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_MPMovieScalingMode(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MPMovieScalingMode]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    return _STATIC_org_xmlvm_iphone_MPMovieScalingMode_None;
}

void org_xmlvm_iphone_MPMovieScalingMode_PUT_None(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_None = v;
}

JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_AspectFit()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    return _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFit;
}

void org_xmlvm_iphone_MPMovieScalingMode_PUT_AspectFit(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFit = v;
}

JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_AspectFill()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    return _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFill;
}

void org_xmlvm_iphone_MPMovieScalingMode_PUT_AspectFill(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_AspectFill = v;
}

JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_Fill()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    return _STATIC_org_xmlvm_iphone_MPMovieScalingMode_Fill;
}

void org_xmlvm_iphone_MPMovieScalingMode_PUT_Fill(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieScalingMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieScalingMode();
    _STATIC_org_xmlvm_iphone_MPMovieScalingMode_Fill = v;
}

void org_xmlvm_iphone_MPMovieScalingMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMovieScalingMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

