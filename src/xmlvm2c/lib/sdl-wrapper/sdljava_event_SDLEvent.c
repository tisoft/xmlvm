#include "xmlvm.h"

#include "sdljava_event_SDLEvent.h"

#define XMLVM_CURRENT_CLASS_NAME SDLEvent
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_event_SDLEvent

__TIB_DEFINITION_sdljava_event_SDLEvent __TIB_sdljava_event_SDLEvent = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_event_SDLEvent, // classInitializer
    "sdljava.event.SDLEvent", // className
    "sdljava.event", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_event_SDLEvent), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_event_SDLEvent;
JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void sdljava_event_SDLEvent___INIT___INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, SDL_Event *evt)
{
	sdljava_event_SDLEvent___INIT___(me);
    sdljava_event_SDLEvent *self = (sdljava_event_SDLEvent *) me;
    self->fields.sdljava_event_SDLEvent.delegate = *evt; // Copy event data
    // TODO: Copying the event data is not ideal since this is called often
}
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENTMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_ADDEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_APPACTIVE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_APPINPUTFOCUS;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_APPMOUSEFOCUS;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_LEFT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_MIDDLE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_RIGHT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELDOWN;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELUP;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_DELAY;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_INTERVAL;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_DISABLE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_ENABLE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_GETEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_IGNORE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTIONMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTIONMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWNMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUPMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYEVENTMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTIONMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWNMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_KEYUP;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_KEYUPMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWNMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUPMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEEVENTMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTIONMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_NOEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_PEEKEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_PRESSED;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_QUERY;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_QUIT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_QUITMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_RELEASED;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENTMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_USEREVENT;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSEMASK;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE;
static JAVA_INT _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZEMASK;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"SDL_ACTIVEEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT,
    "",
    JAVA_NULL},
    {"SDL_ACTIVEEVENTMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENTMASK,
    "",
    JAVA_NULL},
    {"SDL_ADDEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_ADDEVENT,
    "",
    JAVA_NULL},
    {"SDL_APPACTIVE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_APPACTIVE,
    "",
    JAVA_NULL},
    {"SDL_APPINPUTFOCUS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_APPINPUTFOCUS,
    "",
    JAVA_NULL},
    {"SDL_APPMOUSEFOCUS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_APPMOUSEFOCUS,
    "",
    JAVA_NULL},
    {"SDL_BUTTON_LEFT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_BUTTON_LEFT,
    "",
    JAVA_NULL},
    {"SDL_BUTTON_MIDDLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_BUTTON_MIDDLE,
    "",
    JAVA_NULL},
    {"SDL_BUTTON_RIGHT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_BUTTON_RIGHT,
    "",
    JAVA_NULL},
    {"SDL_BUTTON_WHEELDOWN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELDOWN,
    "",
    JAVA_NULL},
    {"SDL_BUTTON_WHEELUP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELUP,
    "",
    JAVA_NULL},
    {"SDL_DEFAULT_REPEAT_DELAY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_DELAY,
    "",
    JAVA_NULL},
    {"SDL_DEFAULT_REPEAT_INTERVAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_INTERVAL,
    "",
    JAVA_NULL},
    {"SDL_DISABLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_DISABLE,
    "",
    JAVA_NULL},
    {"SDL_ENABLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_ENABLE,
    "",
    JAVA_NULL},
    {"SDL_GETEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_GETEVENT,
    "",
    JAVA_NULL},
    {"SDL_IGNORE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_IGNORE,
    "",
    JAVA_NULL},
    {"SDL_JOYAXISMOTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION,
    "",
    JAVA_NULL},
    {"SDL_JOYAXISMOTIONMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTIONMASK,
    "",
    JAVA_NULL},
    {"SDL_JOYBALLMOTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION,
    "",
    JAVA_NULL},
    {"SDL_JOYBALLMOTIONMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTIONMASK,
    "",
    JAVA_NULL},
    {"SDL_JOYBUTTONDOWN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN,
    "",
    JAVA_NULL},
    {"SDL_JOYBUTTONDOWNMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWNMASK,
    "",
    JAVA_NULL},
    {"SDL_JOYBUTTONUP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP,
    "",
    JAVA_NULL},
    {"SDL_JOYBUTTONUPMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUPMASK,
    "",
    JAVA_NULL},
    {"SDL_JOYEVENTMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYEVENTMASK,
    "",
    JAVA_NULL},
    {"SDL_JOYHATMOTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION,
    "",
    JAVA_NULL},
    {"SDL_JOYHATMOTIONMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTIONMASK,
    "",
    JAVA_NULL},
    {"SDL_KEYDOWN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN,
    "",
    JAVA_NULL},
    {"SDL_KEYDOWNMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_KEYDOWNMASK,
    "",
    JAVA_NULL},
    {"SDL_KEYUP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_KEYUP,
    "",
    JAVA_NULL},
    {"SDL_KEYUPMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_KEYUPMASK,
    "",
    JAVA_NULL},
    {"SDL_MOUSEBUTTONDOWN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN,
    "",
    JAVA_NULL},
    {"SDL_MOUSEBUTTONDOWNMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWNMASK,
    "",
    JAVA_NULL},
    {"SDL_MOUSEBUTTONUP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP,
    "",
    JAVA_NULL},
    {"SDL_MOUSEBUTTONUPMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUPMASK,
    "",
    JAVA_NULL},
    {"SDL_MOUSEEVENTMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEEVENTMASK,
    "",
    JAVA_NULL},
    {"SDL_MOUSEMOTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION,
    "",
    JAVA_NULL},
    {"SDL_MOUSEMOTIONMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTIONMASK,
    "",
    JAVA_NULL},
    {"SDL_NOEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_NOEVENT,
    "",
    JAVA_NULL},
    {"SDL_PEEKEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_PEEKEVENT,
    "",
    JAVA_NULL},
    {"SDL_PRESSED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_PRESSED,
    "",
    JAVA_NULL},
    {"SDL_QUERY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_QUERY,
    "",
    JAVA_NULL},
    {"SDL_QUIT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_QUIT,
    "",
    JAVA_NULL},
    {"SDL_QUITMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_QUITMASK,
    "",
    JAVA_NULL},
    {"SDL_RELEASED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_RELEASED,
    "",
    JAVA_NULL},
    {"SDL_SYSWMEVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT,
    "",
    JAVA_NULL},
    {"SDL_SYSWMEVENTMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENTMASK,
    "",
    JAVA_NULL},
    {"SDL_USEREVENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_USEREVENT,
    "",
    JAVA_NULL},
    {"SDL_VIDEOEXPOSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE,
    "",
    JAVA_NULL},
    {"SDL_VIDEOEXPOSEMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSEMASK,
    "",
    JAVA_NULL},
    {"SDL_VIDEORESIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE,
    "",
    JAVA_NULL},
    {"SDL_VIDEORESIZEMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZEMASK,
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_event_SDLEvent();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_event_SDLEvent___INIT___(obj);
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
    {"getType",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"pollEvent",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lsdljava/event/SDLEvent;",
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
        conversion.i = (JAVA_INT) sdljava_event_SDLEvent_getType__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        result = (JAVA_OBJECT) sdljava_event_SDLEvent_pollEvent__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_event_SDLEvent()
{
    staticInitializerLock(&__TIB_sdljava_event_SDLEvent);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_event_SDLEvent.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_event_SDLEvent.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_event_SDLEvent);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_event_SDLEvent.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_event_SDLEvent.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_event_SDLEvent.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.event.SDLEvent")
        __INIT_IMPL_sdljava_event_SDLEvent();
    }
}

void __INIT_IMPL_sdljava_event_SDLEvent()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_event_SDLEvent.newInstanceFunc = __NEW_INSTANCE_sdljava_event_SDLEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_event_SDLEvent.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_event_SDLEvent.numImplementedInterfaces = 0;
    __TIB_sdljava_event_SDLEvent.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENTMASK = 2;
    _STATIC_sdljava_event_SDLEvent_SDL_ADDEVENT = 0;
    _STATIC_sdljava_event_SDLEvent_SDL_APPACTIVE = 4;
    _STATIC_sdljava_event_SDLEvent_SDL_APPINPUTFOCUS = 2;
    _STATIC_sdljava_event_SDLEvent_SDL_APPMOUSEFOCUS = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_LEFT = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_MIDDLE = 2;
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_RIGHT = 3;
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELDOWN = 5;
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELUP = 4;
    _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_DELAY = 500;
    _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_INTERVAL = 30;
    _STATIC_sdljava_event_SDLEvent_SDL_DISABLE = 0;
    _STATIC_sdljava_event_SDLEvent_SDL_ENABLE = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_GETEVENT = 2;
    _STATIC_sdljava_event_SDLEvent_SDL_IGNORE = 0;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION = 7;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTIONMASK = 128;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION = 8;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTIONMASK = 256;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN = 10;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWNMASK = 1024;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP = 11;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUPMASK = 2048;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYEVENTMASK = 3968;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION = 9;
    _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTIONMASK = 512;
    _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN = 2;
    _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWNMASK = 4;
    _STATIC_sdljava_event_SDLEvent_SDL_KEYUP = 3;
    _STATIC_sdljava_event_SDLEvent_SDL_KEYUPMASK = 8;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN = 5;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWNMASK = 32;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP = 6;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUPMASK = 64;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEEVENTMASK = 112;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION = 4;
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTIONMASK = 16;
    _STATIC_sdljava_event_SDLEvent_SDL_NOEVENT = 0;
    _STATIC_sdljava_event_SDLEvent_SDL_PEEKEVENT = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_PRESSED = 1;
    _STATIC_sdljava_event_SDLEvent_SDL_QUERY = -1;
    _STATIC_sdljava_event_SDLEvent_SDL_QUIT = 12;
    _STATIC_sdljava_event_SDLEvent_SDL_QUITMASK = 4096;
    _STATIC_sdljava_event_SDLEvent_SDL_RELEASED = 0;
    _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT = 13;
    _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENTMASK = 8192;
    _STATIC_sdljava_event_SDLEvent_SDL_USEREVENT = 24;
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE = 17;
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSEMASK = 131072;
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE = 16;
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZEMASK = 65536;

    __TIB_sdljava_event_SDLEvent.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_event_SDLEvent.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_event_SDLEvent.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_event_SDLEvent.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_event_SDLEvent.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_event_SDLEvent.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_event_SDLEvent.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_event_SDLEvent.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_event_SDLEvent = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_event_SDLEvent);
    __TIB_sdljava_event_SDLEvent.clazz = __CLASS_sdljava_event_SDLEvent;
    __TIB_sdljava_event_SDLEvent.baseType = JAVA_NULL;
    __CLASS_sdljava_event_SDLEvent_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLEvent);
    __CLASS_sdljava_event_SDLEvent_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLEvent_1ARRAY);
    __CLASS_sdljava_event_SDLEvent_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_event_SDLEvent_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_event_SDLEvent]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_event_SDLEvent.classInitialized = 1;
}

void __DELETE_sdljava_event_SDLEvent(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_event_SDLEvent]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_event_SDLEvent(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_event_SDLEvent]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_event_SDLEvent()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    sdljava_event_SDLEvent* me = (sdljava_event_SDLEvent*) XMLVM_MALLOC(sizeof(sdljava_event_SDLEvent));
    me->tib = &__TIB_sdljava_event_SDLEvent;
    __INIT_INSTANCE_MEMBERS_sdljava_event_SDLEvent(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_event_SDLEvent]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_event_SDLEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_event_SDLEvent();
    sdljava_event_SDLEvent___INIT___(me);
    return me;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_ACTIVEEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_ACTIVEEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_ACTIVEEVENTMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENTMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_ACTIVEEVENTMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENTMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_ADDEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_ADDEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_ADDEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_ADDEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPACTIVE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_APPACTIVE;
}

void sdljava_event_SDLEvent_PUT_SDL_APPACTIVE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_APPACTIVE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPINPUTFOCUS()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_APPINPUTFOCUS;
}

void sdljava_event_SDLEvent_PUT_SDL_APPINPUTFOCUS(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_APPINPUTFOCUS = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPMOUSEFOCUS()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_APPMOUSEFOCUS;
}

void sdljava_event_SDLEvent_PUT_SDL_APPMOUSEFOCUS(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_APPMOUSEFOCUS = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_LEFT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_LEFT;
}

void sdljava_event_SDLEvent_PUT_SDL_BUTTON_LEFT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_LEFT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_MIDDLE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_MIDDLE;
}

void sdljava_event_SDLEvent_PUT_SDL_BUTTON_MIDDLE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_MIDDLE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_RIGHT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_RIGHT;
}

void sdljava_event_SDLEvent_PUT_SDL_BUTTON_RIGHT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_RIGHT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_WHEELDOWN()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELDOWN;
}

void sdljava_event_SDLEvent_PUT_SDL_BUTTON_WHEELDOWN(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELDOWN = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_WHEELUP()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELUP;
}

void sdljava_event_SDLEvent_PUT_SDL_BUTTON_WHEELUP(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_BUTTON_WHEELUP = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_DEFAULT_REPEAT_DELAY()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_DELAY;
}

void sdljava_event_SDLEvent_PUT_SDL_DEFAULT_REPEAT_DELAY(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_DELAY = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_DEFAULT_REPEAT_INTERVAL()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_INTERVAL;
}

void sdljava_event_SDLEvent_PUT_SDL_DEFAULT_REPEAT_INTERVAL(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_DEFAULT_REPEAT_INTERVAL = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_DISABLE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_DISABLE;
}

void sdljava_event_SDLEvent_PUT_SDL_DISABLE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_DISABLE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_ENABLE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_ENABLE;
}

void sdljava_event_SDLEvent_PUT_SDL_ENABLE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_ENABLE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_GETEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_GETEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_GETEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_GETEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_IGNORE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_IGNORE;
}

void sdljava_event_SDLEvent_PUT_SDL_IGNORE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_IGNORE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYAXISMOTION()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYAXISMOTION(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYAXISMOTIONMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTIONMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYAXISMOTIONMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTIONMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBALLMOTION()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBALLMOTION(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBALLMOTIONMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTIONMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBALLMOTIONMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTIONMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONDOWN()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONDOWN(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONDOWNMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWNMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONDOWNMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWNMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONUP()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONUP(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONUPMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUPMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONUPMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUPMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYEVENTMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYEVENTMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYEVENTMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYEVENTMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYHATMOTION()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYHATMOTION(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYHATMOTIONMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTIONMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_JOYHATMOTIONMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTIONMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYDOWN()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN;
}

void sdljava_event_SDLEvent_PUT_SDL_KEYDOWN(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYDOWNMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWNMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_KEYDOWNMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWNMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYUP()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_KEYUP;
}

void sdljava_event_SDLEvent_PUT_SDL_KEYUP(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_KEYUP = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYUPMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_KEYUPMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_KEYUPMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_KEYUPMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONDOWN()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONDOWN(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONDOWNMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWNMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONDOWNMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWNMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONUP()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONUP(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONUPMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUPMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONUPMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUPMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEEVENTMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEEVENTMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEEVENTMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEEVENTMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEMOTION()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEMOTION(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEMOTIONMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTIONMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_MOUSEMOTIONMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTIONMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_NOEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_NOEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_NOEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_NOEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_PEEKEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_PEEKEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_PEEKEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_PEEKEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_PRESSED()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_PRESSED;
}

void sdljava_event_SDLEvent_PUT_SDL_PRESSED(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_PRESSED = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUERY()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_QUERY;
}

void sdljava_event_SDLEvent_PUT_SDL_QUERY(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_QUERY = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUIT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_QUIT;
}

void sdljava_event_SDLEvent_PUT_SDL_QUIT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_QUIT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUITMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_QUITMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_QUITMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_QUITMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_RELEASED()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_RELEASED;
}

void sdljava_event_SDLEvent_PUT_SDL_RELEASED(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_RELEASED = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_SYSWMEVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_SYSWMEVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_SYSWMEVENTMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENTMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_SYSWMEVENTMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENTMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_USEREVENT()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_USEREVENT;
}

void sdljava_event_SDLEvent_PUT_SDL_USEREVENT(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_USEREVENT = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEOEXPOSE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE;
}

void sdljava_event_SDLEvent_PUT_SDL_VIDEOEXPOSE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEOEXPOSEMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSEMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_VIDEOEXPOSEMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSEMASK = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEORESIZE()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE;
}

void sdljava_event_SDLEvent_PUT_SDL_VIDEORESIZE(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE = v;
}

JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEORESIZEMASK()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    return _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZEMASK;
}

void sdljava_event_SDLEvent_PUT_SDL_VIDEORESIZEMASK(JAVA_INT v)
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZEMASK = v;
}

void sdljava_event_SDLEvent___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLEvent___INIT___]
    java_lang_Object___INIT___(me);
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_event_SDLEvent_getType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLEvent_getType__]
    sdljava_event_SDLEvent *self = (sdljava_event_SDLEvent *) me;
    int type = self->fields.sdljava_event_SDLEvent.delegate.type;
    switch (type) {
    case SDL_ACTIVEEVENT: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_ACTIVEEVENT;
    case SDL_JOYAXISMOTION: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_JOYAXISMOTION;
    case SDL_JOYBALLMOTION: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_JOYBALLMOTION;
    case SDL_JOYBUTTONDOWN: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONDOWN;
    case SDL_JOYBUTTONUP: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_JOYBUTTONUP;
    case SDL_JOYHATMOTION: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_JOYHATMOTION;
    case SDL_KEYDOWN: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_KEYDOWN;
    case SDL_KEYUP: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_KEYUP;
    case SDL_MOUSEBUTTONDOWN: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONDOWN;
    case SDL_MOUSEBUTTONUP: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_MOUSEBUTTONUP;
    case SDL_MOUSEMOTION: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_MOUSEMOTION;
    case SDL_QUIT: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_QUIT;
    case SDL_SYSWMEVENT: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_SYSWMEVENT;
    case SDL_USEREVENT: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_USEREVENT;
    case SDL_VIDEOEXPOSE: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_VIDEOEXPOSE;
    case SDL_VIDEORESIZE: return (JAVA_INT) _STATIC_sdljava_event_SDLEvent_SDL_VIDEORESIZE;
    }
    return (JAVA_INT) type;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_event_SDLEvent_pollEvent__()
{
    if (!__TIB_sdljava_event_SDLEvent.classInitialized) __INIT_sdljava_event_SDLEvent();
    //XMLVM_BEGIN_WRAPPER[sdljava_event_SDLEvent_pollEvent__]
    SDL_Event target;
    if (SDL_PollEvent(&target)) {
    	sdljava_event_SDLEvent *event;
    	switch (target.type) {
    	case SDL_MOUSEMOTION:
    		event = (sdljava_event_SDLEvent   *) __NEW_sdljava_event_SDLMouseMotionEvent  ();
    	case SDL_MOUSEBUTTONDOWN:
    	case SDL_MOUSEBUTTONUP:
    		event = (sdljava_event_SDLEvent   *) __NEW_sdljava_event_SDLMouseButtonEvent  ();
    	default:
    		event = (sdljava_event_SDLEvent   *) __NEW_sdljava_event_SDLEvent  ();
    	}
    	// Note that event types are only distinguished by class identity (TIBs from above);
    	// internal construction looks the same for all of them.
    	sdljava_event_SDLEvent___INIT___INTERNAL_CONSTRUCTOR(event, &target);
        return (JAVA_OBJECT) event;
    } else {
    	return JAVA_NULL;
    }
    //XMLVM_END_WRAPPER
}

