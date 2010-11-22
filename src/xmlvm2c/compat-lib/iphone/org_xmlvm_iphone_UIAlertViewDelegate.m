#include "org_xmlvm_iphone_UIAlertView.h"

#include "org_xmlvm_iphone_UIAlertViewDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIAlertViewDelegate __CLASS_org_xmlvm_iphone_UIAlertViewDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UIAlertViewDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIAlertViewDelegate()
{
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAlertViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIAlertViewDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIAlertViewDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertViewDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_UIAlertViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIAlertViewDelegate();
    org_xmlvm_iphone_UIAlertViewDelegate* me = (org_xmlvm_iphone_UIAlertViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAlertViewDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_UIAlertViewDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIAlertViewDelegate);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIAlertViewDelegate();
    org_xmlvm_iphone_UIAlertViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIAlertViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

