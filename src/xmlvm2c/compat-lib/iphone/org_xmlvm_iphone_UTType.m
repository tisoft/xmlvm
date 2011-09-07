#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UTType.h"

#define XMLVM_CURRENT_CLASS_NAME UTType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UTType

__TIB_DEFINITION_org_xmlvm_iphone_UTType __TIB_org_xmlvm_iphone_UTType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UTType, // classInitializer
    "org.xmlvm.iphone.UTType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UTType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_Image;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_JPEG;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_JPEG2000;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_TIFF;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_PICT;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_GIF;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_PNG;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_QuickTimeImage;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_AppleICNS;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_BMP;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_ICO;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_AudiovisualContent;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_Movie;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_Video;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_Audio;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_QuickTimeMovie;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_MPEG;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_MPEG4;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_MP3;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_MPEG4Audio;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UTType_AppleProtectedMPEG4Audio;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Image",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_Image,
    "",
    JAVA_NULL},
    {"JPEG",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_JPEG,
    "",
    JAVA_NULL},
    {"JPEG2000",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_JPEG2000,
    "",
    JAVA_NULL},
    {"TIFF",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_TIFF,
    "",
    JAVA_NULL},
    {"PICT",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_PICT,
    "",
    JAVA_NULL},
    {"GIF",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_GIF,
    "",
    JAVA_NULL},
    {"PNG",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_PNG,
    "",
    JAVA_NULL},
    {"QuickTimeImage",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_QuickTimeImage,
    "",
    JAVA_NULL},
    {"AppleICNS",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_AppleICNS,
    "",
    JAVA_NULL},
    {"BMP",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_BMP,
    "",
    JAVA_NULL},
    {"ICO",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_ICO,
    "",
    JAVA_NULL},
    {"AudiovisualContent",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_AudiovisualContent,
    "",
    JAVA_NULL},
    {"Movie",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_Movie,
    "",
    JAVA_NULL},
    {"Video",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_Video,
    "",
    JAVA_NULL},
    {"Audio",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_Audio,
    "",
    JAVA_NULL},
    {"QuickTimeMovie",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_QuickTimeMovie,
    "",
    JAVA_NULL},
    {"MPEG",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_MPEG,
    "",
    JAVA_NULL},
    {"MPEG4",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_MPEG4,
    "",
    JAVA_NULL},
    {"MP3",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_MP3,
    "",
    JAVA_NULL},
    {"MPEG4Audio",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_MPEG4Audio,
    "",
    JAVA_NULL},
    {"AppleProtectedMPEG4Audio",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UTType_AppleProtectedMPEG4Audio,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UTType();
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

void __INIT_org_xmlvm_iphone_UTType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UTType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UTType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UTType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UTType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UTType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UTType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UTType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UTType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UTType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UTType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UTType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UTType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UTType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UTType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UTType_Image = (java_lang_String*) xmlvm_create_java_string_from_pool(0);
    _STATIC_org_xmlvm_iphone_UTType_JPEG = (java_lang_String*) xmlvm_create_java_string_from_pool(1);
    _STATIC_org_xmlvm_iphone_UTType_JPEG2000 = (java_lang_String*) xmlvm_create_java_string_from_pool(2);
    _STATIC_org_xmlvm_iphone_UTType_TIFF = (java_lang_String*) xmlvm_create_java_string_from_pool(3);
    _STATIC_org_xmlvm_iphone_UTType_PICT = (java_lang_String*) xmlvm_create_java_string_from_pool(4);
    _STATIC_org_xmlvm_iphone_UTType_GIF = (java_lang_String*) xmlvm_create_java_string_from_pool(5);
    _STATIC_org_xmlvm_iphone_UTType_PNG = (java_lang_String*) xmlvm_create_java_string_from_pool(6);
    _STATIC_org_xmlvm_iphone_UTType_QuickTimeImage = (java_lang_String*) xmlvm_create_java_string_from_pool(7);
    _STATIC_org_xmlvm_iphone_UTType_AppleICNS = (java_lang_String*) xmlvm_create_java_string_from_pool(8);
    _STATIC_org_xmlvm_iphone_UTType_BMP = (java_lang_String*) xmlvm_create_java_string_from_pool(9);
    _STATIC_org_xmlvm_iphone_UTType_ICO = (java_lang_String*) xmlvm_create_java_string_from_pool(10);
    _STATIC_org_xmlvm_iphone_UTType_AudiovisualContent = (java_lang_String*) xmlvm_create_java_string_from_pool(11);
    _STATIC_org_xmlvm_iphone_UTType_Movie = (java_lang_String*) xmlvm_create_java_string_from_pool(12);
    _STATIC_org_xmlvm_iphone_UTType_Video = (java_lang_String*) xmlvm_create_java_string_from_pool(13);
    _STATIC_org_xmlvm_iphone_UTType_Audio = (java_lang_String*) xmlvm_create_java_string_from_pool(14);
    _STATIC_org_xmlvm_iphone_UTType_QuickTimeMovie = (java_lang_String*) xmlvm_create_java_string_from_pool(15);
    _STATIC_org_xmlvm_iphone_UTType_MPEG = (java_lang_String*) xmlvm_create_java_string_from_pool(16);
    _STATIC_org_xmlvm_iphone_UTType_MPEG4 = (java_lang_String*) xmlvm_create_java_string_from_pool(17);
    _STATIC_org_xmlvm_iphone_UTType_MP3 = (java_lang_String*) xmlvm_create_java_string_from_pool(18);
    _STATIC_org_xmlvm_iphone_UTType_MPEG4Audio = (java_lang_String*) xmlvm_create_java_string_from_pool(19);
    _STATIC_org_xmlvm_iphone_UTType_AppleProtectedMPEG4Audio = (java_lang_String*) xmlvm_create_java_string_from_pool(20);

    __TIB_org_xmlvm_iphone_UTType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UTType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UTType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UTType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UTType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UTType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UTType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UTType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UTType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UTType);
    __TIB_org_xmlvm_iphone_UTType.clazz = __CLASS_org_xmlvm_iphone_UTType;
    __TIB_org_xmlvm_iphone_UTType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UTType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UTType);
    __CLASS_org_xmlvm_iphone_UTType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UTType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UTType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UTType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UTType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UTType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UTType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UTType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UTType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UTType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UTType()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    org_xmlvm_iphone_UTType* me = (org_xmlvm_iphone_UTType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UTType));
    me->tib = &__TIB_org_xmlvm_iphone_UTType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UTType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UTType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UTType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Image()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_Image;
}

void org_xmlvm_iphone_UTType_PUT_Image(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_Image = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_JPEG()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_JPEG;
}

void org_xmlvm_iphone_UTType_PUT_JPEG(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_JPEG = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_JPEG2000()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_JPEG2000;
}

void org_xmlvm_iphone_UTType_PUT_JPEG2000(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_JPEG2000 = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_TIFF()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_TIFF;
}

void org_xmlvm_iphone_UTType_PUT_TIFF(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_TIFF = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_PICT()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_PICT;
}

void org_xmlvm_iphone_UTType_PUT_PICT(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_PICT = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_GIF()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_GIF;
}

void org_xmlvm_iphone_UTType_PUT_GIF(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_GIF = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_PNG()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_PNG;
}

void org_xmlvm_iphone_UTType_PUT_PNG(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_PNG = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_QuickTimeImage()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_QuickTimeImage;
}

void org_xmlvm_iphone_UTType_PUT_QuickTimeImage(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_QuickTimeImage = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AppleICNS()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_AppleICNS;
}

void org_xmlvm_iphone_UTType_PUT_AppleICNS(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_AppleICNS = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_BMP()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_BMP;
}

void org_xmlvm_iphone_UTType_PUT_BMP(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_BMP = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_ICO()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_ICO;
}

void org_xmlvm_iphone_UTType_PUT_ICO(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_ICO = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AudiovisualContent()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_AudiovisualContent;
}

void org_xmlvm_iphone_UTType_PUT_AudiovisualContent(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_AudiovisualContent = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Movie()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_Movie;
}

void org_xmlvm_iphone_UTType_PUT_Movie(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_Movie = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Video()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_Video;
}

void org_xmlvm_iphone_UTType_PUT_Video(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_Video = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Audio()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_Audio;
}

void org_xmlvm_iphone_UTType_PUT_Audio(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_Audio = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_QuickTimeMovie()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_QuickTimeMovie;
}

void org_xmlvm_iphone_UTType_PUT_QuickTimeMovie(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_QuickTimeMovie = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_MPEG;
}

void org_xmlvm_iphone_UTType_PUT_MPEG(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_MPEG = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG4()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_MPEG4;
}

void org_xmlvm_iphone_UTType_PUT_MPEG4(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_MPEG4 = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MP3()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_MP3;
}

void org_xmlvm_iphone_UTType_PUT_MP3(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_MP3 = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG4Audio()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_MPEG4Audio;
}

void org_xmlvm_iphone_UTType_PUT_MPEG4Audio(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_MPEG4Audio = v;
}

JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AppleProtectedMPEG4Audio()
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    return _STATIC_org_xmlvm_iphone_UTType_AppleProtectedMPEG4Audio;
}

void org_xmlvm_iphone_UTType_PUT_AppleProtectedMPEG4Audio(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UTType.classInitialized) __INIT_org_xmlvm_iphone_UTType();
    _STATIC_org_xmlvm_iphone_UTType_AppleProtectedMPEG4Audio = v;
}

