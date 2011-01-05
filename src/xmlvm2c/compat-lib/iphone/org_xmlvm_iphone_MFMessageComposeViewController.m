#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"
#include "java_util_ArrayList.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMessageComposeViewController.h"

__TIB_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewController __TIB_org_xmlvm_iphone_MFMessageComposeViewController = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMessageComposeViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UINavigationController, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_MFMessageComposeViewController()
{
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable, __TIB_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__TIB_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getBody__;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_MFMessageComposeViewController);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.clazz = __CLASS_org_xmlvm_iphone_MFMessageComposeViewController;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MFMessageComposeViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewController()
{
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
    org_xmlvm_iphone_MFMessageComposeViewController* me = (org_xmlvm_iphone_MFMessageComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewController));
    me->tib = &__TIB_org_xmlvm_iphone_MFMessageComposeViewController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
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
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
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

