#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSSelector.h"
#include "org_xmlvm_iphone_NSTimer.h"

#include "org_xmlvm_iphone_NSRunLoop.h"

#define XMLVM_CURRENT_CLASS_NAME NSRunLoop
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSRunLoop

__TIB_DEFINITION_org_xmlvm_iphone_NSRunLoop __TIB_org_xmlvm_iphone_NSRunLoop = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSRunLoop, // classInitializer
    "org.xmlvm.iphone.NSRunLoop", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSRunLoop), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_NSRunLoop_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

/*
 * README: The purpose of this function is to create a wrapping C object for a given
 * Objective-C object. We first have to check that the type matches. If so, the wrapping
 * C object is created, initialized and returned to the caller. This function is invoked
 * from xmlvm_get_associated_c_object() (see org_xmlvm_iphone_NSObject.m). Registering
 * of this function happens in the injected code for NSRunLoop's class initializer via
 * xmlvm_register_wrapper_creator().
 */
static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSRunLoop class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSRunLoop();
        org_xmlvm_iphone_NSRunLoop_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}


//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSRunLoop_NSDefaultRunLoopMode;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSRunLoop_NSRunLoopCommonModes;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSDefaultRunLoopMode",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSRunLoop_NSDefaultRunLoopMode,
    "",
    JAVA_NULL},
    {"NSRunLoopCommonModes",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSRunLoop_NSRunLoopCommonModes,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSRunLoop();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSRunLoop___INIT___(obj);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSTimer,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_NSDate,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSDate,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_NSDate,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_Object,
    &__CLASS_int,
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"currentRunLoop",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSRunLoop;",
    JAVA_NULL,
    JAVA_NULL},
    {"mainRunLoop",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSRunLoop;",
    JAVA_NULL,
    JAVA_NULL},
    {"currentMode",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"addTimer",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSTimer;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"limitDateForMode",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/NSDate;",
    JAVA_NULL,
    JAVA_NULL},
    {"acceptInputForMode",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Lorg/xmlvm/iphone/NSDate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"run",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"runUntilDate",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSDate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"runMode",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Lorg/xmlvm/iphone/NSDate;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"configureAsServer",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"performSelector",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSSelector;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"cancelPerformSelector",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSSelector;Ljava/lang/Object;Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"cancelPerformSelectorsWithTarget",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSRunLoop_currentRunLoop__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSRunLoop_mainRunLoop__();
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSRunLoop_currentMode__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSRunLoop_limitDateForMode___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_NSRunLoop_acceptInputForMode___java_lang_String_org_xmlvm_iphone_NSDate(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_NSRunLoop_run__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_NSRunLoop_runUntilDate___org_xmlvm_iphone_NSDate(receiver, argsArray[0]);
        break;
    case 8:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSRunLoop_runMode___java_lang_String_org_xmlvm_iphone_NSDate(receiver, argsArray[0], argsArray[1]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 9:
        org_xmlvm_iphone_NSRunLoop_configureAsServer__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_NSRunLoop_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object_int_java_util_List(receiver, argsArray[0], argsArray[1], argsArray[2], ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, argsArray[4]);
        break;
    case 11:
        org_xmlvm_iphone_NSRunLoop_cancelPerformSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 12:
        org_xmlvm_iphone_NSRunLoop_cancelPerformSelectorsWithTarget___java_lang_Object(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSRunLoop()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSRunLoop);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSRunLoop.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSRunLoop.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSRunLoop);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSRunLoop.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSRunLoop.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSRunLoop.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSRunLoop")
        __INIT_IMPL_org_xmlvm_iphone_NSRunLoop();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSRunLoop()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSRunLoop.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSRunLoop;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSRunLoop.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSRunLoop.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSRunLoop.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSRunLoop_NSDefaultRunLoopMode = (java_lang_String*) xmlvm_create_java_string_from_pool(0);
    _STATIC_org_xmlvm_iphone_NSRunLoop_NSRunLoopCommonModes = (java_lang_String*) xmlvm_create_java_string_from_pool(1);

    __TIB_org_xmlvm_iphone_NSRunLoop.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSRunLoop.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSRunLoop.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSRunLoop.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSRunLoop.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSRunLoop.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSRunLoop.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSRunLoop.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSRunLoop = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSRunLoop);
    __TIB_org_xmlvm_iphone_NSRunLoop.clazz = __CLASS_org_xmlvm_iphone_NSRunLoop;
    __TIB_org_xmlvm_iphone_NSRunLoop.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSRunLoop_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRunLoop);
    __CLASS_org_xmlvm_iphone_NSRunLoop_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRunLoop_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSRunLoop_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRunLoop_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSRunLoop]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSRunLoop.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSRunLoop(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSRunLoop]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRunLoop(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRunLoop]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSRunLoop()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
org_xmlvm_iphone_NSRunLoop* me = (org_xmlvm_iphone_NSRunLoop*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSRunLoop));
    me->tib = &__TIB_org_xmlvm_iphone_NSRunLoop;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRunLoop(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSRunLoop]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSRunLoop()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSRunLoop();
    org_xmlvm_iphone_NSRunLoop___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_GET_NSDefaultRunLoopMode()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
    return _STATIC_org_xmlvm_iphone_NSRunLoop_NSDefaultRunLoopMode;
}

void org_xmlvm_iphone_NSRunLoop_PUT_NSDefaultRunLoopMode(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
_STATIC_org_xmlvm_iphone_NSRunLoop_NSDefaultRunLoopMode = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_GET_NSRunLoopCommonModes()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
    return _STATIC_org_xmlvm_iphone_NSRunLoop_NSRunLoopCommonModes;
}

void org_xmlvm_iphone_NSRunLoop_PUT_NSRunLoopCommonModes(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
_STATIC_org_xmlvm_iphone_NSRunLoop_NSRunLoopCommonModes = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_currentRunLoop__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_currentRunLoop__]

    return xmlvm_get_associated_c_object([NSRunLoop currentRunLoop]);

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_mainRunLoop__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_mainRunLoop__]

    return xmlvm_get_associated_c_object([NSRunLoop mainRunLoop]);

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_currentMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_currentMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_limitDateForMode___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_limitDateForMode___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_acceptInputForMode___java_lang_String_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_acceptInputForMode___java_lang_String_org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_run__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_run__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_runUntilDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_runUntilDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSRunLoop_runMode___java_lang_String_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_runMode___java_lang_String_org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_configureAsServer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_configureAsServer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object_int_java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4, JAVA_OBJECT n5)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object_int_java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_cancelPerformSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_cancelPerformSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSRunLoop_cancelPerformSelectorsWithTarget___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSRunLoop_cancelPerformSelectorsWithTarget___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

