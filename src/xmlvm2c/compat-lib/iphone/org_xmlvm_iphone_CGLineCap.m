
#include "org_xmlvm_iphone_CGLineCap.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGLineCap __TIB_org_xmlvm_iphone_CGLineCap = {
    0, // classInitialized
    "org.xmlvm.iphone.CGLineCap", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare;

void __INIT_org_xmlvm_iphone_CGLineCap()
{
    __TIB_org_xmlvm_iphone_CGLineCap.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGLineCap.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGLineCap.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGLineCap.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGLineCap.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt = 0;
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound = 1;
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGLineCap(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLineCap()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    org_xmlvm_iphone_CGLineCap* me = (org_xmlvm_iphone_CGLineCap*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGLineCap));
    me->tib = &__TIB_org_xmlvm_iphone_CGLineCap;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CGLineCap();
    org_xmlvm_iphone_CGLineCap___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapButt()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapButt(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt = v;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapRound()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapRound(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound = v;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapSquare()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapSquare(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare = v;
}

void org_xmlvm_iphone_CGLineCap___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLineCap___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

