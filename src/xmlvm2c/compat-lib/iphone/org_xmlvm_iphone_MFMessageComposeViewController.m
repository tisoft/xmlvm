#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"
#include "java_util_ArrayList.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMessageComposeViewController.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewController __CLASS_org_xmlvm_iphone_MFMessageComposeViewController = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMessageComposeViewController", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UINavigationController, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MFMessageComposeViewController()
{
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable, __CLASS_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__CLASS_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getBody__;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_MFMessageComposeViewController(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewController()
{
    if (!__CLASS_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
    org_xmlvm_iphone_MFMessageComposeViewController* me = (org_xmlvm_iphone_MFMessageComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewController));
    me->__class = &__CLASS_org_xmlvm_iphone_MFMessageComposeViewController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_MFMessageComposeViewController);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMessageComposeViewController();
    org_xmlvm_iphone_MFMessageComposeViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMessageComposeViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MFMessageComposeViewController_canSendText__()
{
    if (!__CLASS_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_canSendText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getBody__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getBody__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

