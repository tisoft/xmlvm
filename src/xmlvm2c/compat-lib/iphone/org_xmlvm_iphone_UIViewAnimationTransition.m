
#include "org_xmlvm_iphone_UIViewAnimationTransition.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIViewAnimationTransition __CLASS_org_xmlvm_iphone_UIViewAnimationTransition = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewAnimationTransition", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;

void __INIT_org_xmlvm_iphone_UIViewAnimationTransition()
{
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = 0;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = 1;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = 2;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = 3;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = 4;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIViewAnimationTransition(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationTransition()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    org_xmlvm_iphone_UIViewAnimationTransition* me = (org_xmlvm_iphone_UIViewAnimationTransition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationTransition));
    me->__class = &__CLASS_org_xmlvm_iphone_UIViewAnimationTransition;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIViewAnimationTransition);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewAnimationTransition();
    org_xmlvm_iphone_UIViewAnimationTransition___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_None(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromLeft()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromLeft(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromRight()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromRight(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlUp()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlUp(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlDown()
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlDown(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = v;
}

void org_xmlvm_iphone_UIViewAnimationTransition___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewAnimationTransition___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

