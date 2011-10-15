#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSNetServiceDelegate.h"
#include "org_xmlvm_iphone_NSNetServiceDelegate_Wrapper.h"
#include "org_xmlvm_iphone_NSRunLoop.h"

#include "org_xmlvm_iphone_NSNetService.h"

#define XMLVM_CURRENT_CLASS_NAME NSNetService
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSNetService

__TIB_DEFINITION_org_xmlvm_iphone_NSNetService __TIB_org_xmlvm_iphone_NSNetService = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetService, // classInitializer
    "org.xmlvm.iphone.NSNetService", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSNetService), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetService_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_NSNetServiceDelegate_Wrapper.h"
#include "org_xmlvm_iphone_NSString.h"
#include "java_io_IOException.h"

void org_xmlvm_iphone_NSNetService_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

/*
 * README: The purpose of this function is to create a wrapping C object for a given
 * Objective-C object. We first have to check that the type matches. If so, the wrapping
 * C object is created, initialized and returned to the caller. This function is invoked
 * from xmlvm_get_associated_c_object() (see org_xmlvm_iphone_NSObject.m). Registering
 * of this function happens in the injected code for NSNetService's class initializer via
 * xmlvm_register_wrapper_creator().
 */
static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSNetService class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSNetService();
        org_xmlvm_iphone_NSNetService_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegateWrapper",
    &__CLASS_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSNetService, fields.org_xmlvm_iphone_NSNetService.delegateWrapper_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_int,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNetService();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String(obj, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String_int(obj, argsArray[0], argsArray[1], argsArray[2], ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRunLoop,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRunLoop,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"scheduleInRunLoop",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"resolveWithTimeout",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"publish",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stop",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeFromRunLoop",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAddresses",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDomain",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getHostName",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getName",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPort",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getType",
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
        org_xmlvm_iphone_NSNetService_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_NSNetService_setDelegate___org_xmlvm_iphone_NSNetServiceDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSNetService_resolveWithTimeout___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 3:
        org_xmlvm_iphone_NSNetService_publish__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_NSNetService_stop__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_NSNetService_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_NSNetService_getAddresses__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_NSNetService_getDomain__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_NSNetService_getHostName__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_NSNetService_getName__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_NSNetService_getPort__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_NSNetService_getType__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSNetService()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetService);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetService.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetService.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetService);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetService.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetService.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetService.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNetService();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetService()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSNetService.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNetService;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNetService.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSNetService.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetService.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSNetService.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetService.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNetService.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetService.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetService.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNetService.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetService.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetService.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNetService = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetService);
    __TIB_org_xmlvm_iphone_NSNetService.clazz = __CLASS_org_xmlvm_iphone_NSNetService;
    __TIB_org_xmlvm_iphone_NSNetService.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetService_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetService);
    __CLASS_org_xmlvm_iphone_NSNetService_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetService_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetService_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetService_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNetService]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSNetService.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSNetService(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNetService]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetService(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_NSNetService*) me)->fields.org_xmlvm_iphone_NSNetService.delegateWrapper_ = (org_xmlvm_iphone_NSNetServiceDelegate_Wrapper*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetService]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetService()
{
    if (!__TIB_org_xmlvm_iphone_NSNetService.classInitialized) __INIT_org_xmlvm_iphone_NSNetService();
    org_xmlvm_iphone_NSNetService* me = (org_xmlvm_iphone_NSNetService*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNetService));
    me->tib = &__TIB_org_xmlvm_iphone_NSNetService;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetService(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNetService]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetService()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_NSString(domain, n1);
    XMLVM_VAR_NSString(type, n2);
    XMLVM_VAR_NSString(name, n3);

    NSNetService* netService = [[NSNetService alloc] initWithDomain:domain type:type name:name];

    [name release];
    [type release];
    [domain release];

    if (netService == nil) {
        XMLVM_THROW(java_io_IOException);
    }

    org_xmlvm_iphone_NSNetService_INTERNAL_CONSTRUCTOR(me, netService);

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String_int]

    XMLVM_VAR_NSString(domain, n1);
    XMLVM_VAR_NSString(type, n2);
    XMLVM_VAR_NSString(name, n3);
    XMLVM_VAR_INT(port, n4);

    NSNetService* netService = [[NSNetService alloc] initWithDomain:domain type:type name:name port:port];
    if (netService == nil) {
        XMLVM_THROW(java_io_IOException);
    }

    org_xmlvm_iphone_NSNetService_INTERNAL_CONSTRUCTOR(me, netService);

    [name release];
    [type release];
    [domain release];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String]
    XMLVM_VAR_THIZ;

    XMLVM_VAR_IOS(NSRunLoop, aRunLoop, n1);
    XMLVM_VAR_NSRunLoopMode(mode, n2);
    [thiz scheduleInRunLoop:aRunLoop forMode:mode];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_setDelegate___org_xmlvm_iphone_NSNetServiceDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_setDelegate___org_xmlvm_iphone_NSNetServiceDelegate]
    XMLVM_VAR_THIZ;

    org_xmlvm_iphone_NSNetServiceDelegate* jdelegate = n1;
    org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* jwrapper = __NEW_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper();
    org_xmlvm_iphone_NSNetServiceDelegate_Wrapper___INIT____org_xmlvm_iphone_NSNetServiceDelegate(jwrapper, jdelegate);

    jthiz->fields.org_xmlvm_iphone_NSNetService.delegateWrapper_ = jwrapper;

    NSNetServiceDelegateWrapper* wrapper = jwrapper->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [wrapper addSource: jthiz: thiz];
    thiz.delegate = wrapper;

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_resolveWithTimeout___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_resolveWithTimeout___double]

    XMLVM_NOT_IMPLEMENTED();

// The following seems to sometimes cause the NSNetService to be collected early, so this is not implemented.
// Some folks had similar trouble: http://stackoverflow.com/questions/1960378/nsnetservice-delegates-not-being-called
//    XMLVM_VAR_THIZ;
//    XMLVM_VAR_DOUBLE(timeoutSeconds, n1);
//    [thiz resolveWithTimeout:(NSTimeInterval)timeoutSeconds];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_publish__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_publish__]

    XMLVM_VAR_THIZ;
    [thiz publish];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_stop__]

    XMLVM_VAR_THIZ;
    [thiz stop];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetService_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;

    XMLVM_VAR_IOS(NSRunLoop, aRunLoop, n1);
    XMLVM_VAR_NSRunLoopMode(mode, n2);
    [thiz removeFromRunLoop:aRunLoop forMode:mode];

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSNetService_getAddresses__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getAddresses__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSNetService_getDomain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getDomain__]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT str = fromNSString([thiz domain]);
// TODO release the NSString?
    return str;

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSNetService_getHostName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getHostName__]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT str = fromNSString([thiz hostName]);
// TODO release the NSString?
    return str;

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSNetService_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getName__]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT str = fromNSString([thiz name]);
// TODO release the NSString?
    return str;

    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSNetService_getPort__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getPort__]
    XMLVM_VAR_THIZ;

    NSInteger port = [thiz port];
    return port;

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSNetService_getType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetService_getType__]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT str = fromNSString([thiz type]);
// TODO release the NSString?
    return str;

    //XMLVM_END_WRAPPER
}

