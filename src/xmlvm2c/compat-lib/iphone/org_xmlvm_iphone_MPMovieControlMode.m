
#include "org_xmlvm_iphone_MPMovieControlMode.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MPMovieControlMode __CLASS_org_xmlvm_iphone_MPMovieControlMode = {
    0, // classInitialized
    "org.xmlvm.iphone.MPMovieControlMode", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieControlMode_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieControlMode_VolumeOnly;
static JAVA_INT _STATIC_org_xmlvm_iphone_MPMovieControlMode_Hidden;

void __INIT_org_xmlvm_iphone_MPMovieControlMode()
{
    __CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_MPMovieControlMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MPMovieControlMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MPMovieControlMode.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MPMovieControlMode.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MPMovieControlMode.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_Default = 0;
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_VolumeOnly = 1;
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_Hidden = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MPMovieControlMode]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_MPMovieControlMode(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MPMovieControlMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMovieControlMode()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    org_xmlvm_iphone_MPMovieControlMode* me = (org_xmlvm_iphone_MPMovieControlMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MPMovieControlMode));
    me->__class = &__CLASS_org_xmlvm_iphone_MPMovieControlMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MPMovieControlMode]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_MPMovieControlMode);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMovieControlMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MPMovieControlMode();
    org_xmlvm_iphone_MPMovieControlMode___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    return _STATIC_org_xmlvm_iphone_MPMovieControlMode_Default;
}

void org_xmlvm_iphone_MPMovieControlMode_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_Default = v;
}

JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_VolumeOnly()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    return _STATIC_org_xmlvm_iphone_MPMovieControlMode_VolumeOnly;
}

void org_xmlvm_iphone_MPMovieControlMode_PUT_VolumeOnly(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_VolumeOnly = v;
}

JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_Hidden()
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    return _STATIC_org_xmlvm_iphone_MPMovieControlMode_Hidden;
}

void org_xmlvm_iphone_MPMovieControlMode_PUT_Hidden(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MPMovieControlMode.classInitialized) __INIT_org_xmlvm_iphone_MPMovieControlMode();
    _STATIC_org_xmlvm_iphone_MPMovieControlMode_Hidden = v;
}

void org_xmlvm_iphone_MPMovieControlMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMovieControlMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

