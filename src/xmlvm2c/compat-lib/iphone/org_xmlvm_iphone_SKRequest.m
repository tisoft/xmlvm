#include "xmlvm.h"
#include "org_xmlvm_iphone_SKRequestDelegate.h"

#include "org_xmlvm_iphone_SKRequest.h"

#define XMLVM_CURRENT_CLASS_NAME SKRequest
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKRequest

__TIB_DEFINITION_org_xmlvm_iphone_SKRequest __TIB_org_xmlvm_iphone_SKRequest = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_SKRequest, // classInitializer
    "org.xmlvm.iphone.SKRequest", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_SKRequest), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequest_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKRequest();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_SKRequest___INIT___(obj);
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
    &__CLASS_org_xmlvm_iphone_SKRequestDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"start",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cancel",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_SKRequest_start__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_SKRequest_cancel__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_SKRequest_getDelegate__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKRequest()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_SKRequest);
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_SKRequest();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_SKRequest);
}

void __INIT_IMPL_org_xmlvm_iphone_SKRequest()
{
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_SKRequest.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_SKRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKRequest;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKRequest.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_SKRequest.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_start__;
        __TIB_org_xmlvm_iphone_SKRequest.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_cancel__;
        __TIB_org_xmlvm_iphone_SKRequest.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_getDelegate__;
        __TIB_org_xmlvm_iphone_SKRequest.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_SKRequest.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_SKRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_SKRequest.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequest.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_SKRequest.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_SKRequest.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequest.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_SKRequest.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_SKRequest.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequest.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_SKRequest = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKRequest);
        __TIB_org_xmlvm_iphone_SKRequest.clazz = __CLASS_org_xmlvm_iphone_SKRequest;
        __CLASS_org_xmlvm_iphone_SKRequest_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequest, 3);
        __CLASS_org_xmlvm_iphone_SKRequest_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequest, 2);
        __CLASS_org_xmlvm_iphone_SKRequest_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequest, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKRequest]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_SKRequest.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_SKRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKRequest]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequest(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequest()
{
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitialized) __INIT_org_xmlvm_iphone_SKRequest();
    org_xmlvm_iphone_SKRequest* me = (org_xmlvm_iphone_SKRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKRequest));
    me->tib = &__TIB_org_xmlvm_iphone_SKRequest;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequest(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKRequest();
    org_xmlvm_iphone_SKRequest___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKRequest___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_start__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_start__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_cancel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_cancel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKRequest_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

