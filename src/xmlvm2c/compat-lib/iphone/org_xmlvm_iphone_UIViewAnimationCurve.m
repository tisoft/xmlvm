
#include "org_xmlvm_iphone_UIViewAnimationCurve.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationCurve __TIB_org_xmlvm_iphone_UIViewAnimationCurve = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewAnimationCurve", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear;

void __INIT_org_xmlvm_iphone_UIViewAnimationCurve()
{
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationCurve;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewAnimationCurve.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut = 0;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn = 1;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut = 2;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationCurve(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationCurve()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    org_xmlvm_iphone_UIViewAnimationCurve* me = (org_xmlvm_iphone_UIViewAnimationCurve*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationCurve));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewAnimationCurve;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationCurve()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewAnimationCurve();
    org_xmlvm_iphone_UIViewAnimationCurve___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseInOut()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseInOut(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseIn()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseIn(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseOut()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseOut(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_Linear()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_Linear(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear = v;
}

void org_xmlvm_iphone_UIViewAnimationCurve___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewAnimationCurve___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

