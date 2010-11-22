#include "org_xmlvm_iphone_MFMailComposeViewController.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MFMailComposeViewControllerDelegate __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMailComposeViewControllerDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMailComposeViewControllerDelegate* me = (org_xmlvm_iphone_MFMailComposeViewControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeViewControllerDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

