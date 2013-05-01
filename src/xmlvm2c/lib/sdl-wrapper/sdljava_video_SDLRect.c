#include "xmlvm.h"

#include "sdljava_video_SDLRect.h"

#define XMLVM_CURRENT_CLASS_NAME SDLRect
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_video_SDLRect

__TIB_DEFINITION_sdljava_video_SDLRect __TIB_sdljava_video_SDLRect = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_video_SDLRect, // classInitializer
    "sdljava.video.SDLRect", // className
    "sdljava.video", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_video_SDLRect), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_video_SDLRect;
JAVA_OBJECT __CLASS_sdljava_video_SDLRect_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLRect_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLRect_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(sdljava_video_SDLRect, fields.sdljava_video_SDLRect.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(sdljava_video_SDLRect, fields.sdljava_video_SDLRect.y_),
    0,
    "",
    JAVA_NULL},
    {"width",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(sdljava_video_SDLRect, fields.sdljava_video_SDLRect.width_),
    0,
    "",
    JAVA_NULL},
    {"height",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(sdljava_video_SDLRect, fields.sdljava_video_SDLRect.height_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IIII)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_video_SDLRect();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_video_SDLRect___INIT____int_int_int_int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
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
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_video_SDLRect()
{
    staticInitializerLock(&__TIB_sdljava_video_SDLRect);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_video_SDLRect.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_video_SDLRect.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_video_SDLRect);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_video_SDLRect.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_video_SDLRect.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_video_SDLRect.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.video.SDLRect")
        __INIT_IMPL_sdljava_video_SDLRect();
    }
}

void __INIT_IMPL_sdljava_video_SDLRect()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_video_SDLRect.newInstanceFunc = __NEW_INSTANCE_sdljava_video_SDLRect;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_video_SDLRect.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_video_SDLRect.numImplementedInterfaces = 0;
    __TIB_sdljava_video_SDLRect.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_video_SDLRect.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_video_SDLRect.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_video_SDLRect.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_video_SDLRect.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_video_SDLRect.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_video_SDLRect.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_video_SDLRect.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_video_SDLRect.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_video_SDLRect = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_video_SDLRect);
    __TIB_sdljava_video_SDLRect.clazz = __CLASS_sdljava_video_SDLRect;
    __TIB_sdljava_video_SDLRect.baseType = JAVA_NULL;
    __CLASS_sdljava_video_SDLRect_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLRect);
    __CLASS_sdljava_video_SDLRect_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLRect_1ARRAY);
    __CLASS_sdljava_video_SDLRect_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLRect_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_video_SDLRect]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_video_SDLRect.classInitialized = 1;
}

void __DELETE_sdljava_video_SDLRect(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_video_SDLRect]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLRect(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    ((sdljava_video_SDLRect*) me)->fields.sdljava_video_SDLRect.x_ = 0;
    ((sdljava_video_SDLRect*) me)->fields.sdljava_video_SDLRect.y_ = 0;
    ((sdljava_video_SDLRect*) me)->fields.sdljava_video_SDLRect.width_ = 0;
    ((sdljava_video_SDLRect*) me)->fields.sdljava_video_SDLRect.height_ = 0;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_video_SDLRect]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_video_SDLRect()
{
    if (!__TIB_sdljava_video_SDLRect.classInitialized) __INIT_sdljava_video_SDLRect();
    sdljava_video_SDLRect* me = (sdljava_video_SDLRect*) XMLVM_MALLOC(sizeof(sdljava_video_SDLRect));
    me->tib = &__TIB_sdljava_video_SDLRect;
    __INIT_INSTANCE_MEMBERS_sdljava_video_SDLRect(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_video_SDLRect]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLRect()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void sdljava_video_SDLRect___INIT____int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLRect___INIT____int_int_int_int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLRect", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r0.o = me;
    _r1.i = n1;
    _r2.i = n2;
    _r3.i = n3;
    _r4.i = n4;
    XMLVM_SOURCE_POSITION("SDLRect.java", 29)
    XMLVM_CHECK_NPE(0)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("SDLRect.java", 30)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLRect*) _r0.o)->fields.sdljava_video_SDLRect.x_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLRect.java", 31)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLRect*) _r0.o)->fields.sdljava_video_SDLRect.y_ = _r2.i;
    XMLVM_SOURCE_POSITION("SDLRect.java", 32)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLRect*) _r0.o)->fields.sdljava_video_SDLRect.width_ = _r3.i;
    XMLVM_SOURCE_POSITION("SDLRect.java", 33)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLRect*) _r0.o)->fields.sdljava_video_SDLRect.height_ = _r4.i;
    XMLVM_SOURCE_POSITION("SDLRect.java", 34)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

