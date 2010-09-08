#include "org_xmlvm_iphone_UIControl.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UIControlDelegate.h"
#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

#include "org_xmlvm_iphone_UIBarButtonItem_1.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonItem_1 __CLASS_org_xmlvm_iphone_UIBarButtonItem_1 = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarButtonItem$1", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIBarButtonItem_1()
{
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItem_1;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIBarButtonItem_1.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_1_raiseEvent___org_xmlvm_iphone_UIControl_int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.numImplementedInterfaces = 1;
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 1);
    __INIT_org_xmlvm_iphone_UIControlDelegate(&__CLASS_org_xmlvm_iphone_UIBarButtonItem_1.implementedInterfaces[0][0]);
    __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.implementedInterfaces[0][0]->vtable[11] = __CLASS_org_xmlvm_iphone_UIBarButtonItem_1.vtable[11];


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonItem_1]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItem_1()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItem_1.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItem_1();
    org_xmlvm_iphone_UIBarButtonItem_1* me = (org_xmlvm_iphone_UIBarButtonItem_1*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonItem_1));
    me->__class = &__CLASS_org_xmlvm_iphone_UIBarButtonItem_1;
    me->org_xmlvm_iphone_UIBarButtonItem_1.this_0_ = (org_xmlvm_iphone_UIBarButtonItem*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonItem_1]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItem_1()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_UIBarButtonItem_1(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonItem_1]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_1___INIT____org_xmlvm_iphone_UIBarButtonItem_org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_1___INIT____org_xmlvm_iphone_UIBarButtonItem_org_xmlvm_iphone_UIBarButtonItemDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_1_raiseEvent___org_xmlvm_iphone_UIControl_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_1_raiseEvent___org_xmlvm_iphone_UIControl_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

