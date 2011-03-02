#include "xmlvm.h"

#include "org_xmlvm_iphone_UIControlEvent.h"

#define XMLVM_CURRENT_CLASS_NAME UIControlEvent
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControlEvent

__TIB_DEFINITION_org_xmlvm_iphone_UIControlEvent __TIB_org_xmlvm_iphone_UIControlEvent = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIControlEvent, // classInitializer
    "org.xmlvm.iphone.UIControlEvent", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIControlEvent), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlEvent;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlEvent_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"TouchDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown,
    "",
    JAVA_NULL},
    {"TouchDownRepeat",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat,
    "",
    JAVA_NULL},
    {"TouchDragInside",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside,
    "",
    JAVA_NULL},
    {"TouchDragOutside",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside,
    "",
    JAVA_NULL},
    {"TouchDragEnter",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter,
    "",
    JAVA_NULL},
    {"TouchDragExit",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit,
    "",
    JAVA_NULL},
    {"TouchUpInside",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside,
    "",
    JAVA_NULL},
    {"TouchUpOutside",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside,
    "",
    JAVA_NULL},
    {"TouchCancel",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel,
    "",
    JAVA_NULL},
    {"ValueChanged",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged,
    "",
    JAVA_NULL},
    {"EditingDidBegin",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin,
    "",
    JAVA_NULL},
    {"EditingChanged",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged,
    "",
    JAVA_NULL},
    {"EditingDidEnd",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd,
    "",
    JAVA_NULL},
    {"EditingDidEndOnExit",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit,
    "",
    JAVA_NULL},
    {"AllTouchEvents",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents,
    "",
    JAVA_NULL},
    {"AllEditingEvents",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents,
    "",
    JAVA_NULL},
    {"ApplicationReserved",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved,
    "",
    JAVA_NULL},
    {"SystemReserved",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved,
    "",
    JAVA_NULL},
    {"AllEvents",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIControlEvent();
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

void __INIT_org_xmlvm_iphone_UIControlEvent()
{
    __TIB_org_xmlvm_iphone_UIControlEvent.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIControlEvent.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControlEvent.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIControlEvent.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIControlEvent.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown = 1;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat = 2;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside = 4;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside = 8;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter = 16;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit = 32;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside = 64;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside = 128;
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel = 256;
    _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged = 4096;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin = 65536;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged = 131072;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd = 262144;
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit = 524288;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents = 4095;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents = 983040;
    _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved = 251658240;
    _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved = -268435456;
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents = -1;

    __TIB_org_xmlvm_iphone_UIControlEvent.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlEvent.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlEvent.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlEvent.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlEvent.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlEvent.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlEvent.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlEvent.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIControlEvent = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlEvent);
    __TIB_org_xmlvm_iphone_UIControlEvent.clazz = __CLASS_org_xmlvm_iphone_UIControlEvent;
    __CLASS_org_xmlvm_iphone_UIControlEvent_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlEvent, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIControlEvent(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlEvent()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    org_xmlvm_iphone_UIControlEvent* me = (org_xmlvm_iphone_UIControlEvent*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlEvent));
    me->tib = &__TIB_org_xmlvm_iphone_UIControlEvent;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlEvent]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDown()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDown = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDownRepeat()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDownRepeat(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDownRepeat = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragInside()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragInside(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragInside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragOutside()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragOutside(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragOutside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragEnter()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragEnter(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragEnter = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchDragExit()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchDragExit(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchDragExit = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchUpInside()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchUpInside(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpInside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchUpOutside()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchUpOutside(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchUpOutside = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_TouchCancel()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel;
}

void org_xmlvm_iphone_UIControlEvent_PUT_TouchCancel(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_TouchCancel = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_ValueChanged()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged;
}

void org_xmlvm_iphone_UIControlEvent_PUT_ValueChanged(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_ValueChanged = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidBegin()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidBegin(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidBegin = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingChanged()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingChanged(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingChanged = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidEnd()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidEnd(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEnd = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_EditingDidEndOnExit()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit;
}

void org_xmlvm_iphone_UIControlEvent_PUT_EditingDidEndOnExit(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_EditingDidEndOnExit = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllTouchEvents()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllTouchEvents(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllTouchEvents = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllEditingEvents()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllEditingEvents(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEditingEvents = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_ApplicationReserved()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved;
}

void org_xmlvm_iphone_UIControlEvent_PUT_ApplicationReserved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_ApplicationReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_SystemReserved()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved;
}

void org_xmlvm_iphone_UIControlEvent_PUT_SystemReserved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_SystemReserved = v;
}

JAVA_INT org_xmlvm_iphone_UIControlEvent_GET_AllEvents()
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    return _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents;
}

void org_xmlvm_iphone_UIControlEvent_PUT_AllEvents(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlEvent.classInitialized) __INIT_org_xmlvm_iphone_UIControlEvent();
    _STATIC_org_xmlvm_iphone_UIControlEvent_AllEvents = v;
}

