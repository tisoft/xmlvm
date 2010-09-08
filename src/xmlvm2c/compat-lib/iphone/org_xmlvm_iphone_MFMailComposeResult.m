
#include "org_xmlvm_iphone_MFMailComposeResult.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MFMailComposeResult __CLASS_org_xmlvm_iphone_MFMailComposeResult = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMailComposeResult", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed;

void __INIT_org_xmlvm_iphone_MFMailComposeResult()
{
    __CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_MFMailComposeResult.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeResult;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MFMailComposeResult.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MFMailComposeResult.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MFMailComposeResult.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled = 0;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved = 1;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent = 2;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeResult()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    org_xmlvm_iphone_MFMailComposeResult* me = (org_xmlvm_iphone_MFMailComposeResult*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeResult));
    me->__class = &__CLASS_org_xmlvm_iphone_MFMailComposeResult;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeResult()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeResult();
    org_xmlvm_iphone_MFMailComposeResult___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_MFMailComposeResult(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Cancelled()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Cancelled(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Saved()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Saved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Sent()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Sent(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Failed()
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Failed(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed = v;
}

void org_xmlvm_iphone_MFMailComposeResult___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeResult___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

