#include "xmlvm.h"
#include "sdljava_video_SDLSurface.h"

#include "sdljava_video_SDLVideo.h"

#define XMLVM_CURRENT_CLASS_NAME SDLVideo
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_video_SDLVideo

__TIB_DEFINITION_sdljava_video_SDLVideo __TIB_sdljava_video_SDLVideo = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_video_SDLVideo, // classInitializer
    "sdljava.video.SDLVideo", // className
    "sdljava.video", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_video_SDLVideo), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_video_SDLVideo;
JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_OPAQUE;
static JAVA_INT _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_TRANSPARENT;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_ANYFORMAT;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_ASYNCBLIT;
static JAVA_INT _STATIC_sdljava_video_SDLVideo_SDL_DISABLE;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_DOUBLEBUF;
static JAVA_INT _STATIC_sdljava_video_SDLVideo_SDL_ENABLE;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_FULLSCREEN;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_HWACCEL;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_HWPALETTE;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_HWSURFACE;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_NOFRAME;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_OPENGL;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_OPENGLBLIT;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_PREALLOC;
static JAVA_INT _STATIC_sdljava_video_SDLVideo_SDL_QUERY;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_RESIZABLE;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_RLEACCEL;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_SRCALPHA;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_SRCCOLORKEY;
static JAVA_LONG _STATIC_sdljava_video_SDLVideo_SDL_SWSURFACE;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"SDL_ALPHA_OPAQUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_ALPHA_OPAQUE,
    "",
    JAVA_NULL},
    {"SDL_ALPHA_TRANSPARENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_ALPHA_TRANSPARENT,
    "",
    JAVA_NULL},
    {"SDL_ANYFORMAT",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_ANYFORMAT,
    "",
    JAVA_NULL},
    {"SDL_ASYNCBLIT",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_ASYNCBLIT,
    "",
    JAVA_NULL},
    {"SDL_DISABLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_DISABLE,
    "",
    JAVA_NULL},
    {"SDL_DOUBLEBUF",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_DOUBLEBUF,
    "",
    JAVA_NULL},
    {"SDL_ENABLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_ENABLE,
    "",
    JAVA_NULL},
    {"SDL_FULLSCREEN",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_FULLSCREEN,
    "",
    JAVA_NULL},
    {"SDL_HWACCEL",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_HWACCEL,
    "",
    JAVA_NULL},
    {"SDL_HWPALETTE",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_HWPALETTE,
    "",
    JAVA_NULL},
    {"SDL_HWSURFACE",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_HWSURFACE,
    "",
    JAVA_NULL},
    {"SDL_NOFRAME",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_NOFRAME,
    "",
    JAVA_NULL},
    {"SDL_OPENGL",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_OPENGL,
    "",
    JAVA_NULL},
    {"SDL_OPENGLBLIT",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_OPENGLBLIT,
    "",
    JAVA_NULL},
    {"SDL_PREALLOC",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_PREALLOC,
    "",
    JAVA_NULL},
    {"SDL_QUERY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_QUERY,
    "",
    JAVA_NULL},
    {"SDL_RESIZABLE",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_RESIZABLE,
    "",
    JAVA_NULL},
    {"SDL_RLEACCEL",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_RLEACCEL,
    "",
    JAVA_NULL},
    {"SDL_SRCALPHA",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_SRCALPHA,
    "",
    JAVA_NULL},
    {"SDL_SRCCOLORKEY",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_SRCCOLORKEY,
    "",
    JAVA_NULL},
    {"SDL_SWSURFACE",
    &__CLASS_long,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_sdljava_video_SDLVideo_SDL_SWSURFACE,
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
    JAVA_OBJECT obj = __NEW_sdljava_video_SDLVideo();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_video_SDLVideo___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_long,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_long,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_long,
    &__CLASS_long,
    &__CLASS_long,
    &__CLASS_long,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setVideoMode",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IIIJ)Lsdljava/video/SDLSurface;",
    JAVA_NULL,
    JAVA_NULL},
    {"createRGBSurface",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(JIIIJJJJ)Lsdljava/video/SDLSurface;",
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
        result = (JAVA_OBJECT) sdljava_video_SDLVideo_setVideoMode___int_int_int_long(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Long*) argsArray[3])->fields.java_lang_Long.value_);
        break;
    case 1:
        result = (JAVA_OBJECT) sdljava_video_SDLVideo_createRGBSurface___long_int_int_int_long_long_long_long(((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, ((java_lang_Long*) argsArray[4])->fields.java_lang_Long.value_, ((java_lang_Long*) argsArray[5])->fields.java_lang_Long.value_, ((java_lang_Long*) argsArray[6])->fields.java_lang_Long.value_, ((java_lang_Long*) argsArray[7])->fields.java_lang_Long.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_video_SDLVideo()
{
    staticInitializerLock(&__TIB_sdljava_video_SDLVideo);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_video_SDLVideo.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_video_SDLVideo.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_video_SDLVideo);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_video_SDLVideo.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_video_SDLVideo.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_video_SDLVideo.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.video.SDLVideo")
        __INIT_IMPL_sdljava_video_SDLVideo();
    }
}

void __INIT_IMPL_sdljava_video_SDLVideo()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_video_SDLVideo.newInstanceFunc = __NEW_INSTANCE_sdljava_video_SDLVideo;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_video_SDLVideo.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_video_SDLVideo.numImplementedInterfaces = 0;
    __TIB_sdljava_video_SDLVideo.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_OPAQUE = 255;
    _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_TRANSPARENT = 0;
    _STATIC_sdljava_video_SDLVideo_SDL_ANYFORMAT = 268435456;
    _STATIC_sdljava_video_SDLVideo_SDL_ASYNCBLIT = 4;
    _STATIC_sdljava_video_SDLVideo_SDL_DISABLE = 0;
    _STATIC_sdljava_video_SDLVideo_SDL_DOUBLEBUF = 1073741824;
    _STATIC_sdljava_video_SDLVideo_SDL_ENABLE = 1;
    _STATIC_sdljava_video_SDLVideo_SDL_FULLSCREEN = -2147483648;
    _STATIC_sdljava_video_SDLVideo_SDL_HWACCEL = 256;
    _STATIC_sdljava_video_SDLVideo_SDL_HWPALETTE = 536870912;
    _STATIC_sdljava_video_SDLVideo_SDL_HWSURFACE = 1;
    _STATIC_sdljava_video_SDLVideo_SDL_NOFRAME = 32;
    _STATIC_sdljava_video_SDLVideo_SDL_OPENGL = 2;
    _STATIC_sdljava_video_SDLVideo_SDL_OPENGLBLIT = 10;
    _STATIC_sdljava_video_SDLVideo_SDL_PREALLOC = 16777216;
    _STATIC_sdljava_video_SDLVideo_SDL_QUERY = -1;
    _STATIC_sdljava_video_SDLVideo_SDL_RESIZABLE = 16;
    _STATIC_sdljava_video_SDLVideo_SDL_RLEACCEL = 16384;
    _STATIC_sdljava_video_SDLVideo_SDL_SRCALPHA = 65536;
    _STATIC_sdljava_video_SDLVideo_SDL_SRCCOLORKEY = 4096;
    _STATIC_sdljava_video_SDLVideo_SDL_SWSURFACE = 0;

    __TIB_sdljava_video_SDLVideo.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_video_SDLVideo.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_video_SDLVideo.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_video_SDLVideo.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_video_SDLVideo.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_video_SDLVideo.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_video_SDLVideo.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_video_SDLVideo.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_video_SDLVideo = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_video_SDLVideo);
    __TIB_sdljava_video_SDLVideo.clazz = __CLASS_sdljava_video_SDLVideo;
    __TIB_sdljava_video_SDLVideo.baseType = JAVA_NULL;
    __CLASS_sdljava_video_SDLVideo_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLVideo);
    __CLASS_sdljava_video_SDLVideo_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLVideo_1ARRAY);
    __CLASS_sdljava_video_SDLVideo_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLVideo_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_video_SDLVideo]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_video_SDLVideo.classInitialized = 1;
}

void __DELETE_sdljava_video_SDLVideo(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_video_SDLVideo]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLVideo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_video_SDLVideo]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_video_SDLVideo()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    sdljava_video_SDLVideo* me = (sdljava_video_SDLVideo*) XMLVM_MALLOC(sizeof(sdljava_video_SDLVideo));
    me->tib = &__TIB_sdljava_video_SDLVideo;
    __INIT_INSTANCE_MEMBERS_sdljava_video_SDLVideo(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_video_SDLVideo]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLVideo()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_video_SDLVideo();
    sdljava_video_SDLVideo___INIT___(me);
    return me;
}

JAVA_INT sdljava_video_SDLVideo_GET_SDL_ALPHA_OPAQUE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_OPAQUE;
}

void sdljava_video_SDLVideo_PUT_SDL_ALPHA_OPAQUE(JAVA_INT v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_OPAQUE = v;
}

JAVA_INT sdljava_video_SDLVideo_GET_SDL_ALPHA_TRANSPARENT()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_TRANSPARENT;
}

void sdljava_video_SDLVideo_PUT_SDL_ALPHA_TRANSPARENT(JAVA_INT v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_ALPHA_TRANSPARENT = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_ANYFORMAT()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_ANYFORMAT;
}

void sdljava_video_SDLVideo_PUT_SDL_ANYFORMAT(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_ANYFORMAT = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_ASYNCBLIT()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_ASYNCBLIT;
}

void sdljava_video_SDLVideo_PUT_SDL_ASYNCBLIT(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_ASYNCBLIT = v;
}

JAVA_INT sdljava_video_SDLVideo_GET_SDL_DISABLE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_DISABLE;
}

void sdljava_video_SDLVideo_PUT_SDL_DISABLE(JAVA_INT v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_DISABLE = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_DOUBLEBUF()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_DOUBLEBUF;
}

void sdljava_video_SDLVideo_PUT_SDL_DOUBLEBUF(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_DOUBLEBUF = v;
}

JAVA_INT sdljava_video_SDLVideo_GET_SDL_ENABLE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_ENABLE;
}

void sdljava_video_SDLVideo_PUT_SDL_ENABLE(JAVA_INT v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_ENABLE = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_FULLSCREEN()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_FULLSCREEN;
}

void sdljava_video_SDLVideo_PUT_SDL_FULLSCREEN(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_FULLSCREEN = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWACCEL()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_HWACCEL;
}

void sdljava_video_SDLVideo_PUT_SDL_HWACCEL(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_HWACCEL = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWPALETTE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_HWPALETTE;
}

void sdljava_video_SDLVideo_PUT_SDL_HWPALETTE(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_HWPALETTE = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWSURFACE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_HWSURFACE;
}

void sdljava_video_SDLVideo_PUT_SDL_HWSURFACE(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_HWSURFACE = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_NOFRAME()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_NOFRAME;
}

void sdljava_video_SDLVideo_PUT_SDL_NOFRAME(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_NOFRAME = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_OPENGL()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_OPENGL;
}

void sdljava_video_SDLVideo_PUT_SDL_OPENGL(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_OPENGL = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_OPENGLBLIT()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_OPENGLBLIT;
}

void sdljava_video_SDLVideo_PUT_SDL_OPENGLBLIT(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_OPENGLBLIT = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_PREALLOC()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_PREALLOC;
}

void sdljava_video_SDLVideo_PUT_SDL_PREALLOC(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_PREALLOC = v;
}

JAVA_INT sdljava_video_SDLVideo_GET_SDL_QUERY()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_QUERY;
}

void sdljava_video_SDLVideo_PUT_SDL_QUERY(JAVA_INT v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_QUERY = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_RESIZABLE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_RESIZABLE;
}

void sdljava_video_SDLVideo_PUT_SDL_RESIZABLE(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_RESIZABLE = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_RLEACCEL()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_RLEACCEL;
}

void sdljava_video_SDLVideo_PUT_SDL_RLEACCEL(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_RLEACCEL = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SRCALPHA()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_SRCALPHA;
}

void sdljava_video_SDLVideo_PUT_SDL_SRCALPHA(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_SRCALPHA = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SRCCOLORKEY()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_SRCCOLORKEY;
}

void sdljava_video_SDLVideo_PUT_SDL_SRCCOLORKEY(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_SRCCOLORKEY = v;
}

JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SWSURFACE()
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    return _STATIC_sdljava_video_SDLVideo_SDL_SWSURFACE;
}

void sdljava_video_SDLVideo_PUT_SDL_SWSURFACE(JAVA_LONG v)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    _STATIC_sdljava_video_SDLVideo_SDL_SWSURFACE = v;
}

void sdljava_video_SDLVideo___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLVideo___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_video_SDLVideo_setVideoMode___int_int_int_long(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLVideo_setVideoMode___int_int_int_long]
    JAVA_OBJECT surface = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(surface,
        SDL_SetVideoMode((int) n1, (int) n2, (int) n3, (Uint32) n4));
    return surface;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_video_SDLVideo_createRGBSurface___long_int_int_int_long_long_long_long(JAVA_LONG n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_LONG n5, JAVA_LONG n6, JAVA_LONG n7, JAVA_LONG n8)
{
    if (!__TIB_sdljava_video_SDLVideo.classInitialized) __INIT_sdljava_video_SDLVideo();
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLVideo_createRGBSurface___long_int_int_int_long_long_long_long]
    JAVA_OBJECT surface = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(surface,
    		SDL_CreateRGBSurface((Uint32) n1, (int) n2, (int) n3, (int) n4,
    					(Uint32) n5, (Uint32) n6, (Uint32) n7, (Uint32) n8 ));
    return surface;
    //XMLVM_END_WRAPPER
}

