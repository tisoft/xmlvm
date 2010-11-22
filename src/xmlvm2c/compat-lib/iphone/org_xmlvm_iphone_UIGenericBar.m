#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIGenericBar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIGenericBar __CLASS_org_xmlvm_iphone_UIGenericBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UIGenericBar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIGenericBar()
{
    __CLASS_org_xmlvm_iphone_UIGenericBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIGenericBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIGenericBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIGenericBar.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIGenericBar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIGenericBar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIGenericBar]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIGenericBar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIGenericBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGenericBar()
{
    if (!__CLASS_org_xmlvm_iphone_UIGenericBar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericBar();
    org_xmlvm_iphone_UIGenericBar* me = (org_xmlvm_iphone_UIGenericBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIGenericBar));
    me->__class = &__CLASS_org_xmlvm_iphone_UIGenericBar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIGenericBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGenericBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIGenericBar();
    org_xmlvm_iphone_UIGenericBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIGenericBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

