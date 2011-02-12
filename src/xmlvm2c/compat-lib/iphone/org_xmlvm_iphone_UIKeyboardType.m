#include "xmlvm.h"

#include "org_xmlvm_iphone_UIKeyboardType.h"

#define XMLVM_CURRENT_CLASS_NAME UIKeyboardType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIKeyboardType

__TIB_DEFINITION_org_xmlvm_iphone_UIKeyboardType __TIB_org_xmlvm_iphone_UIKeyboardType = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIKeyboardType, // classInitializer
    "org.xmlvm.iphone.UIKeyboardType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType_ARRAYTYPE;

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

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_Default,
    "",
    JAVA_NULL},
    {"ASCIICapable",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable,
    "",
    JAVA_NULL},
    {"NumbersAndPunctuation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation,
    "",
    JAVA_NULL},
    {"URL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_URL,
    "",
    JAVA_NULL},
    {"NumberPad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad,
    "",
    JAVA_NULL},
    {"PhonePad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad,
    "",
    JAVA_NULL},
    {"NamePhonePad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad,
    "",
    JAVA_NULL},
    {"EmailAddress",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress,
    "",
    JAVA_NULL},
    {"Alphabet",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIKeyboardType();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIKeyboardType___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIKeyboardType()
{
    __TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIKeyboardType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIKeyboardType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIKeyboardType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIKeyboardType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Default = 0;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable = 1;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation = 2;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_URL = 3;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad = 4;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad = 5;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad = 6;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress = 7;
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet = 1;

    __TIB_org_xmlvm_iphone_UIKeyboardType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIKeyboardType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIKeyboardType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIKeyboardType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIKeyboardType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIKeyboardType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIKeyboardType);
    __TIB_org_xmlvm_iphone_UIKeyboardType.clazz = __CLASS_org_xmlvm_iphone_UIKeyboardType;
    __CLASS_org_xmlvm_iphone_UIKeyboardType_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIKeyboardType, 1);

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
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    org_xmlvm_iphone_UIKeyboardType* me = (org_xmlvm_iphone_UIKeyboardType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIKeyboardType));
    me->tib = &__TIB_org_xmlvm_iphone_UIKeyboardType;
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
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_Default;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_ASCIICapable()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_ASCIICapable(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_ASCIICapable = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumbersAndPunctuation()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NumbersAndPunctuation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumbersAndPunctuation = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_URL()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_URL;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_URL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_URL = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumberPad()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NumberPad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NumberPad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_PhonePad()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_PhonePad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_PhonePad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NamePhonePad()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_NamePhonePad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_NamePhonePad = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_EmailAddress()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_EmailAddress(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_EmailAddress = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_Alphabet()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    return _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet;
}

void org_xmlvm_iphone_UIKeyboardType_PUT_Alphabet(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardType.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardType();
    _STATIC_org_xmlvm_iphone_UIKeyboardType_Alphabet = v;
}

void org_xmlvm_iphone_UIKeyboardType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIKeyboardType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

