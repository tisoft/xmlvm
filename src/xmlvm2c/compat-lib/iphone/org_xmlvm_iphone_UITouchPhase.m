#include "xmlvm.h"

#include "org_xmlvm_iphone_UITouchPhase.h"

#define XMLVM_CURRENT_CLASS_NAME UITouchPhase
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITouchPhase

__TIB_DEFINITION_org_xmlvm_iphone_UITouchPhase __TIB_org_xmlvm_iphone_UITouchPhase = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITouchPhase, // classInitializer
    "org.xmlvm.iphone.UITouchPhase", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITouchPhase), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouchPhase;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouchPhase_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouchPhase_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouchPhase_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Began;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Moved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Ended;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Began",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITouchPhase_Began,
    "",
    JAVA_NULL},
    {"Moved",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITouchPhase_Moved,
    "",
    JAVA_NULL},
    {"Stationary",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITouchPhase_Stationary,
    "",
    JAVA_NULL},
    {"Ended",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITouchPhase_Ended,
    "",
    JAVA_NULL},
    {"Cancelled",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITouchPhase();
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

void __INIT_org_xmlvm_iphone_UITouchPhase()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITouchPhase);
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITouchPhase();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITouchPhase);
}

void __INIT_IMPL_org_xmlvm_iphone_UITouchPhase()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITouchPhase.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UITouchPhase.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITouchPhase;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITouchPhase.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UITouchPhase.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITouchPhase.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
        _STATIC_org_xmlvm_iphone_UITouchPhase_Began = 0;
        _STATIC_org_xmlvm_iphone_UITouchPhase_Moved = 1;
        _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary = 2;
        _STATIC_org_xmlvm_iphone_UITouchPhase_Ended = 3;
        _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled = 4;

        __TIB_org_xmlvm_iphone_UITouchPhase.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITouchPhase.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITouchPhase.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITouchPhase.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITouchPhase.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITouchPhase.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITouchPhase.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITouchPhase.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITouchPhase = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITouchPhase);
        __TIB_org_xmlvm_iphone_UITouchPhase.clazz = __CLASS_org_xmlvm_iphone_UITouchPhase;
        __CLASS_org_xmlvm_iphone_UITouchPhase_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITouchPhase, 3);
        __CLASS_org_xmlvm_iphone_UITouchPhase_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITouchPhase, 2);
        __CLASS_org_xmlvm_iphone_UITouchPhase_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITouchPhase, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITouchPhase]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITouchPhase.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITouchPhase(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITouchPhase]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITouchPhase(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouchPhase()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    org_xmlvm_iphone_UITouchPhase* me = (org_xmlvm_iphone_UITouchPhase*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITouchPhase));
    me->tib = &__TIB_org_xmlvm_iphone_UITouchPhase;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITouchPhase(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITouchPhase]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouchPhase()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Began()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Began;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Began(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Began = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Moved()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Moved;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Moved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Moved = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Stationary()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Stationary(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Stationary = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Ended()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Ended;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Ended(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Ended = v;
}

JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Cancelled()
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    return _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled;
}

void org_xmlvm_iphone_UITouchPhase_PUT_Cancelled(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITouchPhase.classInitialized) __INIT_org_xmlvm_iphone_UITouchPhase();
    _STATIC_org_xmlvm_iphone_UITouchPhase_Cancelled = v;
}

