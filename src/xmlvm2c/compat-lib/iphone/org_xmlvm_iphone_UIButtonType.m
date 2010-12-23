
#include "org_xmlvm_iphone_UIButtonType.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIButtonType __TIB_org_xmlvm_iphone_UIButtonType = {
    0, // classInitialized
    "org.xmlvm.iphone.UIButtonType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_Custom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd;

void __INIT_org_xmlvm_iphone_UIButtonType()
{
    __TIB_org_xmlvm_iphone_UIButtonType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIButtonType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIButtonType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIButtonType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIButtonType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIButtonType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIButtonType_Custom = 0;
    _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect = 1;
    _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure = 2;
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight = 3;
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark = 4;
    _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd = 5;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIButtonType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButtonType()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    org_xmlvm_iphone_UIButtonType* me = (org_xmlvm_iphone_UIButtonType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIButtonType));
    me->tib = &__TIB_org_xmlvm_iphone_UIButtonType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIButtonType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIButtonType();
    org_xmlvm_iphone_UIButtonType___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_Custom()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_Custom;
}

void org_xmlvm_iphone_UIButtonType_PUT_Custom(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_Custom = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_RoundedRect()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect;
}

void org_xmlvm_iphone_UIButtonType_PUT_RoundedRect(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_DetailDisclosure()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure;
}

void org_xmlvm_iphone_UIButtonType_PUT_DetailDisclosure(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoLight()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight;
}

void org_xmlvm_iphone_UIButtonType_PUT_InfoLight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoDark()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark;
}

void org_xmlvm_iphone_UIButtonType_PUT_InfoDark(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_ContactAdd()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd;
}

void org_xmlvm_iphone_UIButtonType_PUT_ContactAdd(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd = v;
}

void org_xmlvm_iphone_UIButtonType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButtonType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

