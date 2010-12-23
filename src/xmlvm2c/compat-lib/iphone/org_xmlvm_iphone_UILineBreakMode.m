
#include "org_xmlvm_iphone_UILineBreakMode.h"

__TIB_DEFINITION_org_xmlvm_iphone_UILineBreakMode __TIB_org_xmlvm_iphone_UILineBreakMode = {
    0, // classInitialized
    "org.xmlvm.iphone.UILineBreakMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation;

void __INIT_org_xmlvm_iphone_UILineBreakMode()
{
    __TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UILineBreakMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UILineBreakMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UILineBreakMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UILineBreakMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UILineBreakMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap = 0;
    _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap = 1;
    _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation = 3;
    _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip = 2;
    _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation = 4;
    _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation = 5;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UILineBreakMode]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UILineBreakMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UILineBreakMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UILineBreakMode()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    org_xmlvm_iphone_UILineBreakMode* me = (org_xmlvm_iphone_UILineBreakMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UILineBreakMode));
    me->tib = &__TIB_org_xmlvm_iphone_UILineBreakMode;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UILineBreakMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UILineBreakMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UILineBreakMode();
    org_xmlvm_iphone_UILineBreakMode___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_WordWrap()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_WordWrap(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_CharacterWrap()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_CharacterWrap(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_HeadTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_HeadTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_Clip()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_Clip(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_TailTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_TailTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_MiddleTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_MiddleTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation = v;
}

void org_xmlvm_iphone_UILineBreakMode___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILineBreakMode___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

