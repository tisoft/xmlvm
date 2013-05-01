#include "xmlvm.h"

#include "sdljava_video_SDLColor.h"

#define XMLVM_CURRENT_CLASS_NAME SDLColor
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_video_SDLColor

__TIB_DEFINITION_sdljava_video_SDLColor __TIB_sdljava_video_SDLColor = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_video_SDLColor, // classInitializer
    "sdljava.video.SDLColor", // className
    "sdljava.video", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_video_SDLColor), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_video_SDLColor;
JAVA_OBJECT __CLASS_sdljava_video_SDLColor_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLColor_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLColor_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"r",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PRIVATE,
    XMLVM_OFFSETOF(sdljava_video_SDLColor, fields.sdljava_video_SDLColor.r_),
    0,
    "",
    JAVA_NULL},
    {"g",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PRIVATE,
    XMLVM_OFFSETOF(sdljava_video_SDLColor, fields.sdljava_video_SDLColor.g_),
    0,
    "",
    JAVA_NULL},
    {"b",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PRIVATE,
    XMLVM_OFFSETOF(sdljava_video_SDLColor, fields.sdljava_video_SDLColor.b_),
    0,
    "",
    JAVA_NULL},
    {"a",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PRIVATE,
    XMLVM_OFFSETOF(sdljava_video_SDLColor, fields.sdljava_video_SDLColor.a_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
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
    "(III)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IIII)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_video_SDLColor();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_video_SDLColor___INIT____int_int_int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    case 1:
        sdljava_video_SDLColor___INIT____int_int_int_int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
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
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getR",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setR",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getG",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setG",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getB",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setB",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getA",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setA",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
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
        conversion.i = (JAVA_INT) sdljava_video_SDLColor_getR__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        sdljava_video_SDLColor_setR___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        conversion.i = (JAVA_INT) sdljava_video_SDLColor_getG__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 3:
        sdljava_video_SDLColor_setG___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 4:
        conversion.i = (JAVA_INT) sdljava_video_SDLColor_getB__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 5:
        sdljava_video_SDLColor_setB___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 6:
        conversion.i = (JAVA_INT) sdljava_video_SDLColor_getA__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 7:
        sdljava_video_SDLColor_setA___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_video_SDLColor()
{
    staticInitializerLock(&__TIB_sdljava_video_SDLColor);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_video_SDLColor.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_video_SDLColor.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_video_SDLColor);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_video_SDLColor.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_video_SDLColor.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_video_SDLColor.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.video.SDLColor")
        __INIT_IMPL_sdljava_video_SDLColor();
    }
}

void __INIT_IMPL_sdljava_video_SDLColor()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_video_SDLColor.newInstanceFunc = __NEW_INSTANCE_sdljava_video_SDLColor;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_video_SDLColor.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_video_SDLColor.numImplementedInterfaces = 0;
    __TIB_sdljava_video_SDLColor.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_video_SDLColor.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_video_SDLColor.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_video_SDLColor.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_video_SDLColor.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_video_SDLColor.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_video_SDLColor.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_video_SDLColor.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_video_SDLColor.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_video_SDLColor = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_video_SDLColor);
    __TIB_sdljava_video_SDLColor.clazz = __CLASS_sdljava_video_SDLColor;
    __TIB_sdljava_video_SDLColor.baseType = JAVA_NULL;
    __CLASS_sdljava_video_SDLColor_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLColor);
    __CLASS_sdljava_video_SDLColor_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLColor_1ARRAY);
    __CLASS_sdljava_video_SDLColor_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLColor_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_video_SDLColor]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_video_SDLColor.classInitialized = 1;
}

void __DELETE_sdljava_video_SDLColor(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_video_SDLColor]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLColor(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    ((sdljava_video_SDLColor*) me)->fields.sdljava_video_SDLColor.r_ = 0;
    ((sdljava_video_SDLColor*) me)->fields.sdljava_video_SDLColor.g_ = 0;
    ((sdljava_video_SDLColor*) me)->fields.sdljava_video_SDLColor.b_ = 0;
    ((sdljava_video_SDLColor*) me)->fields.sdljava_video_SDLColor.a_ = 0;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_video_SDLColor]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_video_SDLColor()
{
    if (!__TIB_sdljava_video_SDLColor.classInitialized) __INIT_sdljava_video_SDLColor();
    sdljava_video_SDLColor* me = (sdljava_video_SDLColor*) XMLVM_MALLOC(sizeof(sdljava_video_SDLColor));
    me->tib = &__TIB_sdljava_video_SDLColor;
    __INIT_INSTANCE_MEMBERS_sdljava_video_SDLColor(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_video_SDLColor]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLColor()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void sdljava_video_SDLColor___INIT____int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor___INIT____int_int_int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r0.o = me;
    _r1.i = n1;
    _r2.i = n2;
    _r3.i = n3;
    XMLVM_SOURCE_POSITION("SDLColor.java", 29)
    XMLVM_CHECK_NPE(0)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("SDLColor.java", 30)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.r_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 31)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.g_ = _r2.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 32)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.b_ = _r3.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 33)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLColor___INIT____int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor___INIT____int_int_int_int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "<init>", "?")
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
    XMLVM_SOURCE_POSITION("SDLColor.java", 36)
    XMLVM_CHECK_NPE(0)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("SDLColor.java", 37)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.r_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 38)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.g_ = _r2.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 39)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.b_ = _r3.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 40)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.a_ = _r4.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 41)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLColor_getR__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_getR__]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "getR", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = me;
    XMLVM_SOURCE_POSITION("SDLColor.java", 36)
    XMLVM_CHECK_NPE(1)
    _r0.i = ((sdljava_video_SDLColor*) _r1.o)->fields.sdljava_video_SDLColor.r_;
    XMLVM_EXIT_METHOD()
    return _r0.i;
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLColor_setR___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_setR___int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "setR", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.i = n1;
    XMLVM_SOURCE_POSITION("SDLColor.java", 40)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.r_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 41)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLColor_getG__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_getG__]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "getG", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = me;
    XMLVM_SOURCE_POSITION("SDLColor.java", 44)
    XMLVM_CHECK_NPE(1)
    _r0.i = ((sdljava_video_SDLColor*) _r1.o)->fields.sdljava_video_SDLColor.g_;
    XMLVM_EXIT_METHOD()
    return _r0.i;
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLColor_setG___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_setG___int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "setG", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.i = n1;
    XMLVM_SOURCE_POSITION("SDLColor.java", 48)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.g_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 49)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLColor_getB__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_getB__]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "getB", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = me;
    XMLVM_SOURCE_POSITION("SDLColor.java", 52)
    XMLVM_CHECK_NPE(1)
    _r0.i = ((sdljava_video_SDLColor*) _r1.o)->fields.sdljava_video_SDLColor.b_;
    XMLVM_EXIT_METHOD()
    return _r0.i;
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLColor_setB___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_setB___int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "setB", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.i = n1;
    XMLVM_SOURCE_POSITION("SDLColor.java", 56)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.b_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 57)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLColor_getA__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_getA__]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "getA", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = me;
    XMLVM_SOURCE_POSITION("SDLColor.java", 60)
    XMLVM_CHECK_NPE(1)
    _r0.i = ((sdljava_video_SDLColor*) _r1.o)->fields.sdljava_video_SDLColor.a_;
    XMLVM_EXIT_METHOD()
    return _r0.i;
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLColor_setA___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLColor_setA___int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLColor", "setA", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.i = n1;
    XMLVM_SOURCE_POSITION("SDLColor.java", 64)
    XMLVM_CHECK_NPE(0)
    ((sdljava_video_SDLColor*) _r0.o)->fields.sdljava_video_SDLColor.a_ = _r1.i;
    XMLVM_SOURCE_POSITION("SDLColor.java", 65)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

