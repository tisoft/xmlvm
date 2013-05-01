#include "xmlvm.h"
#include "java_lang_String.h"
#include "sdljava_video_SDLColor.h"
#include "sdljava_video_SDLSurface.h"

#include "sdljava_ttf_SDLTrueTypeFont.h"

#define XMLVM_CURRENT_CLASS_NAME SDLTrueTypeFont
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_ttf_SDLTrueTypeFont

__TIB_DEFINITION_sdljava_ttf_SDLTrueTypeFont __TIB_sdljava_ttf_SDLTrueTypeFont = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_ttf_SDLTrueTypeFont, // classInitializer
    "sdljava.ttf.SDLTrueTypeFont", // className
    "sdljava.ttf", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_ttf_SDLTrueTypeFont), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void sdljava_ttf_SDLTrueTypeFont___INIT___INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, TTF_Font *font)
{
	if (font == 0) {
		XMLVM_THROW_WITH_CSTRING(sdljava_SDLException, SDL_GetError());
	}
	sdljava_ttf_SDLTrueTypeFont___INIT___(me);
	sdljava_ttf_SDLTrueTypeFont *surface = (sdljava_ttf_SDLTrueTypeFont *) me;
	surface->fields.sdljava_ttf_SDLTrueTypeFont.font = font;
}
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
    JAVA_OBJECT obj = __NEW_sdljava_ttf_SDLTrueTypeFont();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_ttf_SDLTrueTypeFont___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_sdljava_video_SDLColor,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"renderTextBlended",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Lsdljava/video/SDLColor;)Lsdljava/video/SDLSurface;",
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
        result = (JAVA_OBJECT) sdljava_ttf_SDLTrueTypeFont_renderTextBlended___java_lang_String_sdljava_video_SDLColor(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_ttf_SDLTrueTypeFont()
{
    staticInitializerLock(&__TIB_sdljava_ttf_SDLTrueTypeFont);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_ttf_SDLTrueTypeFont.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_ttf_SDLTrueTypeFont.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_ttf_SDLTrueTypeFont);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_ttf_SDLTrueTypeFont.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_ttf_SDLTrueTypeFont.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_ttf_SDLTrueTypeFont.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.ttf.SDLTrueTypeFont")
        __INIT_IMPL_sdljava_ttf_SDLTrueTypeFont();
    }
}

void __INIT_IMPL_sdljava_ttf_SDLTrueTypeFont()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_ttf_SDLTrueTypeFont.newInstanceFunc = __NEW_INSTANCE_sdljava_ttf_SDLTrueTypeFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_ttf_SDLTrueTypeFont.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_sdljava_ttf_SDLTrueTypeFont.vtable[2] = (VTABLE_PTR) &sdljava_ttf_SDLTrueTypeFont_finalize_sdljava_ttf_SDLTrueTypeFont__;
    // Initialize interface information
    __TIB_sdljava_ttf_SDLTrueTypeFont.numImplementedInterfaces = 0;
    __TIB_sdljava_ttf_SDLTrueTypeFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_ttf_SDLTrueTypeFont.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_ttf_SDLTrueTypeFont.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_ttf_SDLTrueTypeFont.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_ttf_SDLTrueTypeFont.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_ttf_SDLTrueTypeFont.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_ttf_SDLTrueTypeFont.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_ttf_SDLTrueTypeFont.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_ttf_SDLTrueTypeFont.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_ttf_SDLTrueTypeFont = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_ttf_SDLTrueTypeFont);
    __TIB_sdljava_ttf_SDLTrueTypeFont.clazz = __CLASS_sdljava_ttf_SDLTrueTypeFont;
    __TIB_sdljava_ttf_SDLTrueTypeFont.baseType = JAVA_NULL;
    __CLASS_sdljava_ttf_SDLTrueTypeFont_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTrueTypeFont);
    __CLASS_sdljava_ttf_SDLTrueTypeFont_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTrueTypeFont_1ARRAY);
    __CLASS_sdljava_ttf_SDLTrueTypeFont_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTrueTypeFont_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_ttf_SDLTrueTypeFont]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_ttf_SDLTrueTypeFont.classInitialized = 1;
}

void __DELETE_sdljava_ttf_SDLTrueTypeFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_ttf_SDLTrueTypeFont]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTrueTypeFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 1 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTrueTypeFont]
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_sdljava_ttf_SDLTrueTypeFont);
    }
}

JAVA_OBJECT __NEW_sdljava_ttf_SDLTrueTypeFont()
{
    if (!__TIB_sdljava_ttf_SDLTrueTypeFont.classInitialized) __INIT_sdljava_ttf_SDLTrueTypeFont();
    sdljava_ttf_SDLTrueTypeFont* me = (sdljava_ttf_SDLTrueTypeFont*) XMLVM_MALLOC(sizeof(sdljava_ttf_SDLTrueTypeFont));
    me->tib = &__TIB_sdljava_ttf_SDLTrueTypeFont;
    __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTrueTypeFont(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_ttf_SDLTrueTypeFont]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_ttf_SDLTrueTypeFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_ttf_SDLTrueTypeFont();
    sdljava_ttf_SDLTrueTypeFont___INIT___(me);
    return me;
}

void sdljava_ttf_SDLTrueTypeFont___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTrueTypeFont___INIT___]
	java_lang_Object___INIT___(me);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_ttf_SDLTrueTypeFont_renderTextBlended___java_lang_String_sdljava_video_SDLColor(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTrueTypeFont_renderTextBlended___java_lang_String_sdljava_video_SDLColor]
    XMLVM_ENTER_METHOD("sdljava.ttf.SDLTrueTypeFont", "renderTextBlended", "?");

    SDL_Color color;

    sdljava_video_SDLColor *sdlColor = (sdljava_video_SDLColor *) n2;
    color.r = sdlColor->fields.sdljava_video_SDLColor.r_;
    color.g = sdlColor->fields.sdljava_video_SDLColor.g_;
    color.b = sdlColor->fields.sdljava_video_SDLColor.b_;

	sdljava_ttf_SDLTrueTypeFont *ttf = (sdljava_ttf_SDLTrueTypeFont *) me;
	TTF_Font *font = ttf->fields.sdljava_ttf_SDLTrueTypeFont.font;

    JAVA_OBJECT surface = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(surface,
    		TTF_RenderText_Blended(font, xmlvm_java_string_to_const_char(n1), color));
    return surface;
    //XMLVM_END_WRAPPER
}

void sdljava_ttf_SDLTrueTypeFont_finalize_sdljava_ttf_SDLTrueTypeFont__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTrueTypeFont_finalize_sdljava_ttf_SDLTrueTypeFont__]
	sdljava_ttf_SDLTrueTypeFont *ttf = (sdljava_ttf_SDLTrueTypeFont *) me;
	TTF_Font *font = ttf->fields.sdljava_ttf_SDLTrueTypeFont.font;
#ifndef EMSCRIPTEN
	if (font) TTF_CloseFont(font);
#endif
    //XMLVM_END_WRAPPER
}

