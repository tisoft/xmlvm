#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_UIWindow.h"

#include "org_xmlvm_iphone_UITouch.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITouch __CLASS_org_xmlvm_iphone_UITouch = {
    0, // classInitialized
    "org.xmlvm.iphone.UITouch", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITouch()
{
    __CLASS_org_xmlvm_iphone_UITouch.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UITouch.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITouch;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITouch.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITouch.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UITouch.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getView__;
    __CLASS_org_xmlvm_iphone_UITouch.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getWindow__;
    __CLASS_org_xmlvm_iphone_UITouch.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getTapCount__;
    __CLASS_org_xmlvm_iphone_UITouch.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getTimestamp__;
    __CLASS_org_xmlvm_iphone_UITouch.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getPhase__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITouch.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITouch.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITouch(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouch()
{
    if (!__CLASS_org_xmlvm_iphone_UITouch.classInitialized) __INIT_org_xmlvm_iphone_UITouch();
    org_xmlvm_iphone_UITouch* me = (org_xmlvm_iphone_UITouch*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITouch));
    me->__class = &__CLASS_org_xmlvm_iphone_UITouch;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITouch);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouch()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_getView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_getWindow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getWindow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITouch_getTapCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getTapCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UITouch_getTimestamp__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getTimestamp__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITouch_getPhase__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getPhase__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

