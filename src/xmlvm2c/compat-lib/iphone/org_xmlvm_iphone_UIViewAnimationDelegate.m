#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIViewAnimationDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIViewAnimationDelegate __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewAnimationDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIViewAnimationDelegate()
{
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationDelegate();
    org_xmlvm_iphone_UIViewAnimationDelegate* me = (org_xmlvm_iphone_UIViewAnimationDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewAnimationDelegate();
    org_xmlvm_iphone_UIViewAnimationDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIViewAnimationDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewAnimationDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

