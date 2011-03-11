#include "xmlvm.h"

#include "org_xmlvm_iphone_UIDatePickerMode.h"

#define XMLVM_CURRENT_CLASS_NAME UIDatePickerMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIDatePickerMode

__TIB_DEFINITION_org_xmlvm_iphone_UIDatePickerMode __TIB_org_xmlvm_iphone_UIDatePickerMode = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIDatePickerMode, // classInitializer
    "org.xmlvm.iphone.UIDatePickerMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIDatePickerMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePickerMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDatePickerMode_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Time",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDatePickerMode_Time,
    "",
    JAVA_NULL},
    {"Date",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDatePickerMode_Date,
    "",
    JAVA_NULL},
    {"DateAndTime",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime,
    "",
    JAVA_NULL},
    {"CountDownTimer",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIDatePickerMode();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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

void __INIT_org_xmlvm_iphone_UIDatePickerMode()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIDatePickerMode);
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIDatePickerMode();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIDatePickerMode);
}

void __INIT_IMPL_org_xmlvm_iphone_UIDatePickerMode()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIDatePickerMode.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UIDatePickerMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDatePickerMode;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDatePickerMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UIDatePickerMode.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIDatePickerMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
        _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time = 0;
        _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date = 1;
        _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime = 2;
        _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer = 3;

        __TIB_org_xmlvm_iphone_UIDatePickerMode.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDatePickerMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDatePickerMode.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIDatePickerMode.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDatePickerMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDatePickerMode.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIDatePickerMode.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDatePickerMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIDatePickerMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIDatePickerMode);
        __TIB_org_xmlvm_iphone_UIDatePickerMode.clazz = __CLASS_org_xmlvm_iphone_UIDatePickerMode;
        __CLASS_org_xmlvm_iphone_UIDatePickerMode_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDatePickerMode, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDatePickerMode]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIDatePickerMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDatePickerMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDatePickerMode(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDatePickerMode()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    org_xmlvm_iphone_UIDatePickerMode* me = (org_xmlvm_iphone_UIDatePickerMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDatePickerMode));
    me->tib = &__TIB_org_xmlvm_iphone_UIDatePickerMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDatePickerMode(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDatePickerMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDatePickerMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Time()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_Time(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Time = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Date()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_Date(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_Date = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_DateAndTime()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_DateAndTime(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_DateAndTime = v;
}

JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_CountDownTimer()
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    return _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer;
}

void org_xmlvm_iphone_UIDatePickerMode_PUT_CountDownTimer(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDatePickerMode.classInitialized) __INIT_org_xmlvm_iphone_UIDatePickerMode();
    _STATIC_org_xmlvm_iphone_UIDatePickerMode_CountDownTimer = v;
}

