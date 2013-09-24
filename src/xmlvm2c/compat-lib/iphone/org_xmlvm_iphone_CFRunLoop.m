#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSTimer.h"

#include "org_xmlvm_iphone_CFRunLoop.h"

#define XMLVM_CURRENT_CLASS_NAME CFRunLoop
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CFRunLoop

__TIB_DEFINITION_org_xmlvm_iphone_CFRunLoop __TIB_org_xmlvm_iphone_CFRunLoop = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CFRunLoop, // classInitializer
    "org.xmlvm.iphone.CFRunLoop", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CFType, // extends
    sizeof(org_xmlvm_iphone_CFRunLoop), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreFoundation/CoreFoundation.h>
#include "xmlvm-ios.h"

void org_xmlvm_iphone_CFRunLoop_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef)
{
    org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(me, wrappedCFTypeRef);
}
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopDefaultMode;
static JAVA_INT _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunFinished;
static JAVA_INT _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunStopped;
static JAVA_INT _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunTimedOut;
static JAVA_INT _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunHandledSource;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCFRunLoopDefaultMode",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopDefaultMode,
    "",
    JAVA_NULL},
    {"kCFRunLoopRunFinished",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunFinished,
    "",
    JAVA_NULL},
    {"kCFRunLoopRunStopped",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunStopped,
    "",
    JAVA_NULL},
    {"kCFRunLoopRunTimedOut",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunTimedOut,
    "",
    JAVA_NULL},
    {"kCFRunLoopRunHandledSource",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunHandledSource,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CFRunLoop();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CFRunLoop___INIT___(obj);
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
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_double,
    &__CLASS_byte,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSTimer,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSTimer,
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getTypeID",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()J",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrent",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CFRunLoop;",
    JAVA_NULL,
    JAVA_NULL},
    {"getMain",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CFRunLoop;",
    JAVA_NULL,
    JAVA_NULL},
    {"run",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"runInMode",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;DB)I",
    JAVA_NULL,
    JAVA_NULL},
    {"addTimer",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSTimer;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeTimer",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSTimer;Ljava/lang/String;)V",
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
        conversion.l = (JAVA_LONG) org_xmlvm_iphone_CFRunLoop_getTypeID__();
        result = __NEW_java_lang_Long();
        java_lang_Long___INIT____long(result, conversion.l);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CFRunLoop_getCurrent__();
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CFRunLoop_getMain__();
        break;
    case 3:
        org_xmlvm_iphone_CFRunLoop_run__();
        break;
    case 4:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_CFRunLoop_runInMode___java_lang_String_double_byte(argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, ((java_lang_Byte*) argsArray[2])->fields.java_lang_Byte.value_);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 5:
        org_xmlvm_iphone_CFRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_CFRunLoop_removeTimer___org_xmlvm_iphone_NSTimer_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CFRunLoop()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CFRunLoop);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CFRunLoop.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CFRunLoop.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CFRunLoop);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CFRunLoop.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CFRunLoop.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CFRunLoop.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CFRunLoop")
        __INIT_IMPL_org_xmlvm_iphone_CFRunLoop();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CFRunLoop()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFType)
    __TIB_org_xmlvm_iphone_CFRunLoop.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CFRunLoop;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CFRunLoop.vtable, __TIB_org_xmlvm_iphone_CFType.vtable, sizeof(__TIB_org_xmlvm_iphone_CFType.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CFRunLoop.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CFRunLoop.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopDefaultMode = (java_lang_String*) xmlvm_create_java_string_from_pool(0);
    _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunFinished = 1;
    _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunStopped = 2;
    _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunTimedOut = 3;
    _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunHandledSource = 4;

    __TIB_org_xmlvm_iphone_CFRunLoop.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFRunLoop.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFRunLoop.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CFRunLoop.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFRunLoop.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFRunLoop.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CFRunLoop.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFRunLoop.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CFRunLoop = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CFRunLoop);
    __TIB_org_xmlvm_iphone_CFRunLoop.clazz = __CLASS_org_xmlvm_iphone_CFRunLoop;
    __TIB_org_xmlvm_iphone_CFRunLoop.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CFRunLoop_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFRunLoop);
    __CLASS_org_xmlvm_iphone_CFRunLoop_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFRunLoop_1ARRAY);
    __CLASS_org_xmlvm_iphone_CFRunLoop_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFRunLoop_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CFRunLoop]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CFRunLoop.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CFRunLoop(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CFRunLoop]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFRunLoop(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFRunLoop]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CFRunLoop()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
org_xmlvm_iphone_CFRunLoop* me = (org_xmlvm_iphone_CFRunLoop*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CFRunLoop));
    me->tib = &__TIB_org_xmlvm_iphone_CFRunLoop;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFRunLoop(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CFRunLoop]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFRunLoop()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CFRunLoop();
    org_xmlvm_iphone_CFRunLoop___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopDefaultMode()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    return _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopDefaultMode;
}

void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopDefaultMode(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopDefaultMode = v;
}

JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunFinished()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    return _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunFinished;
}

void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunFinished(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunFinished = v;
}

JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunStopped()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    return _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunStopped;
}

void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunStopped(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunStopped = v;
}

JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunTimedOut()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    return _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunTimedOut;
}

void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunTimedOut(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunTimedOut = v;
}

JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunHandledSource()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    return _STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunHandledSource;
}

void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunHandledSource(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
_STATIC_org_xmlvm_iphone_CFRunLoop_kCFRunLoopRunHandledSource = v;
}

JAVA_LONG org_xmlvm_iphone_CFRunLoop_getTypeID__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_getTypeID__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_getCurrent__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_getCurrent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_getMain__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_getMain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFRunLoop_run__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_run__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CFRunLoop_runInMode___java_lang_String_double_byte(JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_BYTE n3)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFRunLoop)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_runInMode___java_lang_String_double_byte]
    XMLVM_VAR_NSString(mode, n1);
    XMLVM_VAR_DOUBLE(seconds, n2);
    XMLVM_VAR_BYTE(returnAfterSourceHandled, n3);
    CFStringRef cfmode;
    if ([mode isEqualToString:@"kCFRunLoopDefaultMode"]) {
        cfmode = kCFRunLoopDefaultMode;
    }
    else {
        XMLVM_NOT_IMPLEMENTED();
    }
    JAVA_INT ret = CFRunLoopRunInMode(cfmode, seconds, returnAfterSourceHandled);
    [mode release];
    return ret;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFRunLoop_removeTimer___org_xmlvm_iphone_NSTimer_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop_removeTimer___org_xmlvm_iphone_NSTimer_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFRunLoop___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFRunLoop___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

