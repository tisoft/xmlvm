
#include "org_xmlvm_iphone_UITouchPhase.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITouchPhase __CLASS_org_xmlvm_iphone_UITouchPhase = {
    0, // classInitialized
    "org.xmlvm.iphone.UITouchPhase", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Began;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Moved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Ended;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled;

void __INIT_org_xmlvm_iphone_UITouchPhase()
{
    __CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITouchPhase.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITouchPhase;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITouchPhase.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITouchPhase.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITouchPhase.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITouchPhase_Began = 0;
    _STATIC_org_xmlvm_iphone_UITouchPhase_Moved = 1;
    _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary = 2;
    _STATIC_org_xmlvm_iphone_UITouchPhase_Ended = 3;
    _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled = 4;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITouchPhase]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITouchPhase(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITouchPhase]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouchPhase()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    org_xmlvm_iphone_UITouchPhase* me = (org_xmlvm_iphone_UITouchPhase*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITouchPhase));
    me->__class = &__CLASS_org_xmlvm_iphone_UITouchPhase;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITouchPhase]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITouchPhase);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouchPhase()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITouchPhase();
    org_xmlvm_iphone_UITouchPhase___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Began()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Began;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Began(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Began = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Moved()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Moved;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Moved(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Moved = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Stationary()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Stationary(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Ended()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Ended;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Ended(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Ended = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Cancelled()
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Cancelled(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled = v;
}

void org_xmlvm_iphone_UITouchPhase___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouchPhase___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

