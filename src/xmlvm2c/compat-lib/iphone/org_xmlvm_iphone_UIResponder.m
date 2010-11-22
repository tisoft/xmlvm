#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"

#include "org_xmlvm_iphone_UIResponder.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIResponder __CLASS_org_xmlvm_iphone_UIResponder = {
    0, // classInitialized
    "org.xmlvm.iphone.UIResponder", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIResponder()
{
    __CLASS_org_xmlvm_iphone_UIResponder.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIResponder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIResponder;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIResponder.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_getNextResponder__;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_resignFirstResponder__;
    __CLASS_org_xmlvm_iphone_UIResponder.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_becomeFirstResponder__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIResponder.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIResponder.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIResponder(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIResponder()
{
    if (!__CLASS_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    org_xmlvm_iphone_UIResponder* me = (org_xmlvm_iphone_UIResponder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIResponder));
    me->__class = &__CLASS_org_xmlvm_iphone_UIResponder;
    me->org_xmlvm_iphone_UIResponder.callDelegates_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIResponder);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIResponder()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIResponder();
    org_xmlvm_iphone_UIResponder___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIResponder___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIResponder_getNextResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_getNextResponder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_resignFirstResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_resignFirstResponder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_becomeFirstResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_becomeFirstResponder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

