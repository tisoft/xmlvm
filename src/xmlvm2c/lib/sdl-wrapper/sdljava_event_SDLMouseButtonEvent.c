#include "xmlvm.h"

#include "sdljava_event_SDLMouseButtonEvent.h"

#define XMLVM_CURRENT_CLASS_NAME SDLMouseButtonEvent
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_event_SDLMouseButtonEvent

__TIB_DEFINITION_sdljava_event_SDLMouseButtonEvent __TIB_sdljava_event_SDLMouseButtonEvent = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_event_SDLMouseButtonEvent, // classInitializer
    "sdljava.event.SDLMouseButtonEvent", // className
    "sdljava.event", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_sdljava_event_SDLEvent, // extends
    sizeof(sdljava_event_SDLMouseButtonEvent), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent;
JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_event_SDLMouseButtonEvent();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_event_SDLMouseButtonEvent___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getX",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"getY",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        conversion.i = (JAVA_INT) sdljava_event_SDLMouseButtonEvent_getX__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        conversion.i = (JAVA_INT) sdljava_event_SDLMouseButtonEvent_getY__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_event_SDLMouseButtonEvent()
{
    staticInitializerLock(&__TIB_sdljava_event_SDLMouseButtonEvent);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_event_SDLMouseButtonEvent.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_event_SDLMouseButtonEvent.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_event_SDLMouseButtonEvent);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_event_SDLMouseButtonEvent.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_event_SDLMouseButtonEvent.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_event_SDLMouseButtonEvent.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.event.SDLMouseButtonEvent")
        __INIT_IMPL_sdljava_event_SDLMouseButtonEvent();
    }
}

void __INIT_IMPL_sdljava_event_SDLMouseButtonEvent()
{
    // Initialize base class if necessary
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    __TIB_sdljava_event_SDLMouseButtonEvent.newInstanceFunc = __NEW_INSTANCE_sdljava_event_SDLMouseButtonEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_event_SDLMouseButtonEvent.vtable, __TIB_sdljava_event_SDLEvent.vtable, sizeof(__TIB_sdljava_event_SDLEvent.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_event_SDLMouseButtonEvent.numImplementedInterfaces = 0;
    __TIB_sdljava_event_SDLMouseButtonEvent.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_event_SDLMouseButtonEvent.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_event_SDLMouseButtonEvent.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_event_SDLMouseButtonEvent.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_event_SDLMouseButtonEvent.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_event_SDLMouseButtonEvent.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_event_SDLMouseButtonEvent.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_event_SDLMouseButtonEvent.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_event_SDLMouseButtonEvent.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_event_SDLMouseButtonEvent = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_event_SDLMouseButtonEvent);
    __TIB_sdljava_event_SDLMouseButtonEvent.clazz = __CLASS_sdljava_event_SDLMouseButtonEvent;
    __TIB_sdljava_event_SDLMouseButtonEvent.baseType = JAVA_NULL;
    __CLASS_sdljava_event_SDLMouseButtonEvent_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLMouseButtonEvent);
    __CLASS_sdljava_event_SDLMouseButtonEvent_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLMouseButtonEvent_1ARRAY);
    __CLASS_sdljava_event_SDLMouseButtonEvent_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLMouseButtonEvent_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_event_SDLMouseButtonEvent]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_event_SDLMouseButtonEvent.classInitialized = 1;
}

void __DELETE_sdljava_event_SDLMouseButtonEvent(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_event_SDLMouseButtonEvent]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_event_SDLMouseButtonEvent(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_sdljava_event_SDLEvent(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_event_SDLMouseButtonEvent]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_event_SDLMouseButtonEvent()
{
    if (!__TIB_sdljava_event_SDLMouseButtonEvent.classInitialized) __INIT_sdljava_event_SDLMouseButtonEvent();
    sdljava_event_SDLMouseButtonEvent* me = (sdljava_event_SDLMouseButtonEvent*) XMLVM_MALLOC(sizeof(sdljava_event_SDLMouseButtonEvent));
    me->tib = &__TIB_sdljava_event_SDLMouseButtonEvent;
    __INIT_INSTANCE_MEMBERS_sdljava_event_SDLMouseButtonEvent(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_event_SDLMouseButtonEvent]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_event_SDLMouseButtonEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_event_SDLMouseButtonEvent();
    sdljava_event_SDLMouseButtonEvent___INIT___(me);
    return me;
}

void sdljava_event_SDLMouseButtonEvent___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLMouseButtonEvent___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_event_SDLMouseButtonEvent_getX__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLMouseButtonEvent_getX__]
    sdljava_event_SDLEvent *self = (sdljava_event_SDLEvent *) me;
    return (JAVA_INT) (self->fields.sdljava_event_SDLEvent.delegate.button.x);
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_event_SDLMouseButtonEvent_getY__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLMouseButtonEvent_getY__]
    sdljava_event_SDLEvent *self = (sdljava_event_SDLEvent *) me;
    return (JAVA_INT) (self->fields.sdljava_event_SDLEvent.delegate.button.y);
    //XMLVM_END_WRAPPER
}

