#include "org_xmlvm_iphone_UIAlertViewDelegate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIAlertView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIAlertView __CLASS_org_xmlvm_iphone_UIAlertView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIAlertView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIAlertView()
{
    __CLASS_org_xmlvm_iphone_UIAlertView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIAlertView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIAlertView.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_show__;
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String;
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_getTitle__;
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String;
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_getMesssage__;
    __CLASS_org_xmlvm_iphone_UIAlertView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIAlertView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIAlertView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIAlertView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertView()
{
    if (!__CLASS_org_xmlvm_iphone_UIAlertView.classInitialized) __INIT_org_xmlvm_iphone_UIAlertView();
    org_xmlvm_iphone_UIAlertView* me = (org_xmlvm_iphone_UIAlertView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAlertView));
    me->__class = &__CLASS_org_xmlvm_iphone_UIAlertView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_show__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_show__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getMesssage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getMesssage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_access$000___org_xmlvm_iphone_UIAlertView_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_UIAlertView.classInitialized) __INIT_org_xmlvm_iphone_UIAlertView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_access$000___org_xmlvm_iphone_UIAlertView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

