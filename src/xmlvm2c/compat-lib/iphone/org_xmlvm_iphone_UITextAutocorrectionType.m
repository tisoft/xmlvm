
#include "org_xmlvm_iphone_UITextAutocorrectionType.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextAutocorrectionType __CLASS_org_xmlvm_iphone_UITextAutocorrectionType = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextAutocorrectionType", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_No;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Yes;

void __INIT_org_xmlvm_iphone_UITextAutocorrectionType()
{
    __CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITextAutocorrectionType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextAutocorrectionType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextAutocorrectionType.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextAutocorrectionType.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Default = 0;
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_No = 1;
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Yes = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextAutocorrectionType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextAutocorrectionType()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    org_xmlvm_iphone_UITextAutocorrectionType* me = (org_xmlvm_iphone_UITextAutocorrectionType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextAutocorrectionType));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextAutocorrectionType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextAutocorrectionType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextAutocorrectionType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextAutocorrectionType();
    org_xmlvm_iphone_UITextAutocorrectionType___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UITextAutocorrectionType(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextAutocorrectionType]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextAutocorrectionType_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    return _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Default;
}

void org_xmlvm_iphone_UITextAutocorrectionType_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Default = v;
}

JAVA_INT org_xmlvm_iphone_UITextAutocorrectionType_GET_No()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    return _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_No;
}

void org_xmlvm_iphone_UITextAutocorrectionType_PUT_No(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_No = v;
}

JAVA_INT org_xmlvm_iphone_UITextAutocorrectionType_GET_Yes()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    return _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Yes;
}

void org_xmlvm_iphone_UITextAutocorrectionType_PUT_Yes(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocorrectionType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocorrectionType();
    _STATIC_org_xmlvm_iphone_UITextAutocorrectionType_Yes = v;
}

void org_xmlvm_iphone_UITextAutocorrectionType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextAutocorrectionType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

