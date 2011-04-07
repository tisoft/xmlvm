#include "xmlvm.h"

#include "org_xmlvm_iphone_UIDeviceBatteryState.h"

#define XMLVM_CURRENT_CLASS_NAME UIDeviceBatteryState
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIDeviceBatteryState

__TIB_DEFINITION_org_xmlvm_iphone_UIDeviceBatteryState __TIB_org_xmlvm_iphone_UIDeviceBatteryState = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIDeviceBatteryState, // classInitializer
    "org.xmlvm.iphone.UIDeviceBatteryState", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIDeviceBatteryState), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceBatteryState;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Unknown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown,
    "",
    JAVA_NULL},
    {"Unplugged",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged,
    "",
    JAVA_NULL},
    {"Charging",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging,
    "",
    JAVA_NULL},
    {"Full",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIDeviceBatteryState();
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

void __INIT_org_xmlvm_iphone_UIDeviceBatteryState()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIDeviceBatteryState);
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIDeviceBatteryState();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIDeviceBatteryState);
}

void __INIT_IMPL_org_xmlvm_iphone_UIDeviceBatteryState()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceBatteryState;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDeviceBatteryState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown = 0;
        _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged = 1;
        _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging = 2;
        _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full = 3;

        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIDeviceBatteryState = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIDeviceBatteryState);
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.clazz = __CLASS_org_xmlvm_iphone_UIDeviceBatteryState;
        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDeviceBatteryState);
        __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDeviceBatteryState_1ARRAY);
        __CLASS_org_xmlvm_iphone_UIDeviceBatteryState_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDeviceBatteryState_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDeviceBatteryState]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIDeviceBatteryState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDeviceBatteryState]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDeviceBatteryState(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDeviceBatteryState()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    org_xmlvm_iphone_UIDeviceBatteryState* me = (org_xmlvm_iphone_UIDeviceBatteryState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDeviceBatteryState));
    me->tib = &__TIB_org_xmlvm_iphone_UIDeviceBatteryState;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDeviceBatteryState(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDeviceBatteryState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceBatteryState()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unknown()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unknown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unknown = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unplugged()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unplugged(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Unplugged = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Charging()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Charging(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Charging = v;
}

JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Full()
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    return _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full;
}

void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Full(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIDeviceBatteryState.classInitialized) __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
    _STATIC_org_xmlvm_iphone_UIDeviceBatteryState_Full = v;
}

