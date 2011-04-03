#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_GKSession.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_GKDataReceiveHandler.h"

#define XMLVM_CURRENT_CLASS_NAME GKDataReceiveHandler
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKDataReceiveHandler

__TIB_DEFINITION_org_xmlvm_iphone_GKDataReceiveHandler __TIB_org_xmlvm_iphone_GKDataReceiveHandler = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_GKDataReceiveHandler, // classInitializer
    "org.xmlvm.iphone.GKDataReceiveHandler", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_GKDataReceiveHandler), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKDataReceiveHandler;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_1ARRAY;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKDataReceiveHandler();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_GKDataReceiveHandler___INIT___(obj);
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
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_GKDataReceiveHandler()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_GKDataReceiveHandler);
    if (!__TIB_org_xmlvm_iphone_GKDataReceiveHandler.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_GKDataReceiveHandler();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_GKDataReceiveHandler);
}

void __INIT_IMPL_org_xmlvm_iphone_GKDataReceiveHandler()
{
    if (!__TIB_org_xmlvm_iphone_GKDataReceiveHandler.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKDataReceiveHandler;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKDataReceiveHandler.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_GKDataReceiveHandler = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKDataReceiveHandler);
        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.clazz = __CLASS_org_xmlvm_iphone_GKDataReceiveHandler;
        __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKDataReceiveHandler, 3);
        __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKDataReceiveHandler, 2);
        __CLASS_org_xmlvm_iphone_GKDataReceiveHandler_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKDataReceiveHandler, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKDataReceiveHandler]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_GKDataReceiveHandler.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_GKDataReceiveHandler(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKDataReceiveHandler]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKDataReceiveHandler(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKDataReceiveHandler()
{
    if (!__TIB_org_xmlvm_iphone_GKDataReceiveHandler.classInitialized) __INIT_org_xmlvm_iphone_GKDataReceiveHandler();
    org_xmlvm_iphone_GKDataReceiveHandler* me = (org_xmlvm_iphone_GKDataReceiveHandler*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKDataReceiveHandler));
    me->tib = &__TIB_org_xmlvm_iphone_GKDataReceiveHandler;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKDataReceiveHandler(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKDataReceiveHandler]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKDataReceiveHandler()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_GKDataReceiveHandler();
    org_xmlvm_iphone_GKDataReceiveHandler___INIT___(me);
    return me;
}

void org_xmlvm_iphone_GKDataReceiveHandler___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKDataReceiveHandler___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

