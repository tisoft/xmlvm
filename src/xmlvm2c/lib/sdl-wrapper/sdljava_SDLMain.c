#include "xmlvm.h"

#include "sdljava_SDLMain.h"

#define XMLVM_CURRENT_CLASS_NAME SDLMain
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_SDLMain

__TIB_DEFINITION_sdljava_SDLMain __TIB_sdljava_SDLMain = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_SDLMain, // classInitializer
    "sdljava.SDLMain", // className
    "sdljava", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_SDLMain), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_SDLMain;
JAVA_OBJECT __CLASS_sdljava_SDLMain_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLMain_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLMain_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <SDL/SDL.h>
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_AUDIO;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_CDROM;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_EVENTTHREAD;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_EVERYTHING;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_JOYSTICK;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_NOPARACHUTE;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_TIMER;
static JAVA_INT _STATIC_sdljava_SDLMain_SDL_INIT_VIDEO;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"SDL_INIT_AUDIO",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_AUDIO,
    "",
    JAVA_NULL},
    {"SDL_INIT_CDROM",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_CDROM,
    "",
    JAVA_NULL},
    {"SDL_INIT_EVENTTHREAD",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_EVENTTHREAD,
    "",
    JAVA_NULL},
    {"SDL_INIT_EVERYTHING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_EVERYTHING,
    "",
    JAVA_NULL},
    {"SDL_INIT_JOYSTICK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_JOYSTICK,
    "",
    JAVA_NULL},
    {"SDL_INIT_NOPARACHUTE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_NOPARACHUTE,
    "",
    JAVA_NULL},
    {"SDL_INIT_TIMER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_TIMER,
    "",
    JAVA_NULL},
    {"SDL_INIT_VIDEO",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_SDLMain_SDL_INIT_VIDEO,
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
    JAVA_OBJECT obj = __NEW_sdljava_SDLMain();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_SDLMain___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_long,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_long,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"init",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(J)V",
    JAVA_NULL,
    JAVA_NULL},
    {"wasInit",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(J)J",
    JAVA_NULL,
    JAVA_NULL},
    {"quit",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
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
        sdljava_SDLMain_init___long(((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_);
        break;
    case 1:
        conversion.l = (JAVA_LONG) sdljava_SDLMain_wasInit___long(((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_);
        result = __NEW_java_lang_Long();
        java_lang_Long___INIT____long(result, conversion.l);
        break;
    case 2:
        sdljava_SDLMain_quit__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_SDLMain()
{
    staticInitializerLock(&__TIB_sdljava_SDLMain);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_SDLMain.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_SDLMain.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_SDLMain);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_SDLMain.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_SDLMain.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_SDLMain.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.SDLMain")
        __INIT_IMPL_sdljava_SDLMain();
    }
}

void __INIT_IMPL_sdljava_SDLMain()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_SDLMain.newInstanceFunc = __NEW_INSTANCE_sdljava_SDLMain;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_SDLMain.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_SDLMain.numImplementedInterfaces = 0;
    __TIB_sdljava_SDLMain.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_sdljava_SDLMain_SDL_INIT_AUDIO = 16;
    _STATIC_sdljava_SDLMain_SDL_INIT_CDROM = 256;
    _STATIC_sdljava_SDLMain_SDL_INIT_EVENTTHREAD = 16777216;
    _STATIC_sdljava_SDLMain_SDL_INIT_EVERYTHING = 65535;
    _STATIC_sdljava_SDLMain_SDL_INIT_JOYSTICK = 512;
    _STATIC_sdljava_SDLMain_SDL_INIT_NOPARACHUTE = 1048576;
    _STATIC_sdljava_SDLMain_SDL_INIT_TIMER = 1;
    _STATIC_sdljava_SDLMain_SDL_INIT_VIDEO = 32;

    __TIB_sdljava_SDLMain.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_SDLMain.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_SDLMain.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_SDLMain.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_SDLMain.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_SDLMain = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_SDLMain);
    __TIB_sdljava_SDLMain.clazz = __CLASS_sdljava_SDLMain;
    __TIB_sdljava_SDLMain.baseType = JAVA_NULL;
    __CLASS_sdljava_SDLMain_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain);
    __CLASS_sdljava_SDLMain_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain_1ARRAY);
    __CLASS_sdljava_SDLMain_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_SDLMain]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_SDLMain.classInitialized = 1;
}

void __DELETE_sdljava_SDLMain(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_SDLMain(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_SDLMain()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    sdljava_SDLMain* me = (sdljava_SDLMain*) XMLVM_MALLOC(sizeof(sdljava_SDLMain));
    me->tib = &__TIB_sdljava_SDLMain;
    __INIT_INSTANCE_MEMBERS_sdljava_SDLMain(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLMain()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_SDLMain();
    sdljava_SDLMain___INIT___(me);
    return me;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_AUDIO()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_AUDIO;
}

void sdljava_SDLMain_PUT_SDL_INIT_AUDIO(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_AUDIO = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_CDROM()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_CDROM;
}

void sdljava_SDLMain_PUT_SDL_INIT_CDROM(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_CDROM = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_EVENTTHREAD()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_EVENTTHREAD;
}

void sdljava_SDLMain_PUT_SDL_INIT_EVENTTHREAD(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_EVENTTHREAD = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_EVERYTHING()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_EVERYTHING;
}

void sdljava_SDLMain_PUT_SDL_INIT_EVERYTHING(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_EVERYTHING = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_JOYSTICK()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_JOYSTICK;
}

void sdljava_SDLMain_PUT_SDL_INIT_JOYSTICK(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_JOYSTICK = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_NOPARACHUTE()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_NOPARACHUTE;
}

void sdljava_SDLMain_PUT_SDL_INIT_NOPARACHUTE(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_NOPARACHUTE = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_TIMER()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_TIMER;
}

void sdljava_SDLMain_PUT_SDL_INIT_TIMER(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_TIMER = v;
}

JAVA_INT sdljava_SDLMain_GET_SDL_INIT_VIDEO()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    return _STATIC_sdljava_SDLMain_SDL_INIT_VIDEO;
}

void sdljava_SDLMain_PUT_SDL_INIT_VIDEO(JAVA_INT v)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    _STATIC_sdljava_SDLMain_SDL_INIT_VIDEO = v;
}

void sdljava_SDLMain___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void sdljava_SDLMain_init___long(JAVA_LONG n1)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain_init___long]
    SDL_Init((Uint32) n1);
    //XMLVM_END_WRAPPER
}

JAVA_LONG sdljava_SDLMain_wasInit___long(JAVA_LONG n1)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain_wasInit___long]
    return (JAVA_LONG) SDL_WasInit((Uint32) n1);
    //XMLVM_END_WRAPPER
}

void sdljava_SDLMain_quit__()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain_quit__]
    SDL_Quit();
    //XMLVM_END_WRAPPER
}

