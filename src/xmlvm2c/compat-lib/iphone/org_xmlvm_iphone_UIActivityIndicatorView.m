
#include "org_xmlvm_iphone_UIActivityIndicatorView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIActivityIndicatorView __CLASS_org_xmlvm_iphone_UIActivityIndicatorView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIActivityIndicatorView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIActivityIndicatorView()
{
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIActivityIndicatorView(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActivityIndicatorView()
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorView.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorView();
    org_xmlvm_iphone_UIActivityIndicatorView* me = (org_xmlvm_iphone_UIActivityIndicatorView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActivityIndicatorView));
    me->__class = &__CLASS_org_xmlvm_iphone_UIActivityIndicatorView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIActivityIndicatorView);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIActivityIndicatorView();
    org_xmlvm_iphone_UIActivityIndicatorView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIActivityIndicatorView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView___INIT____int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView___INIT____int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

