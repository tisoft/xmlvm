
#include "org_xmlvm_iphone_UITextAutocapitalizationType.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextAutocapitalizationType __CLASS_org_xmlvm_iphone_UITextAutocapitalizationType = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextAutocapitalizationType", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Words;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Sentences;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_AllCharacters;

void __INIT_org_xmlvm_iphone_UITextAutocapitalizationType()
{
    __CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextAutocapitalizationType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_None = 0;
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Words = 1;
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Sentences = 2;
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_AllCharacters = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextAutocapitalizationType]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITextAutocapitalizationType(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextAutocapitalizationType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextAutocapitalizationType()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    org_xmlvm_iphone_UITextAutocapitalizationType* me = (org_xmlvm_iphone_UITextAutocapitalizationType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextAutocapitalizationType));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextAutocapitalizationType]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITextAutocapitalizationType);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextAutocapitalizationType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextAutocapitalizationType();
    org_xmlvm_iphone_UITextAutocapitalizationType___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    return _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_None;
}

void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_None(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_None = v;
}

JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_Words()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    return _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Words;
}

void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_Words(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Words = v;
}

JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_Sentences()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    return _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Sentences;
}

void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_Sentences(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_Sentences = v;
}

JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_AllCharacters()
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    return _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_AllCharacters;
}

void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_AllCharacters(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextAutocapitalizationType.classInitialized) __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
    _STATIC_org_xmlvm_iphone_UITextAutocapitalizationType_AllCharacters = v;
}

void org_xmlvm_iphone_UITextAutocapitalizationType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextAutocapitalizationType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

