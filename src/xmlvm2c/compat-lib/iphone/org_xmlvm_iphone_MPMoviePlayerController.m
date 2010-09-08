#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIColor.h"

#include "org_xmlvm_iphone_MPMoviePlayerController.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MPMoviePlayerController __CLASS_org_xmlvm_iphone_MPMoviePlayerController = {
    0, // classInitialized
    "org.xmlvm.iphone.MPMoviePlayerController", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MPMoviePlayerController()
{
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MPMoviePlayerController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_play__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_stop__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getContentURL__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MPMoviePlayerController.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MPMoviePlayerController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMoviePlayerController()
{
    if (!__CLASS_org_xmlvm_iphone_MPMoviePlayerController.classInitialized) __INIT_org_xmlvm_iphone_MPMoviePlayerController();
    org_xmlvm_iphone_MPMoviePlayerController* me = (org_xmlvm_iphone_MPMoviePlayerController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MPMoviePlayerController));
    me->__class = &__CLASS_org_xmlvm_iphone_MPMoviePlayerController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MPMoviePlayerController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMoviePlayerController()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_MPMoviePlayerController(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MPMoviePlayerController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_initWithContentURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_MPMoviePlayerController.classInitialized) __INIT_org_xmlvm_iphone_MPMoviePlayerController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_initWithContentURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_play__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_play__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_stop__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_getContentURL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getContentURL__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

