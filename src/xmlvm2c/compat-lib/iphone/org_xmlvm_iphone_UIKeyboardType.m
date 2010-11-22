
#include "org_xmlvm_iphone_UIKeyboardType.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIKeyboardType __CLASS_org_xmlvm_iphone_UIKeyboardType = {
    0, // classInitialized
    "org.xmlvm.iphone.UIKeyboardType", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_URL;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet;

void __INIT_org_xmlvm_iphone_UIKeyboardType()
{
    __CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIKeyboardType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIKeyboardType.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIKeyboardType.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIKeyboardType.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Default = 0;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable = 1;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation = 2;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_URL = 3;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad = 4;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad = 5;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad = 6;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress = 7;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIKeyboardType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIKeyboardType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIKeyboardType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardType()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    org_xmlvm_iphone_UIKeyboardType* me = (org_xmlvm_iphone_UIKeyboardType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIKeyboardType));
    me->__class = &__CLASS_org_xmlvm_iphone_UIKeyboardType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIKeyboardType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIKeyboardType();
    org_xmlvm_iphone_UIKeyboardType___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_Default;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_ASCIICapable()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_ASCIICapable(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumbersAndPunctuation()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NumbersAndPunctuation(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_URL()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_URL;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_URL(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_URL = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumberPad()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NumberPad(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_PhonePad()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_PhonePad(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NamePhonePad()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NamePhonePad(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_EmailAddress()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_EmailAddress(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_Alphabet()
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_Alphabet(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet = v;
}

void org_xmlvm_iphone_UIKeyboardType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIKeyboardType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

