#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_NSOperation.h"

#include "org_xmlvm_iphone_NSOperationQueue.h"

#define XMLVM_CURRENT_CLASS_NAME NSOperationQueue
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSOperationQueue

__TIB_DEFINITION_org_xmlvm_iphone_NSOperationQueue __TIB_org_xmlvm_iphone_NSOperationQueue = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSOperationQueue, // classInitializer
    "org.xmlvm.iphone.NSOperationQueue", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSOperationQueue), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueue;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueue_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueue_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueue_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <Foundation/NSOperation.h>

void org_xmlvm_iphone_NSOperationQueue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSOperationQueue class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSOperationQueue();
        org_xmlvm_iphone_NSOperationQueue_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
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
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSOperationQueue();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSOperationQueue___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSOperation,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"addOperation",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addOperationsWaitUntilFinished",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addOperationWithBlock",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getOperations",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getOperationCount",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cancelAllOperations",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"waitUntilAllOperationsAreFinished",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMaxConcurrentOperationCount",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMaxConcurrentOperationCount",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSuspended",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isSuspended",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setName",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getName",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentQueue",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMainQueue",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSOperationQueue_addOperation___org_xmlvm_iphone_NSOperation(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSOperationQueue_addOperationsWaitUntilFinished___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 2:
        org_xmlvm_iphone_NSOperationQueue_addOperationWithBlock__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSOperationQueue_getOperations__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_NSOperationQueue_getOperationCount__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_NSOperationQueue_cancelAllOperations__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_NSOperationQueue_waitUntilAllOperationsAreFinished__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_NSOperationQueue_getMaxConcurrentOperationCount__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_NSOperationQueue_setMaxConcurrentOperationCount___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_NSOperationQueue_setSuspended___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_NSOperationQueue_isSuspended__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_NSOperationQueue_setName___java_lang_String(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_NSOperationQueue_getName__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_NSOperationQueue_getCurrentQueue__();
        break;
    case 14:
        org_xmlvm_iphone_NSOperationQueue_getMainQueue__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSOperationQueue()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSOperationQueue);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSOperationQueue.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSOperationQueue.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSOperationQueue);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSOperationQueue.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSOperationQueue.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSOperationQueue.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSOperationQueue();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSOperationQueue()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSOperationQueue.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSOperationQueue;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSOperationQueue.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSOperationQueue.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSOperationQueue.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSOperationQueue.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueue.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOperationQueue.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSOperationQueue.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueue.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOperationQueue.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSOperationQueue.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueue.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSOperationQueue = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSOperationQueue);
    __TIB_org_xmlvm_iphone_NSOperationQueue.clazz = __CLASS_org_xmlvm_iphone_NSOperationQueue;
    __TIB_org_xmlvm_iphone_NSOperationQueue.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSOperationQueue_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueue);
    __CLASS_org_xmlvm_iphone_NSOperationQueue_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueue_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSOperationQueue_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueue_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSOperationQueue]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSOperationQueue.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSOperationQueue(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSOperationQueue]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueue(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueue]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSOperationQueue()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueue.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueue();
    org_xmlvm_iphone_NSOperationQueue* me = (org_xmlvm_iphone_NSOperationQueue*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSOperationQueue));
    me->tib = &__TIB_org_xmlvm_iphone_NSOperationQueue;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueue(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSOperationQueue]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSOperationQueue()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSOperationQueue();
    org_xmlvm_iphone_NSOperationQueue___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSOperationQueue___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_addOperation___org_xmlvm_iphone_NSOperation(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_addOperation___org_xmlvm_iphone_NSOperation]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_addOperationsWaitUntilFinished___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_addOperationsWaitUntilFinished___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_addOperationWithBlock__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_addOperationWithBlock__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSOperationQueue_getOperations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getOperations__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSOperationQueue_getOperationCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getOperationCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_cancelAllOperations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_cancelAllOperations__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_waitUntilAllOperationsAreFinished__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_waitUntilAllOperationsAreFinished__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSOperationQueue_getMaxConcurrentOperationCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getMaxConcurrentOperationCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_setMaxConcurrentOperationCount___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_setMaxConcurrentOperationCount___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_setSuspended___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_setSuspended___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSOperationQueue_isSuspended__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_isSuspended__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSOperationQueue_setName___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_setName___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSOperationQueue_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSOperationQueue_getCurrentQueue__()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueue.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getCurrentQueue__]
    return xmlvm_get_associated_c_object([NSOperationQueue currentQueue]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSOperationQueue_getMainQueue__()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueue.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSOperationQueue_getMainQueue__]
    return xmlvm_get_associated_c_object([NSOperationQueue mainQueue]);
    //XMLVM_END_WRAPPER
}

