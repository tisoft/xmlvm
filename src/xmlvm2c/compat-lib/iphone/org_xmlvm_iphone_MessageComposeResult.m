
#include "org_xmlvm_iphone_MessageComposeResult.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MessageComposeResult __CLASS_org_xmlvm_iphone_MessageComposeResult = {
    0, // classInitialized
    "org.xmlvm.iphone.MessageComposeResult", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled;
static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent;
static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed;

void __INIT_org_xmlvm_iphone_MessageComposeResult()
{
    __CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_MessageComposeResult.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MessageComposeResult;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MessageComposeResult.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MessageComposeResult.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MessageComposeResult.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled = 0;
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent = 1;
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_MessageComposeResult(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MessageComposeResult()
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    org_xmlvm_iphone_MessageComposeResult* me = (org_xmlvm_iphone_MessageComposeResult*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MessageComposeResult));
    me->__class = &__CLASS_org_xmlvm_iphone_MessageComposeResult;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_MessageComposeResult);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MessageComposeResult()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MessageComposeResult();
    org_xmlvm_iphone_MessageComposeResult___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Cancelled()
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Cancelled(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled = v;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Sent()
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Sent(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent = v;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Failed()
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Failed(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed = v;
}

void org_xmlvm_iphone_MessageComposeResult___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MessageComposeResult___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

