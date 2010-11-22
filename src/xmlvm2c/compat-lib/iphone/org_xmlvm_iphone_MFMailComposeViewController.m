#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"
#include "org_xmlvm_iphone_NSString.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMailComposeViewController.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MFMailComposeViewController __CLASS_org_xmlvm_iphone_MFMailComposeViewController = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMailComposeViewController", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UINavigationController, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MFMailComposeViewController()
{
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable, __CLASS_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__CLASS_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MFMailComposeViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeViewController()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController* me = (org_xmlvm_iphone_MFMailComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeViewController));
    me->__class = &__CLASS_org_xmlvm_iphone_MFMailComposeViewController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMailComposeViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MFMailComposeViewController_canSendMail__()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_canSendMail__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

