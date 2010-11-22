#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIToolbar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIToolbar __CLASS_org_xmlvm_iphone_UIToolbar = {
    0, // classInitialized
    "org.xmlvm.iphone.UIToolbar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIGenericToolbar, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIToolbar()
{
    __CLASS_org_xmlvm_iphone_UIToolbar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIGenericToolbar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericToolbar();
    __CLASS_org_xmlvm_iphone_UIToolbar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIToolbar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIToolbar.vtable, __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIToolbar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIToolbar_getItems__;
    __CLASS_org_xmlvm_iphone_UIToolbar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UIToolbar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean;
    __CLASS_org_xmlvm_iphone_UIToolbar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIToolbar_updateViews__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIToolbar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIToolbar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIToolbar]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIToolbar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIToolbar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIToolbar()
{
    if (!__CLASS_org_xmlvm_iphone_UIToolbar.classInitialized) __INIT_org_xmlvm_iphone_UIToolbar();
    org_xmlvm_iphone_UIToolbar* me = (org_xmlvm_iphone_UIToolbar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIToolbar));
    me->__class = &__CLASS_org_xmlvm_iphone_UIToolbar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIToolbar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIToolbar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIToolbar();
    org_xmlvm_iphone_UIToolbar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIToolbar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIToolbar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIToolbar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIToolbar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIToolbar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

