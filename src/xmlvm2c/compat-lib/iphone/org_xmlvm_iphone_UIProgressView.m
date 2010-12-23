
#include "org_xmlvm_iphone_UIProgressView.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIProgressView __TIB_org_xmlvm_iphone_UIProgressView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIProgressView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIProgressView()
{
    __TIB_org_xmlvm_iphone_UIProgressView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UIProgressView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIProgressView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIProgressView.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIProgressView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIProgressView_setProgress___float;
    __TIB_org_xmlvm_iphone_UIProgressView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIProgressView_getProgress__;
    __TIB_org_xmlvm_iphone_UIProgressView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIProgressView_getProgressViewStyle__;
    __TIB_org_xmlvm_iphone_UIProgressView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIProgressView_setProgressViewStyle___int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIProgressView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIProgressView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIProgressView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIProgressView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIProgressView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressView()
{
    if (!__TIB_org_xmlvm_iphone_UIProgressView.classInitialized) __INIT_org_xmlvm_iphone_UIProgressView();
    org_xmlvm_iphone_UIProgressView* me = (org_xmlvm_iphone_UIProgressView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIProgressView));
    me->tib = &__TIB_org_xmlvm_iphone_UIProgressView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIProgressView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressView()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIProgressView___INIT____int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressView___INIT____int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIProgressView_setProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressView_setProgress___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIProgressView_getProgress__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressView_getProgress__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIProgressView_getProgressViewStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressView_getProgressViewStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIProgressView_setProgressViewStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressView_setProgressViewStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

