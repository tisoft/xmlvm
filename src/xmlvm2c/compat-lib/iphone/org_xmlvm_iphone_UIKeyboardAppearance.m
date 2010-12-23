
#include "org_xmlvm_iphone_UIKeyboardAppearance.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIKeyboardAppearance __TIB_org_xmlvm_iphone_UIKeyboardAppearance = {
    0, // classInitialized
    "org.xmlvm.iphone.UIKeyboardAppearance", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert;

void __INIT_org_xmlvm_iphone_UIKeyboardAppearance()
{
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIKeyboardAppearance.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default = 0;
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIKeyboardAppearance(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardAppearance()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    org_xmlvm_iphone_UIKeyboardAppearance* me = (org_xmlvm_iphone_UIKeyboardAppearance*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIKeyboardAppearance));
    me->tib = &__TIB_org_xmlvm_iphone_UIKeyboardAppearance;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIKeyboardAppearance();
    org_xmlvm_iphone_UIKeyboardAppearance___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    return _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default;
}

void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Alert()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    return _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert;
}

void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Alert(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert = v;
}

void org_xmlvm_iphone_UIKeyboardAppearance___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIKeyboardAppearance___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

