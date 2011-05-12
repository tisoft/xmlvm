#include "xmlvm.h"

#include "org_xmlvm_iphone_UIControlState.h"

#define XMLVM_CURRENT_CLASS_NAME UIControlState
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControlState

__TIB_DEFINITION_org_xmlvm_iphone_UIControlState __TIB_org_xmlvm_iphone_UIControlState = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIControlState, // classInitializer
    "org.xmlvm.iphone.UIControlState", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIControlState), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlState;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlState_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlState_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlState_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Normal;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Highlighted;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Disabled;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Selected;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlState_Reserved;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Normal",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_Normal,
    "",
    JAVA_NULL},
    {"Highlighted",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_Highlighted,
    "",
    JAVA_NULL},
    {"Disabled",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_Disabled,
    "",
    JAVA_NULL},
    {"Selected",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_Selected,
    "",
    JAVA_NULL},
    {"ApplicationReserved",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved,
    "",
    JAVA_NULL},
    {"Reserved",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlState_Reserved,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIControlState();
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

void __INIT_org_xmlvm_iphone_UIControlState()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIControlState);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIControlState.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIControlState.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIControlState);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIControlState.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIControlState.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIControlState();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIControlState()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIControlState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControlState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIControlState.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIControlState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIControlState_Normal = 0;
    _STATIC_org_xmlvm_iphone_UIControlState_Highlighted = 1;
    _STATIC_org_xmlvm_iphone_UIControlState_Disabled = 2;
    _STATIC_org_xmlvm_iphone_UIControlState_Selected = 4;
    _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved = 16711680;
    _STATIC_org_xmlvm_iphone_UIControlState_Reserved = -16777216;

    __TIB_org_xmlvm_iphone_UIControlState.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlState.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlState.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlState.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlState.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlState.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlState.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIControlState = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlState);
    __TIB_org_xmlvm_iphone_UIControlState.clazz = __CLASS_org_xmlvm_iphone_UIControlState;
    __TIB_org_xmlvm_iphone_UIControlState.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIControlState_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlState);
    __CLASS_org_xmlvm_iphone_UIControlState_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlState_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIControlState_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlState_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIControlState.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIControlState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlState()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    org_xmlvm_iphone_UIControlState* me = (org_xmlvm_iphone_UIControlState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlState));
    me->tib = &__TIB_org_xmlvm_iphone_UIControlState;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlState()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Normal()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Normal;
}

void org_xmlvm_iphone_UIControlState_PUT_Normal(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Normal = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Highlighted()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Highlighted;
}

void org_xmlvm_iphone_UIControlState_PUT_Highlighted(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Highlighted = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Disabled()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Disabled;
}

void org_xmlvm_iphone_UIControlState_PUT_Disabled(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Disabled = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Selected()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Selected;
}

void org_xmlvm_iphone_UIControlState_PUT_Selected(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Selected = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_ApplicationReserved()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved;
}

void org_xmlvm_iphone_UIControlState_PUT_ApplicationReserved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_ApplicationReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlState_GET_Reserved()
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    return _STATIC_org_xmlvm_iphone_UIControlState_Reserved;
}

void org_xmlvm_iphone_UIControlState_PUT_Reserved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlState.classInitialized) __INIT_org_xmlvm_iphone_UIControlState();
    _STATIC_org_xmlvm_iphone_UIControlState_Reserved = v;
}

