
#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMessageComposeViewControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMessageComposeViewControllerDelegate* me = (org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
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

