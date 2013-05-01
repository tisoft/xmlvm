#include "xmlvm.h"
#include "sdljava_video_SDLSurface.h"

#include "sdljavax_gfx_SDLGfx.h"

#define XMLVM_CURRENT_CLASS_NAME SDLGfx
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljavax_gfx_SDLGfx

__TIB_DEFINITION_sdljavax_gfx_SDLGfx __TIB_sdljavax_gfx_SDLGfx = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljavax_gfx_SDLGfx, // classInitializer
    "sdljavax.gfx.SDLGfx", // className
    "sdljavax.gfx", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljavax_gfx_SDLGfx), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx;
JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_1ARRAY;
JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_2ARRAY;
JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <SDL/SDL.h>
#include <SDL/SDL_rotozoom.h>
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
    JAVA_OBJECT obj = __NEW_sdljavax_gfx_SDLGfx();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljavax_gfx_SDLGfx___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_sdljava_video_SDLSurface,
    &__CLASS_double,
    &__CLASS_double,
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"zoomSurface",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lsdljava/video/SDLSurface;DDZ)Lsdljava/video/SDLSurface;",
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
        result = (JAVA_OBJECT) sdljavax_gfx_SDLGfx_zoomSurface___sdljava_video_SDLSurface_double_double_boolean(argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_, ((java_lang_Boolean*) argsArray[3])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljavax_gfx_SDLGfx()
{
    staticInitializerLock(&__TIB_sdljavax_gfx_SDLGfx);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljavax_gfx_SDLGfx.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljavax_gfx_SDLGfx.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljavax_gfx_SDLGfx);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljavax_gfx_SDLGfx.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljavax_gfx_SDLGfx.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljavax_gfx_SDLGfx.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljavax.gfx.SDLGfx")
        __INIT_IMPL_sdljavax_gfx_SDLGfx();
    }
}

void __INIT_IMPL_sdljavax_gfx_SDLGfx()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljavax_gfx_SDLGfx.newInstanceFunc = __NEW_INSTANCE_sdljavax_gfx_SDLGfx;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljavax_gfx_SDLGfx.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljavax_gfx_SDLGfx.numImplementedInterfaces = 0;
    __TIB_sdljavax_gfx_SDLGfx.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljavax_gfx_SDLGfx.declaredFields = &__field_reflection_data[0];
    __TIB_sdljavax_gfx_SDLGfx.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljavax_gfx_SDLGfx.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljavax_gfx_SDLGfx.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljavax_gfx_SDLGfx.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljavax_gfx_SDLGfx.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljavax_gfx_SDLGfx.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljavax_gfx_SDLGfx.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljavax_gfx_SDLGfx = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljavax_gfx_SDLGfx);
    __TIB_sdljavax_gfx_SDLGfx.clazz = __CLASS_sdljavax_gfx_SDLGfx;
    __TIB_sdljavax_gfx_SDLGfx.baseType = JAVA_NULL;
    __CLASS_sdljavax_gfx_SDLGfx_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljavax_gfx_SDLGfx);
    __CLASS_sdljavax_gfx_SDLGfx_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljavax_gfx_SDLGfx_1ARRAY);
    __CLASS_sdljavax_gfx_SDLGfx_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljavax_gfx_SDLGfx_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljavax_gfx_SDLGfx]
    //XMLVM_END_WRAPPER

    __TIB_sdljavax_gfx_SDLGfx.classInitialized = 1;
}

void __DELETE_sdljavax_gfx_SDLGfx(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljavax_gfx_SDLGfx]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljavax_gfx_SDLGfx(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljavax_gfx_SDLGfx]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljavax_gfx_SDLGfx()
{
    if (!__TIB_sdljavax_gfx_SDLGfx.classInitialized) __INIT_sdljavax_gfx_SDLGfx();
    sdljavax_gfx_SDLGfx* me = (sdljavax_gfx_SDLGfx*) XMLVM_MALLOC(sizeof(sdljavax_gfx_SDLGfx));
    me->tib = &__TIB_sdljavax_gfx_SDLGfx;
    __INIT_INSTANCE_MEMBERS_sdljavax_gfx_SDLGfx(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljavax_gfx_SDLGfx]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljavax_gfx_SDLGfx()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljavax_gfx_SDLGfx();
    sdljavax_gfx_SDLGfx___INIT___(me);
    return me;
}

void sdljavax_gfx_SDLGfx___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljavax_gfx_SDLGfx___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljavax_gfx_SDLGfx_zoomSurface___sdljava_video_SDLSurface_double_double_boolean(JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3, JAVA_BOOLEAN n4)
{
    if (!__TIB_sdljavax_gfx_SDLGfx.classInitialized) __INIT_sdljavax_gfx_SDLGfx();
    //XMLVM_BEGIN_WRAPPER[sdljavax_gfx_SDLGfx_zoomSurface___sdljava_video_SDLSurface_double_double_boolean]
    sdljava_video_SDLSurface *source  = (sdljava_video_SDLSurface *) n1;
    SDL_Surface *s = 0;
    if (source) {
        SDL_Surface *src = source->fields.sdljava_video_SDLSurface.delegate;
        if (n2 > 0 && n3 > 0 && src != 0) s = zoomSurface (src, (double) n2, (double) n3, (n4 == 0) ? SMOOTHING_ON : SMOOTHING_OFF );
    }
    JAVA_OBJECT surface = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(surface, s);
    return surface;
    //XMLVM_END_WRAPPER
}

