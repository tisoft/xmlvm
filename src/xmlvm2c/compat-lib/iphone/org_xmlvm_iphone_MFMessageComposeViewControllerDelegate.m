#include "org_xmlvm_iphone_MFMessageComposeViewController.h"

#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMessageComposeViewControllerDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMessageComposeViewControllerDelegate* me = (org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

