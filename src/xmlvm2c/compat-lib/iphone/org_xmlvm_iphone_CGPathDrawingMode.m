
#include "org_xmlvm_iphone_CGPathDrawingMode.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGPathDrawingMode __TIB_org_xmlvm_iphone_CGPathDrawingMode = {
    0, // classInitialized
    "org.xmlvm.iphone.CGPathDrawingMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathStroke;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFillStroke;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFillStroke;

void __INIT_org_xmlvm_iphone_CGPathDrawingMode()
{
    __TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGPathDrawingMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGPathDrawingMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGPathDrawingMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGPathDrawingMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGPathDrawingMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFill = 0;
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFill = 1;
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathStroke = 2;
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFillStroke = 3;
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFillStroke = 4;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGPathDrawingMode]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGPathDrawingMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGPathDrawingMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPathDrawingMode()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    org_xmlvm_iphone_CGPathDrawingMode* me = (org_xmlvm_iphone_CGPathDrawingMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGPathDrawingMode));
    me->tib = &__TIB_org_xmlvm_iphone_CGPathDrawingMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGPathDrawingMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPathDrawingMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CGPathDrawingMode();
    org_xmlvm_iphone_CGPathDrawingMode___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathFill()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    return _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFill;
}

void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFill = v;
}

JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathEOFill()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    return _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFill;
}

void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathEOFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFill = v;
}

JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathStroke()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    return _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathStroke;
}

void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathStroke(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathStroke = v;
}

JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathFillStroke()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    return _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFillStroke;
}

void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathFillStroke(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathFillStroke = v;
}

JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathEOFillStroke()
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    return _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFillStroke;
}

void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathEOFillStroke(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGPathDrawingMode.classInitialized) __INIT_org_xmlvm_iphone_CGPathDrawingMode();
    _STATIC_org_xmlvm_iphone_CGPathDrawingMode_kCGPathEOFillStroke = v;
}

void org_xmlvm_iphone_CGPathDrawingMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPathDrawingMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

