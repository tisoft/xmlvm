#include "xmlvm.h"

#include "org_xmlvm_iphone_GKSessionMode.h"

#define XMLVM_CURRENT_CLASS_NAME GKSessionMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKSessionMode

__TIB_DEFINITION_org_xmlvm_iphone_GKSessionMode __TIB_org_xmlvm_iphone_GKSessionMode = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_GKSessionMode, // classInitializer
    "org.xmlvm.iphone.GKSessionMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_GKSessionMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_GKSessionMode_Server;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKSessionMode_Client;
static JAVA_INT _STATIC_org_xmlvm_iphone_GKSessionMode_Peer;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Server",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKSessionMode_Server,
    "",
    JAVA_NULL},
    {"Client",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKSessionMode_Client,
    "",
    JAVA_NULL},
    {"Peer",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_GKSessionMode_Peer,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKSessionMode();
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

void __INIT_org_xmlvm_iphone_GKSessionMode()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_GKSessionMode);
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_GKSessionMode();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_GKSessionMode);
}

void __INIT_IMPL_org_xmlvm_iphone_GKSessionMode()
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_GKSessionMode.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_GKSessionMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKSessionMode;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKSessionMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_GKSessionMode.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_GKSessionMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
        _STATIC_org_xmlvm_iphone_GKSessionMode_Server = 0;
        _STATIC_org_xmlvm_iphone_GKSessionMode_Client = 1;
        _STATIC_org_xmlvm_iphone_GKSessionMode_Peer = 2;

        __TIB_org_xmlvm_iphone_GKSessionMode.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKSessionMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKSessionMode.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_GKSessionMode.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKSessionMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKSessionMode.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_GKSessionMode.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKSessionMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_GKSessionMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKSessionMode);
        __TIB_org_xmlvm_iphone_GKSessionMode.clazz = __CLASS_org_xmlvm_iphone_GKSessionMode;
        __CLASS_org_xmlvm_iphone_GKSessionMode_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSessionMode, 3);
        __CLASS_org_xmlvm_iphone_GKSessionMode_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSessionMode, 2);
        __CLASS_org_xmlvm_iphone_GKSessionMode_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSessionMode, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKSessionMode]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_GKSessionMode.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_GKSessionMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKSessionMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSessionMode(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKSessionMode()
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    org_xmlvm_iphone_GKSessionMode* me = (org_xmlvm_iphone_GKSessionMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKSessionMode));
    me->tib = &__TIB_org_xmlvm_iphone_GKSessionMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSessionMode(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKSessionMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKSessionMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Server()
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    return _STATIC_org_xmlvm_iphone_GKSessionMode_Server;
}

void org_xmlvm_iphone_GKSessionMode_PUT_Server(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    _STATIC_org_xmlvm_iphone_GKSessionMode_Server = v;
}

JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Client()
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    return _STATIC_org_xmlvm_iphone_GKSessionMode_Client;
}

void org_xmlvm_iphone_GKSessionMode_PUT_Client(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    _STATIC_org_xmlvm_iphone_GKSessionMode_Client = v;
}

JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Peer()
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    return _STATIC_org_xmlvm_iphone_GKSessionMode_Peer;
}

void org_xmlvm_iphone_GKSessionMode_PUT_Peer(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_GKSessionMode.classInitialized) __INIT_org_xmlvm_iphone_GKSessionMode();
    _STATIC_org_xmlvm_iphone_GKSessionMode_Peer = v;
}

