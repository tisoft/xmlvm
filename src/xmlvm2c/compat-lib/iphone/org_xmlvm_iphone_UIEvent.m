#include "java_util_Set.h"

#include "org_xmlvm_iphone_UIEvent.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIEvent __CLASS_org_xmlvm_iphone_UIEvent = {
    0, // classInitialized
    "org.xmlvm.iphone.UIEvent", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIEvent()
{
    __CLASS_org_xmlvm_iphone_UIEvent.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIEvent.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIEvent.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIEvent.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIEvent_allTouches__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIEvent.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIEvent.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIEvent(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEvent()
{
    if (!__CLASS_org_xmlvm_iphone_UIEvent.classInitialized) __INIT_org_xmlvm_iphone_UIEvent();
    org_xmlvm_iphone_UIEvent* me = (org_xmlvm_iphone_UIEvent*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIEvent));
    me->__class = &__CLASS_org_xmlvm_iphone_UIEvent;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIEvent);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIEvent();
    org_xmlvm_iphone_UIEvent___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIEvent___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEvent___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIEvent_allTouches__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEvent_allTouches__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

