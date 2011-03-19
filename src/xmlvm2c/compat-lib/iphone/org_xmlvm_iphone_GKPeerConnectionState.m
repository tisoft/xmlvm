#include "xmlvm.h"

#include "org_xmlvm_iphone_GKPeerConnectionState.h"

#define XMLVM_CURRENT_CLASS_NAME GKPeerConnectionState
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKPeerConnectionState

__TIB_DEFINITION_org_xmlvm_iphone_GKPeerConnectionState __TIB_org_xmlvm_iphone_GKPeerConnectionState = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_GKPeerConnectionState, // classInitializer
    "org.xmlvm.iphone.GKPeerConnectionState", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_GKPeerConnectionState), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Available;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Unavailable;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connected;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Disconnected;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connecting;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Available",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKPeerConnectionState_Available,
    "",
    JAVA_NULL},
    {"Unavailable",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKPeerConnectionState_Unavailable,
    "",
    JAVA_NULL},
    {"Connected",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connected,
    "",
    JAVA_NULL},
    {"Disconnected",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKPeerConnectionState_Disconnected,
    "",
    JAVA_NULL},
    {"Connecting",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connecting,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKPeerConnectionState();
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

void __INIT_org_xmlvm_iphone_GKPeerConnectionState()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_GKPeerConnectionState);
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_GKPeerConnectionState();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_GKPeerConnectionState);
}

void __INIT_IMPL_org_xmlvm_iphone_GKPeerConnectionState()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKPeerConnectionState;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKPeerConnectionState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
        _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Available = 0;
        _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Unavailable = 1;
        _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connected = 2;
        _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Disconnected = 3;
        _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connecting = 4;

        __TIB_org_xmlvm_iphone_GKPeerConnectionState.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_GKPeerConnectionState = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKPeerConnectionState);
        __TIB_org_xmlvm_iphone_GKPeerConnectionState.clazz = __CLASS_org_xmlvm_iphone_GKPeerConnectionState;
        __CLASS_org_xmlvm_iphone_GKPeerConnectionState_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerConnectionState, 3);
        __CLASS_org_xmlvm_iphone_GKPeerConnectionState_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerConnectionState, 2);
        __CLASS_org_xmlvm_iphone_GKPeerConnectionState_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerConnectionState, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKPeerConnectionState]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_GKPeerConnectionState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKPeerConnectionState]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerConnectionState(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerConnectionState()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    org_xmlvm_iphone_GKPeerConnectionState* me = (org_xmlvm_iphone_GKPeerConnectionState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKPeerConnectionState));
    me->tib = &__TIB_org_xmlvm_iphone_GKPeerConnectionState;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerConnectionState(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKPeerConnectionState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerConnectionState()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Available()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    return _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Available;
}

void org_xmlvm_iphone_GKPeerConnectionState_PUT_Available(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Available = v;
}

JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Unavailable()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    return _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Unavailable;
}

void org_xmlvm_iphone_GKPeerConnectionState_PUT_Unavailable(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Unavailable = v;
}

JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Connected()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    return _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connected;
}

void org_xmlvm_iphone_GKPeerConnectionState_PUT_Connected(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connected = v;
}

JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Disconnected()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    return _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Disconnected;
}

void org_xmlvm_iphone_GKPeerConnectionState_PUT_Disconnected(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Disconnected = v;
}

JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Connecting()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    return _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connecting;
}

void org_xmlvm_iphone_GKPeerConnectionState_PUT_Connecting(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKPeerConnectionState.classInitialized) __INIT_org_xmlvm_iphone_GKPeerConnectionState();
    _STATIC_org_xmlvm_iphone_GKPeerConnectionState_Connecting = v;
}

