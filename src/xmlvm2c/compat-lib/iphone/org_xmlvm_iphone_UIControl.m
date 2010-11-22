#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_UIControlDelegate.h"

#include "org_xmlvm_iphone_UIControl.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIControl __CLASS_org_xmlvm_iphone_UIControl = {
    0, // classInitialized
    "org.xmlvm.iphone.UIControl", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIControl()
{
    __CLASS_org_xmlvm_iphone_UIControl.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIControl.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIControl.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int;
    __CLASS_org_xmlvm_iphone_UIControl.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIControl.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIControl.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIControl(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControl()
{
    if (!__CLASS_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl* me = (org_xmlvm_iphone_UIControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControl));
    me->__class = &__CLASS_org_xmlvm_iphone_UIControl;
    me->org_xmlvm_iphone_UIControl.delegates_ = (java_util_Map*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIControl);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControl()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIControl___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

