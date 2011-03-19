#include "xmlvm.h"
#include "org_xmlvm_iphone_SKRequest.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_SKRequestDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME SKRequestDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKRequestDelegate

__TIB_DEFINITION_org_xmlvm_iphone_SKRequestDelegate __TIB_org_xmlvm_iphone_SKRequestDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_SKRequestDelegate, // classInitializer
    "org.xmlvm.iphone.SKRequestDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_SKRequestDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_1ARRAY;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKRequestDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_SKRequestDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKRequest,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKRequest,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"requestDidFailWithError",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"requestDidFinish",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKRequestDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_SKRequestDelegate);
    if (!__TIB_org_xmlvm_iphone_SKRequestDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_SKRequestDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_SKRequestDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_SKRequestDelegate()
{
    if (!__TIB_org_xmlvm_iphone_SKRequestDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_SKRequestDelegate.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_SKRequestDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKRequestDelegate;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKRequestDelegate.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_SKRequestDelegate.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError;
        __TIB_org_xmlvm_iphone_SKRequestDelegate.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_SKRequestDelegate.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_SKRequestDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_SKRequestDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequestDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_SKRequestDelegate.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_SKRequestDelegate.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequestDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_SKRequestDelegate.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_SKRequestDelegate.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_SKRequestDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_SKRequestDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKRequestDelegate);
        __TIB_org_xmlvm_iphone_SKRequestDelegate.clazz = __CLASS_org_xmlvm_iphone_SKRequestDelegate;
        __CLASS_org_xmlvm_iphone_SKRequestDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequestDelegate, 3);
        __CLASS_org_xmlvm_iphone_SKRequestDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequestDelegate, 2);
        __CLASS_org_xmlvm_iphone_SKRequestDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKRequestDelegate, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKRequestDelegate]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_SKRequestDelegate.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_SKRequestDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKRequestDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequestDelegate()
{
    if (!__TIB_org_xmlvm_iphone_SKRequestDelegate.classInitialized) __INIT_org_xmlvm_iphone_SKRequestDelegate();
    org_xmlvm_iphone_SKRequestDelegate* me = (org_xmlvm_iphone_SKRequestDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKRequestDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_SKRequestDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequestDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKRequestDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequestDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKRequestDelegate();
    org_xmlvm_iphone_SKRequestDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKRequestDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequestDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

