#include "xmlvm.h"
#include "java_lang_String.h"
#include "sdljava_video_SDLSurface.h"

#include "sdljava_image_SDLImage.h"

#define XMLVM_CURRENT_CLASS_NAME SDLImage
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_image_SDLImage

__TIB_DEFINITION_sdljava_image_SDLImage __TIB_sdljava_image_SDLImage = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_image_SDLImage, // classInitializer
    "sdljava.image.SDLImage", // className
    "sdljava.image", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_image_SDLImage), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_image_SDLImage;
JAVA_OBJECT __CLASS_sdljava_image_SDLImage_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_image_SDLImage_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_image_SDLImage_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <SDL/SDL.h>
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
    JAVA_OBJECT obj = __NEW_sdljava_image_SDLImage();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_image_SDLImage___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"load",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lsdljava/video/SDLSurface;",
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
        result = (JAVA_OBJECT) sdljava_image_SDLImage_load___java_lang_String(argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_image_SDLImage()
{
    staticInitializerLock(&__TIB_sdljava_image_SDLImage);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_image_SDLImage.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_image_SDLImage.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_image_SDLImage);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_image_SDLImage.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_image_SDLImage.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_image_SDLImage.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.image.SDLImage")
        __INIT_IMPL_sdljava_image_SDLImage();
    }
}

void __INIT_IMPL_sdljava_image_SDLImage()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_image_SDLImage.newInstanceFunc = __NEW_INSTANCE_sdljava_image_SDLImage;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_image_SDLImage.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_image_SDLImage.numImplementedInterfaces = 0;
    __TIB_sdljava_image_SDLImage.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_image_SDLImage.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_image_SDLImage.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_image_SDLImage.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_image_SDLImage.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_image_SDLImage.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_image_SDLImage.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_image_SDLImage.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_image_SDLImage.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_image_SDLImage = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_image_SDLImage);
    __TIB_sdljava_image_SDLImage.clazz = __CLASS_sdljava_image_SDLImage;
    __TIB_sdljava_image_SDLImage.baseType = JAVA_NULL;
    __CLASS_sdljava_image_SDLImage_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_image_SDLImage);
    __CLASS_sdljava_image_SDLImage_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_image_SDLImage_1ARRAY);
    __CLASS_sdljava_image_SDLImage_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_image_SDLImage_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_image_SDLImage]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_image_SDLImage.classInitialized = 1;
}

void __DELETE_sdljava_image_SDLImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_image_SDLImage]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_image_SDLImage(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_image_SDLImage]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_image_SDLImage()
{
    if (!__TIB_sdljava_image_SDLImage.classInitialized) __INIT_sdljava_image_SDLImage();
    sdljava_image_SDLImage* me = (sdljava_image_SDLImage*) XMLVM_MALLOC(sizeof(sdljava_image_SDLImage));
    me->tib = &__TIB_sdljava_image_SDLImage;
    __INIT_INSTANCE_MEMBERS_sdljava_image_SDLImage(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_image_SDLImage]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_image_SDLImage()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_image_SDLImage();
    sdljava_image_SDLImage___INIT___(me);
    return me;
}

void sdljava_image_SDLImage___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_image_SDLImage___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_image_SDLImage_load___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_sdljava_image_SDLImage.classInitialized) __INIT_sdljava_image_SDLImage();
    //XMLVM_BEGIN_WRAPPER[sdljava_image_SDLImage_load___java_lang_String]
    JAVA_OBJECT surface = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(surface,
    		IMG_Load(xmlvm_java_string_to_const_char(n1)));
    return surface;
    //XMLVM_END_WRAPPER
}

