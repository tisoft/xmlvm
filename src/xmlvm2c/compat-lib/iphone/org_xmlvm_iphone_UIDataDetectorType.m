#include "xmlvm.h"

#include "org_xmlvm_iphone_UIDataDetectorType.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIDataDetectorType __TIB_org_xmlvm_iphone_UIDataDetectorType = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIDataDetectorType, // classInitializer
    "org.xmlvm.iphone.UIDataDetectorType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"PhoneNumber",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber,
    "",
    JAVA_NULL},
    {"Link",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_Link,
    "",
    JAVA_NULL},
    {"Address",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_Address,
    "",
    JAVA_NULL},
    {"CalendarEvent",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent,
    "",
    JAVA_NULL},
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_None,
    "",
    JAVA_NULL},
    {"All",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_All,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIDataDetectorType();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIDataDetectorType___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIDataDetectorType()
{
    __TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIDataDetectorType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDataDetectorType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = 1;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = 2;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = 4;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = 8;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_None = 0;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_All = 2147483647;

    __TIB_org_xmlvm_iphone_UIDataDetectorType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIDataDetectorType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIDataDetectorType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIDataDetectorType);
    __TIB_org_xmlvm_iphone_UIDataDetectorType.clazz = __CLASS_org_xmlvm_iphone_UIDataDetectorType;
    __CLASS_org_xmlvm_iphone_UIDataDetectorType_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDataDetectorType, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIDataDetectorType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDataDetectorType()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    org_xmlvm_iphone_UIDataDetectorType* me = (org_xmlvm_iphone_UIDataDetectorType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDataDetectorType));
    me->tib = &__TIB_org_xmlvm_iphone_UIDataDetectorType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIDataDetectorType();
    org_xmlvm_iphone_UIDataDetectorType___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_PhoneNumber()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_PhoneNumber(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Link()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Link(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Address()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Address(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_CalendarEvent()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_CalendarEvent(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_None = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_All()
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_All(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) __INIT_org_xmlvm_iphone_UIDataDetectorType();
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_All = v;
}

void org_xmlvm_iphone_UIDataDetectorType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDataDetectorType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

