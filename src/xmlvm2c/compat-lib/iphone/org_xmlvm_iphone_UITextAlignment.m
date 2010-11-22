
#include "org_xmlvm_iphone_UITextAlignment.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextAlignment __CLASS_org_xmlvm_iphone_UITextAlignment = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextAlignment", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAlignment_Left;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAlignment_Center;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAlignment_Right;

void __INIT_org_xmlvm_iphone_UITextAlignment()
{
    __CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITextAlignment.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextAlignment;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextAlignment.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextAlignment.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextAlignment.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITextAlignment_Left = 0;
    _STATIC_org_xmlvm_iphone_UITextAlignment_Center = 1;
    _STATIC_org_xmlvm_iphone_UITextAlignment_Right = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextAlignment]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITextAlignment(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextAlignment]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextAlignment()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    org_xmlvm_iphone_UITextAlignment* me = (org_xmlvm_iphone_UITextAlignment*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextAlignment));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextAlignment;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextAlignment]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextAlignment()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextAlignment();
    org_xmlvm_iphone_UITextAlignment___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Left()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    return _STATIC_org_xmlvm_iphone_UITextAlignment_Left;
}

void org_xmlvm_iphone_UITextAlignment_PUT_Left(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    _STATIC_org_xmlvm_iphone_UITextAlignment_Left = v;
}

JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Center()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    return _STATIC_org_xmlvm_iphone_UITextAlignment_Center;
}

void org_xmlvm_iphone_UITextAlignment_PUT_Center(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    _STATIC_org_xmlvm_iphone_UITextAlignment_Center = v;
}

JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Right()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    return _STATIC_org_xmlvm_iphone_UITextAlignment_Right;
}

void org_xmlvm_iphone_UITextAlignment_PUT_Right(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAlignment.classInitialized) __INIT_org_xmlvm_iphone_UITextAlignment();
    _STATIC_org_xmlvm_iphone_UITextAlignment_Right = v;
}

void org_xmlvm_iphone_UITextAlignment___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextAlignment___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

