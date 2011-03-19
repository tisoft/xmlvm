#include "xmlvm.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIColor.h"

#include "org_xmlvm_iphone_MPMoviePlayerController.h"

#define XMLVM_CURRENT_CLASS_NAME MPMoviePlayerController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MPMoviePlayerController

__TIB_DEFINITION_org_xmlvm_iphone_MPMoviePlayerController __TIB_org_xmlvm_iphone_MPMoviePlayerController = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MPMoviePlayerController, // classInitializer
    "org.xmlvm.iphone.MPMoviePlayerController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MPMoviePlayerController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMoviePlayerController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMoviePlayerController_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMoviePlayerController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMoviePlayerController_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MPMoviePlayerController();
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

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"initWithContentURL",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"play",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stop",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentURL",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBackgroundColor",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBackgroundColor",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getInitialPlaybackTime",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setInitialPlaybackTime",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getScalingMode",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setScalingMode",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMovieControlMode",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMovieControlMode",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_MPMoviePlayerController_initWithContentURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_MPMoviePlayerController_play__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MPMoviePlayerController_stop__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_MPMoviePlayerController_getContentURL__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 8:
        org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MPMoviePlayerController()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MPMoviePlayerController);
    if (!__TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MPMoviePlayerController();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MPMoviePlayerController);
}

void __INIT_IMPL_org_xmlvm_iphone_MPMoviePlayerController()
{
    if (!__TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MPMoviePlayerController;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_play__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_stop__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getContentURL__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_MPMoviePlayerController.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MPMoviePlayerController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MPMoviePlayerController);
        __TIB_org_xmlvm_iphone_MPMoviePlayerController.clazz = __CLASS_org_xmlvm_iphone_MPMoviePlayerController;
        __CLASS_org_xmlvm_iphone_MPMoviePlayerController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPMoviePlayerController, 3);
        __CLASS_org_xmlvm_iphone_MPMoviePlayerController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPMoviePlayerController, 2);
        __CLASS_org_xmlvm_iphone_MPMoviePlayerController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPMoviePlayerController, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MPMoviePlayerController]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MPMoviePlayerController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MPMoviePlayerController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPMoviePlayerController(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMoviePlayerController()
{
    if (!__TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitialized) __INIT_org_xmlvm_iphone_MPMoviePlayerController();
    org_xmlvm_iphone_MPMoviePlayerController* me = (org_xmlvm_iphone_MPMoviePlayerController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MPMoviePlayerController));
    me->tib = &__TIB_org_xmlvm_iphone_MPMoviePlayerController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPMoviePlayerController(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MPMoviePlayerController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMoviePlayerController()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_initWithContentURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_MPMoviePlayerController.classInitialized) __INIT_org_xmlvm_iphone_MPMoviePlayerController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_initWithContentURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_play__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_play__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_stop__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_getContentURL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getContentURL__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getBackgroundColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setBackgroundColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getInitialPlaybackTime__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setInitialPlaybackTime___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getScalingMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setScalingMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_getMovieControlMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPMoviePlayerController_setMovieControlMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

