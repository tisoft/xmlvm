#include "xmlvm.h"
#include "java_lang_String.h"
#include "sdljava_ttf_SDLTrueTypeFont.h"

#include "sdljava_ttf_SDLTTF.h"

#define XMLVM_CURRENT_CLASS_NAME SDLTTF
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_ttf_SDLTTF

__TIB_DEFINITION_sdljava_ttf_SDLTTF __TIB_sdljava_ttf_SDLTTF = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_ttf_SDLTTF, // classInitializer
    "sdljava.ttf.SDLTTF", // className
    "sdljava.ttf", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_ttf_SDLTTF), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <SDL/SDL_ttf.h>
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
    JAVA_OBJECT obj = __NEW_sdljava_ttf_SDLTTF();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_ttf_SDLTTF___INIT___(obj);
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
    &__CLASS_java_lang_String,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"init",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"openFont",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;I)Lsdljava/ttf/SDLTrueTypeFont;",
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
        sdljava_ttf_SDLTTF_init__();
        break;
    case 1:
        result = (JAVA_OBJECT) sdljava_ttf_SDLTTF_openFont___java_lang_String_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_ttf_SDLTTF()
{
    staticInitializerLock(&__TIB_sdljava_ttf_SDLTTF);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_ttf_SDLTTF.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_ttf_SDLTTF.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_ttf_SDLTTF);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_ttf_SDLTTF.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_ttf_SDLTTF.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_ttf_SDLTTF.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.ttf.SDLTTF")
        __INIT_IMPL_sdljava_ttf_SDLTTF();
    }
}

void __INIT_IMPL_sdljava_ttf_SDLTTF()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_ttf_SDLTTF.newInstanceFunc = __NEW_INSTANCE_sdljava_ttf_SDLTTF;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_ttf_SDLTTF.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_ttf_SDLTTF.numImplementedInterfaces = 0;
    __TIB_sdljava_ttf_SDLTTF.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_ttf_SDLTTF.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_ttf_SDLTTF.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_ttf_SDLTTF.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_ttf_SDLTTF.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_ttf_SDLTTF.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_ttf_SDLTTF.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_ttf_SDLTTF.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_ttf_SDLTTF.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_ttf_SDLTTF = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_ttf_SDLTTF);
    __TIB_sdljava_ttf_SDLTTF.clazz = __CLASS_sdljava_ttf_SDLTTF;
    __TIB_sdljava_ttf_SDLTTF.baseType = JAVA_NULL;
    __CLASS_sdljava_ttf_SDLTTF_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTTF);
    __CLASS_sdljava_ttf_SDLTTF_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTTF_1ARRAY);
    __CLASS_sdljava_ttf_SDLTTF_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_ttf_SDLTTF_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_ttf_SDLTTF]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_ttf_SDLTTF.classInitialized = 1;
}

void __DELETE_sdljava_ttf_SDLTTF(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_ttf_SDLTTF]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTTF(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTTF]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_ttf_SDLTTF()
{
    if (!__TIB_sdljava_ttf_SDLTTF.classInitialized) __INIT_sdljava_ttf_SDLTTF();
    sdljava_ttf_SDLTTF* me = (sdljava_ttf_SDLTTF*) XMLVM_MALLOC(sizeof(sdljava_ttf_SDLTTF));
    me->tib = &__TIB_sdljava_ttf_SDLTTF;
    __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTTF(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_ttf_SDLTTF]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_ttf_SDLTTF()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_ttf_SDLTTF();
    sdljava_ttf_SDLTTF___INIT___(me);
    return me;
}

void sdljava_ttf_SDLTTF___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTTF___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void sdljava_ttf_SDLTTF_init__()
{
    if (!__TIB_sdljava_ttf_SDLTTF.classInitialized) __INIT_sdljava_ttf_SDLTTF();
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTTF_init__]
    TTF_Init();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT sdljava_ttf_SDLTTF_openFont___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_sdljava_ttf_SDLTTF.classInitialized) __INIT_sdljava_ttf_SDLTTF();
    //XMLVM_BEGIN_WRAPPER[sdljava_ttf_SDLTTF_openFont___java_lang_String_int]
    TTF_Font *font = TTF_OpenFont(xmlvm_java_string_to_const_char(n1), (int) n2);
    sdljava_ttf_SDLTrueTypeFont *ttf = (sdljava_ttf_SDLTrueTypeFont *) __NEW_sdljava_ttf_SDLTrueTypeFont();
    sdljava_ttf_SDLTrueTypeFont___INIT___INTERNAL_CONSTRUCTOR(ttf, font);
    return (JAVA_OBJECT) ttf;
    //XMLVM_END_WRAPPER
}

